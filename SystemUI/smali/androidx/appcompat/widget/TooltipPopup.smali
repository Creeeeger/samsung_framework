.class public final Landroidx/appcompat/widget/TooltipPopup;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContentView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mMessageView:Landroid/widget/TextView;

.field public mNavigationBarHeight:I

.field public final mTmpAnchorPos:[I

.field public final mTmpAppPos:[I

.field public final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    new-array v2, v1, [I

    .line 20
    .line 21
    iput-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    .line 22
    .line 23
    new-array v1, v1, [I

    .line 24
    .line 25
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mNavigationBarHeight:I

    .line 29
    .line 30
    new-instance v2, Landroid/util/TypedValue;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const v4, 0x10104a9

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 43
    .line 44
    .line 45
    iget v1, v2, Landroid/util/TypedValue;->data:I

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 50
    .line 51
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 52
    .line 53
    invoke-direct {v1, p1, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const v1, 0x7f0d03ee

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    .line 76
    .line 77
    const v1, 0x7f0a0684

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 87
    .line 88
    new-instance v1, Landroidx/appcompat/widget/TooltipPopup$1;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/TooltipPopup$1;-><init>(Landroidx/appcompat/widget/TooltipPopup;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    .line 95
    .line 96
    const-string p1, "TooltipPopup"

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    iput-object p0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 108
    .line 109
    const/16 p0, 0x3ea

    .line 110
    .line 111
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 112
    .line 113
    const/4 p0, -0x2

    .line 114
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 115
    .line 116
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 117
    .line 118
    const/4 p0, -0x3

    .line 119
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 120
    .line 121
    const p0, 0x7f140009

    .line 122
    .line 123
    .line 124
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 125
    .line 126
    const p0, 0x40008

    .line 127
    .line 128
    .line 129
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 130
    .line 131
    return-void
.end method


# virtual methods
.method public final adjustTooltipPosition(III)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "window"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Landroid/view/WindowManager;

    .line 11
    .line 12
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Landroid/graphics/Point;

    .line 25
    .line 26
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/WindowManager;

    .line 34
    .line 35
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const v1, 0x7f07108c

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    float-to-int v1, v1

    .line 54
    const/4 v3, 0x3

    .line 55
    const/4 v5, 0x1

    .line 56
    iget-object v6, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 57
    .line 58
    if-ne v0, v5, :cond_0

    .line 59
    .line 60
    iget v7, v6, Landroid/graphics/Rect;->right:I

    .line 61
    .line 62
    add-int v8, v7, v1

    .line 63
    .line 64
    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 65
    .line 66
    if-lt v8, v4, :cond_0

    .line 67
    .line 68
    sub-int/2addr v4, v7

    .line 69
    iput v4, p0, Landroidx/appcompat/widget/TooltipPopup;->mNavigationBarHeight:I

    .line 70
    .line 71
    :goto_0
    move v0, v5

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    if-ne v0, v3, :cond_1

    .line 74
    .line 75
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 76
    .line 77
    if-gt v0, v1, :cond_1

    .line 78
    .line 79
    iput v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mNavigationBarHeight:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x0

    .line 83
    :goto_1
    if-eqz v0, :cond_4

    .line 84
    .line 85
    if-ne v2, v5, :cond_2

    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    sub-int/2addr v0, p2

    .line 92
    iget p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mNavigationBarHeight:I

    .line 93
    .line 94
    sub-int/2addr v0, p0

    .line 95
    div-int/lit8 v0, v0, 0x2

    .line 96
    .line 97
    sub-int/2addr v0, p3

    .line 98
    if-le p1, v0, :cond_7

    .line 99
    .line 100
    sub-int p1, v0, p3

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_2
    if-ne v2, v3, :cond_7

    .line 104
    .line 105
    if-gtz p1, :cond_3

    .line 106
    .line 107
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    sub-int/2addr p2, p0

    .line 112
    div-int/lit8 p2, p2, 0x2

    .line 113
    .line 114
    add-int/2addr p2, p3

    .line 115
    if-gt p1, p2, :cond_7

    .line 116
    .line 117
    add-int/2addr p2, p3

    .line 118
    move p1, p2

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    sub-int/2addr p0, p2

    .line 125
    div-int/lit8 p0, p0, 0x2

    .line 126
    .line 127
    add-int/2addr p0, p3

    .line 128
    if-le p1, p0, :cond_7

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    if-eq v2, v5, :cond_5

    .line 132
    .line 133
    if-ne v2, v3, :cond_7

    .line 134
    .line 135
    :cond_5
    if-gtz p1, :cond_6

    .line 136
    .line 137
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    sub-int/2addr p2, p0

    .line 142
    div-int/lit8 p2, p2, 0x2

    .line 143
    .line 144
    add-int/2addr p2, p3

    .line 145
    if-ge p1, p2, :cond_7

    .line 146
    .line 147
    add-int p1, p2, p3

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    sub-int/2addr p0, p2

    .line 155
    div-int/lit8 p0, p0, 0x2

    .line 156
    .line 157
    add-int/2addr p0, p3

    .line 158
    if-le p1, p0, :cond_7

    .line 159
    .line 160
    :goto_2
    sub-int p1, p0, p3

    .line 161
    .line 162
    :cond_7
    :goto_3
    return p1
.end method

.method public final computePosition(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;ZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x2

    .line 16
    div-int/2addr v2, v3

    .line 17
    const/16 v4, 0x31

    .line 18
    .line 19
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    instance-of v6, v5, Landroid/view/WindowManager$LayoutParams;

    .line 30
    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 36
    .line 37
    if-ne v5, v3, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    :goto_0
    instance-of v6, v5, Landroid/content/ContextWrapper;

    .line 45
    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    instance-of v6, v5, Landroid/app/Activity;

    .line 49
    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    check-cast v5, Landroid/app/Activity;

    .line 53
    .line 54
    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    check-cast v5, Landroid/content/ContextWrapper;

    .line 64
    .line 65
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    :goto_1
    const-string v5, "SESL_TooltipPopup"

    .line 71
    .line 72
    if-nez v4, :cond_3

    .line 73
    .line 74
    const-string v0, "Cannot find app view"

    .line 75
    .line 76
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    iget-object v6, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-virtual {v4, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 83
    .line 84
    .line 85
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 86
    .line 87
    const/4 v8, 0x0

    .line 88
    iget-object v9, v0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    if-gez v7, :cond_5

    .line 91
    .line 92
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 93
    .line 94
    if-gez v7, :cond_5

    .line 95
    .line 96
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    const-string v10, "android"

    .line 101
    .line 102
    const-string/jumbo v11, "status_bar_height"

    .line 103
    .line 104
    .line 105
    const-string v12, "dimen"

    .line 106
    .line 107
    invoke-virtual {v7, v11, v12, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-eqz v10, :cond_4

    .line 112
    .line 113
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    move v10, v8

    .line 119
    :goto_2
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 124
    .line 125
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 126
    .line 127
    invoke-virtual {v6, v8, v10, v11, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 128
    .line 129
    .line 130
    :cond_5
    new-array v7, v3, [I

    .line 131
    .line 132
    invoke-virtual {v4, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 133
    .line 134
    .line 135
    new-instance v10, Landroid/graphics/Rect;

    .line 136
    .line 137
    aget v11, v7, v8

    .line 138
    .line 139
    const/4 v12, 0x1

    .line 140
    aget v13, v7, v12

    .line 141
    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    add-int/2addr v14, v11

    .line 147
    aget v7, v7, v12

    .line 148
    .line 149
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 150
    .line 151
    .line 152
    move-result v15

    .line 153
    add-int/2addr v15, v7

    .line 154
    invoke-direct {v10, v11, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 155
    .line 156
    .line 157
    iget v7, v10, Landroid/graphics/Rect;->left:I

    .line 158
    .line 159
    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 160
    .line 161
    iget v7, v10, Landroid/graphics/Rect;->right:I

    .line 162
    .line 163
    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 164
    .line 165
    iget-object v7, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    .line 166
    .line 167
    invoke-virtual {v4, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 168
    .line 169
    .line 170
    iget-object v4, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    .line 171
    .line 172
    move-object/from16 v10, p1

    .line 173
    .line 174
    invoke-virtual {v10, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 175
    .line 176
    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v13, "computePosition - displayFrame left : "

    .line 180
    .line 181
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget v13, v6, Landroid/graphics/Rect;->left:I

    .line 185
    .line 186
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    new-instance v11, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v13, "computePosition - displayFrame right : "

    .line 199
    .line 200
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget v13, v6, Landroid/graphics/Rect;->right:I

    .line 204
    .line 205
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    new-instance v11, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v13, "computePosition - displayFrame top : "

    .line 218
    .line 219
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget v13, v6, Landroid/graphics/Rect;->top:I

    .line 223
    .line 224
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    new-instance v11, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v13, "computePosition - displayFrame bottom : "

    .line 237
    .line 238
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    .line 242
    .line 243
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    new-instance v11, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v13, "computePosition - anchorView locationOnScreen x: "

    .line 256
    .line 257
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    aget v13, v4, v8

    .line 261
    .line 262
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    new-instance v11, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v13, "computePosition - anchorView locationOnScreen y : "

    .line 275
    .line 276
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    aget v13, v4, v12

    .line 280
    .line 281
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    new-instance v11, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v13, "computePosition - appView locationOnScreen x : "

    .line 294
    .line 295
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    aget v13, v7, v8

    .line 299
    .line 300
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    new-instance v11, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v13, "computePosition - appView locationOnScreen y : "

    .line 313
    .line 314
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    aget v13, v7, v12

    .line 318
    .line 319
    invoke-static {v11, v13, v5}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    aget v5, v4, v8

    .line 323
    .line 324
    aget v11, v7, v8

    .line 325
    .line 326
    sub-int/2addr v5, v11

    .line 327
    aput v5, v4, v8

    .line 328
    .line 329
    aget v11, v4, v12

    .line 330
    .line 331
    aget v7, v7, v12

    .line 332
    .line 333
    sub-int/2addr v11, v7

    .line 334
    aput v11, v4, v12

    .line 335
    .line 336
    add-int/2addr v5, v2

    .line 337
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    div-int/2addr v7, v3

    .line 342
    sub-int/2addr v5, v7

    .line 343
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 344
    .line 345
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    iget-object v7, v0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    .line 350
    .line 351
    invoke-virtual {v7, v5, v5}, Landroid/view/View;->measure(II)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 363
    .line 364
    .line 365
    move-result-object v11

    .line 366
    const v13, 0x7f071052

    .line 367
    .line 368
    .line 369
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 370
    .line 371
    .line 372
    move-result v11

    .line 373
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    const v13, 0x7f07104f

    .line 378
    .line 379
    .line 380
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    aget v12, v4, v12

    .line 385
    .line 386
    sub-int v13, v12, v5

    .line 387
    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 389
    .line 390
    .line 391
    move-result v14

    .line 392
    add-int/2addr v14, v12

    .line 393
    if-eqz p2, :cond_9

    .line 394
    .line 395
    sget-object v12, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 396
    .line 397
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 398
    .line 399
    .line 400
    move-result v12

    .line 401
    if-nez v12, :cond_7

    .line 402
    .line 403
    aget v8, v4, v8

    .line 404
    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 406
    .line 407
    .line 408
    move-result v12

    .line 409
    add-int/2addr v12, v8

    .line 410
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    div-int/2addr v8, v3

    .line 415
    sub-int/2addr v12, v8

    .line 416
    div-int/lit8 v8, v7, 0x2

    .line 417
    .line 418
    sub-int/2addr v12, v8

    .line 419
    sub-int/2addr v12, v11

    .line 420
    iput v12, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 421
    .line 422
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 423
    .line 424
    .line 425
    move-result v15

    .line 426
    neg-int v15, v15

    .line 427
    div-int/2addr v15, v3

    .line 428
    add-int/2addr v15, v8

    .line 429
    if-ge v12, v15, :cond_6

    .line 430
    .line 431
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 432
    .line 433
    .line 434
    move-result v12

    .line 435
    neg-int v12, v12

    .line 436
    div-int/2addr v12, v3

    .line 437
    add-int/2addr v12, v8

    .line 438
    add-int/2addr v12, v11

    .line 439
    iput v12, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 440
    .line 441
    :cond_6
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 442
    .line 443
    invoke-virtual {v0, v8, v7, v11}, Landroidx/appcompat/widget/TooltipPopup;->adjustTooltipPosition(III)I

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 448
    .line 449
    goto :goto_3

    .line 450
    :cond_7
    aget v8, v4, v8

    .line 451
    .line 452
    add-int/2addr v8, v2

    .line 453
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 454
    .line 455
    .line 456
    move-result v12

    .line 457
    div-int/2addr v12, v3

    .line 458
    sub-int/2addr v8, v12

    .line 459
    div-int/lit8 v12, v7, 0x2

    .line 460
    .line 461
    add-int/2addr v12, v8

    .line 462
    add-int/2addr v12, v11

    .line 463
    iput v12, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 464
    .line 465
    invoke-virtual {v0, v12, v7, v11}, Landroidx/appcompat/widget/TooltipPopup;->adjustTooltipPosition(III)I

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 470
    .line 471
    :goto_3
    add-int v8, v14, v5

    .line 472
    .line 473
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 474
    .line 475
    .line 476
    move-result v12

    .line 477
    if-le v8, v12, :cond_8

    .line 478
    .line 479
    iput v13, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 480
    .line 481
    goto :goto_5

    .line 482
    :cond_8
    iput v14, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 483
    .line 484
    goto :goto_5

    .line 485
    :cond_9
    aget v8, v4, v8

    .line 486
    .line 487
    add-int/2addr v8, v2

    .line 488
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 489
    .line 490
    .line 491
    move-result v12

    .line 492
    div-int/2addr v12, v3

    .line 493
    sub-int/2addr v8, v12

    .line 494
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 495
    .line 496
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 497
    .line 498
    .line 499
    move-result v12

    .line 500
    neg-int v12, v12

    .line 501
    div-int/2addr v12, v3

    .line 502
    div-int/lit8 v15, v7, 0x2

    .line 503
    .line 504
    add-int/2addr v12, v15

    .line 505
    if-ge v8, v12, :cond_a

    .line 506
    .line 507
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 508
    .line 509
    .line 510
    move-result v8

    .line 511
    neg-int v8, v8

    .line 512
    div-int/2addr v8, v3

    .line 513
    add-int/2addr v8, v15

    .line 514
    add-int/2addr v8, v9

    .line 515
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 516
    .line 517
    :cond_a
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 518
    .line 519
    invoke-virtual {v0, v8, v7, v11}, Landroidx/appcompat/widget/TooltipPopup;->adjustTooltipPosition(III)I

    .line 520
    .line 521
    .line 522
    move-result v8

    .line 523
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 524
    .line 525
    if-ltz v13, :cond_b

    .line 526
    .line 527
    move v8, v13

    .line 528
    goto :goto_4

    .line 529
    :cond_b
    move v8, v14

    .line 530
    :goto_4
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 531
    .line 532
    :goto_5
    if-eqz p4, :cond_c

    .line 533
    .line 534
    const/4 v8, 0x1

    .line 535
    aget v8, v4, v8

    .line 536
    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 538
    .line 539
    .line 540
    move-result v12

    .line 541
    add-int/2addr v12, v8

    .line 542
    iput v12, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 543
    .line 544
    :cond_c
    if-eqz p5, :cond_10

    .line 545
    .line 546
    sget-object v8, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 547
    .line 548
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 549
    .line 550
    .line 551
    move-result v8

    .line 552
    if-nez v8, :cond_e

    .line 553
    .line 554
    const/4 v2, 0x0

    .line 555
    aget v2, v4, v2

    .line 556
    .line 557
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    add-int/2addr v4, v2

    .line 562
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    div-int/2addr v2, v3

    .line 567
    sub-int/2addr v4, v2

    .line 568
    div-int/lit8 v2, v7, 0x2

    .line 569
    .line 570
    sub-int/2addr v4, v2

    .line 571
    sub-int/2addr v4, v11

    .line 572
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 573
    .line 574
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 575
    .line 576
    .line 577
    move-result v8

    .line 578
    neg-int v8, v8

    .line 579
    div-int/2addr v8, v3

    .line 580
    add-int/2addr v8, v2

    .line 581
    if-ge v4, v8, :cond_d

    .line 582
    .line 583
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    neg-int v4, v4

    .line 588
    div-int/2addr v4, v3

    .line 589
    add-int/2addr v4, v2

    .line 590
    add-int/2addr v4, v9

    .line 591
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 592
    .line 593
    :cond_d
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 594
    .line 595
    invoke-virtual {v0, v2, v7, v11}, Landroidx/appcompat/widget/TooltipPopup;->adjustTooltipPosition(III)I

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 600
    .line 601
    goto :goto_6

    .line 602
    :cond_e
    const/4 v8, 0x0

    .line 603
    aget v4, v4, v8

    .line 604
    .line 605
    add-int/2addr v4, v2

    .line 606
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 607
    .line 608
    .line 609
    move-result v2

    .line 610
    div-int/2addr v2, v3

    .line 611
    sub-int/2addr v4, v2

    .line 612
    div-int/lit8 v2, v7, 0x2

    .line 613
    .line 614
    add-int/2addr v2, v4

    .line 615
    sub-int/2addr v2, v11

    .line 616
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 617
    .line 618
    invoke-virtual {v0, v2, v7, v11}, Landroidx/appcompat/widget/TooltipPopup;->adjustTooltipPosition(III)I

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 623
    .line 624
    :goto_6
    add-int/2addr v5, v14

    .line 625
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    if-le v5, v0, :cond_f

    .line 630
    .line 631
    goto :goto_7

    .line 632
    :cond_f
    move v13, v14

    .line 633
    :goto_7
    iput v13, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 634
    .line 635
    :cond_10
    return-void
.end method

.method public final hide()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string/jumbo v1, "window"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/WindowManager;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    .line 20
    .line 21
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final isShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
