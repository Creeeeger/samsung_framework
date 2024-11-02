.class public final Lcom/android/wm/shell/windowdecor/HandleMenu;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAppIcon:Landroid/graphics/drawable/Drawable;

.field public mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field public mAppInfoPillHeight:I

.field public final mAppInfoPillPosition:Landroid/graphics/PointF;

.field public final mAppName:Ljava/lang/CharSequence;

.field public final mCaptionX:I

.field public final mCaptionY:I

.field public final mContext:Landroid/content/Context;

.field public mCornerRadius:I

.field public final mLayoutResId:I

.field public mMarginMenuSpacing:I

.field public mMarginMenuStart:I

.field public mMarginMenuTop:I

.field public mMenuWidth:I

.field public mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field public mMoreActionsPillHeight:I

.field public final mMoreActionsPillPosition:Landroid/graphics/PointF;

.field public final mOnClickListener:Landroid/view/View$OnClickListener;

.field public final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field public final mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

.field public mShadowRadius:I

.field public final mShouldShowWindowingPill:Z

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field public mWindowingPillHeight:I

.field public final mWindowingPillPosition:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/WindowDecoration;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/PointF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 26
    .line 27
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    .line 35
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mLayoutResId:I

    .line 36
    .line 37
    iput p3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionX:I

    .line 38
    .line 39
    iput p4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionY:I

    .line 40
    .line 41
    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 42
    .line 43
    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 44
    .line 45
    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppName:Ljava/lang/CharSequence;

    .line 48
    .line 49
    iput-boolean p9, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShouldShowWindowingPill:Z

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const p2, 0x7f0702c0

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    .line 63
    .line 64
    const p2, 0x7f0702bc

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    .line 72
    .line 73
    const p2, 0x7f0702bb

    .line 74
    .line 75
    .line 76
    invoke-static {p2, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    .line 81
    .line 82
    const p2, 0x7f0702be

    .line 83
    .line 84
    .line 85
    invoke-static {p2, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    .line 90
    .line 91
    const p2, 0x7f0702b9

    .line 92
    .line 93
    .line 94
    invoke-static {p2, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillHeight:I

    .line 99
    .line 100
    const p2, 0x7f0702c1

    .line 101
    .line 102
    .line 103
    invoke-static {p2, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillHeight:I

    .line 108
    .line 109
    const p2, 0x7f0702bd

    .line 110
    .line 111
    .line 112
    invoke-static {p2, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillHeight:I

    .line 117
    .line 118
    const p2, 0x7f0702bf

    .line 119
    .line 120
    .line 121
    invoke-static {p2, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShadowRadius:I

    .line 126
    .line 127
    const p2, 0x7f0702ba

    .line 128
    .line 129
    .line 130
    invoke-static {p2, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCornerRadius:I

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->updateHandleMenuPillPositions()V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public static loadDimensionPixelSize(ILandroid/content/res/Resources;)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static pointInView(Landroid/view/View;FF)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    cmpg-float v0, v0, p1

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    cmpl-float p1, v0, p1

    .line 18
    .line 19
    if-ltz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    cmpg-float p1, p1, p2

    .line 27
    .line 28
    if-gtz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    int-to-float p0, p0

    .line 35
    cmpl-float p0, p0, p2

    .line 36
    .line 37
    if-ltz p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
.end method


# virtual methods
.method public final updateHandleMenuPillPositions()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mLayoutResId:I

    .line 18
    .line 19
    const v2, 0x7f0d00c7

    .line 20
    .line 21
    .line 22
    iget v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionY:I

    .line 23
    .line 24
    iget v4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionX:I

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    .line 29
    .line 30
    add-int/2addr v4, v0

    .line 31
    iget v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 35
    .line 36
    add-int/2addr v0, v4

    .line 37
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    .line 38
    .line 39
    div-int/lit8 v1, v1, 0x2

    .line 40
    .line 41
    sub-int v4, v0, v1

    .line 42
    .line 43
    iget v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    .line 44
    .line 45
    :goto_0
    add-int/2addr v3, v0

    .line 46
    int-to-float v0, v4

    .line 47
    int-to-float v1, v3

    .line 48
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    .line 49
    .line 50
    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 51
    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShouldShowWindowingPill:Z

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillHeight:I

    .line 60
    .line 61
    add-int/2addr v3, v1

    .line 62
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    .line 63
    .line 64
    add-int/2addr v3, v1

    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    .line 66
    .line 67
    int-to-float v4, v3

    .line 68
    invoke-virtual {v1, v0, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillHeight:I

    .line 72
    .line 73
    add-int/2addr v3, v1

    .line 74
    iget p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    .line 75
    .line 76
    add-int/2addr v3, p0

    .line 77
    int-to-float p0, v3

    .line 78
    invoke-virtual {v2, v0, p0}, Landroid/graphics/PointF;->set(FF)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillHeight:I

    .line 83
    .line 84
    add-int/2addr v3, v1

    .line 85
    iget p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    .line 86
    .line 87
    add-int/2addr v3, p0

    .line 88
    int-to-float p0, v3

    .line 89
    invoke-virtual {v2, v0, p0}, Landroid/graphics/PointF;->set(FF)V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void
.end method
