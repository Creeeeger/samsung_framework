.class public Lcom/android/wm/shell/draganddrop/DropTargetView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public mCapture:Landroid/graphics/Bitmap;

.field public mCurrentDensityDpi:I

.field public mCurrentFontScale:F

.field public mDropOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

.field public mFreeformHeight:I

.field public mFreeformPatialBlurViewHeight:I

.field public mFreeformPatialBlurViewWidth:I

.field public mFreeformWidth:I

.field public mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field public mIsFreeform:Z

.field public mIsNightModeOn:Z

.field public mOrientation:I

.field public mPartialBlurView:Landroid/widget/ImageView;

.field public mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field public mText:Landroid/widget/TextView;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Landroid/graphics/Point;

    .line 5
    .line 6
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final getBackgroundResourceId()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->isLandScapeWithNotMultiSplit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_PATIAL_BLUR:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const p0, 0x7f080765

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const p0, 0x7f080762

    .line 20
    .line 21
    .line 22
    :goto_0
    return p0

    .line 23
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_PATIAL_BLUR:Z

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    const p0, 0x7f080764

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const p0, 0x7f080763

    .line 36
    .line 37
    .line 38
    :goto_1
    return p0

    .line 39
    :cond_3
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    .line 40
    .line 41
    if-eqz p0, :cond_4

    .line 42
    .line 43
    const p0, 0x7f080761

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const p0, 0x7f080760

    .line 48
    .line 49
    .line 50
    :goto_2
    return p0
.end method

.method public final isLandScapeWithNotMultiSplit()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v3

    .line 19
    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v2, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move v2, v0

    .line 37
    :goto_1
    return v2
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    .line 6
    iget v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mOrientation:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mOrientation:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->updateBounds()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, 0x20

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, v1

    .line 25
    :goto_0
    iget-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsNightModeOn:Z

    .line 26
    .line 27
    if-eq v2, v0, :cond_2

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsNightModeOn:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->getBackgroundResourceId()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const v4, 0x7f060152

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_CAPTURED_BLUR:Z

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    .line 74
    .line 75
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 76
    .line 77
    cmpl-float v0, v0, v2

    .line 78
    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentDensityDpi:I

    .line 82
    .line 83
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 84
    .line 85
    if-eq v0, v3, :cond_4

    .line 86
    .line 87
    :cond_3
    iput v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    .line 88
    .line 89
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 90
    .line 91
    iput p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentDensityDpi:I

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const v0, 0x7f0702e8

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    .line 105
    .line 106
    invoke-static {p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropUtil;->calculateFontSizeWithScale(FF)F

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    .line 114
    .line 115
    :cond_4
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0355

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    .line 12
    .line 13
    const v0, 0x7f0a0354

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 23
    .line 24
    const v0, 0x7f0a07d7

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 46
    .line 47
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 60
    .line 61
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentDensityDpi:I

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 72
    .line 73
    and-int/lit8 v0, v0, 0x20

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move v0, v1

    .line 81
    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsNightModeOn:Z

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 92
    .line 93
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mOrientation:I

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const v2, 0x7f0702e8

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iget v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    .line 107
    .line 108
    invoke-static {v0, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropUtil;->calculateFontSizeWithScale(FF)F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final setBlurEffect(I)V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f0702e1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_CAPTURED_BLUR:Z

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->getBackgroundResourceId()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    .line 46
    .line 47
    if-nez v2, :cond_4

    .line 48
    .line 49
    const/16 v5, 0x7d0

    .line 50
    .line 51
    new-instance v7, Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mDropOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mBounds:Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iget v3, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    .line 74
    .line 75
    sub-int/2addr v2, v3

    .line 76
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    iget v4, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    .line 81
    .line 82
    sub-int/2addr v3, v4

    .line 83
    div-int/lit8 v2, v2, 0x2

    .line 84
    .line 85
    div-int/lit8 v3, v3, 0x2

    .line 86
    .line 87
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v4, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    const/4 v10, 0x0

    .line 105
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-nez v2, :cond_3

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    move-object v1, v2

    .line 123
    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    .line 124
    .line 125
    :cond_4
    new-instance v1, Landroid/view/SemBlurInfo$Builder;

    .line 126
    .line 127
    const/4 v2, 0x1

    .line 128
    invoke-direct {v1, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    move-object p1, v1

    .line 157
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final showBlurEffect()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->isLandScapeWithNotMultiSplit()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f080767

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v1, 0x7f080766

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/16 v0, 0x7d

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/16 v0, 0x50

    .line 53
    .line 54
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->setBlurEffect(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final updateBounds()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->isLandScapeWithNotMultiSplit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0702e2

    .line 6
    .line 7
    .line 8
    const v2, 0x7f0702e3

    .line 9
    .line 10
    .line 11
    const v3, 0x7f0702e4

    .line 12
    .line 13
    .line 14
    const v4, 0x7f0702e7

    .line 15
    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    float-to-int v0, v0

    .line 28
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    float-to-int v0, v0

    .line 39
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    float-to-int v0, v0

    .line 50
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewWidth:I

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    float-to-int v0, v0

    .line 61
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewHeight:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    float-to-int v0, v0

    .line 73
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    float-to-int v0, v0

    .line 84
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    float-to-int v0, v0

    .line 95
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewWidth:I

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    float-to-int v0, v0

    .line 106
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewHeight:I

    .line 107
    .line 108
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    .line 111
    .line 112
    iget-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    const/4 v5, -0x1

    .line 123
    if-eqz v3, :cond_2

    .line 124
    .line 125
    if-eqz v2, :cond_1

    .line 126
    .line 127
    iget v6, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    .line 128
    .line 129
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    .line 131
    iget v6, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    .line 132
    .line 133
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    .line 138
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    .line 140
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    if-eqz v4, :cond_4

    .line 144
    .line 145
    if-eqz v2, :cond_3

    .line 146
    .line 147
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewWidth:I

    .line 148
    .line 149
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 150
    .line 151
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewHeight:I

    .line 152
    .line 153
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_3
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    .line 158
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    .line 160
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_PATIAL_BLUR:Z

    .line 164
    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->showBlurEffect()V

    .line 168
    .line 169
    .line 170
    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    .line 172
    .line 173
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->getBackgroundResourceId()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mDropOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    .line 191
    .line 192
    const v1, 0x7f1304eb

    .line 193
    .line 194
    .line 195
    if-eqz v0, :cond_8

    .line 196
    .line 197
    iget-boolean v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFreeform:Z

    .line 198
    .line 199
    if-eqz v2, :cond_6

    .line 200
    .line 201
    const v0, 0x7f1304e9

    .line 202
    .line 203
    .line 204
    :goto_3
    move v1, v0

    .line 205
    goto :goto_4

    .line 206
    :cond_6
    iget-boolean v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFullscreen:Z

    .line 207
    .line 208
    if-eqz v2, :cond_8

    .line 209
    .line 210
    iget-boolean v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsResizable:Z

    .line 211
    .line 212
    if-eqz v0, :cond_7

    .line 213
    .line 214
    const v0, 0x7f1304ec

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_7
    const v0, 0x7f1304be

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    .line 228
    .line 229
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 230
    .line 231
    int-to-float v0, v0

    .line 232
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setX(F)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    .line 236
    .line 237
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 238
    .line 239
    int-to-float v0, v0

    .line 240
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setY(F)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    .line 248
    .line 249
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 254
    .line 255
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    .line 256
    .line 257
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    .line 263
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .line 265
    .line 266
    return-void
.end method
