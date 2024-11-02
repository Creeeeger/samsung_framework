.class public Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAlpha:F

.field public final mButtons:Landroid/util/SparseArray;

.field public mContext:Landroid/content/Context;

.field public final mIsDexEnabled:Z

.field public mIsDisplayAdded:Z

.field public final mIsNewDexMode:Z

.field public mIsNightMode:Z

.field public mIsSplitTopDown:Z

.field public final mListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

.field public final mRootView:Landroid/view/View;

.field public mSlider:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mWindowingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View;FZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 16
    .line 17
    iput p3, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mWindowingMode:I

    .line 18
    .line 19
    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 26
    .line 27
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 p3, 0x1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    move p1, p3

    .line 48
    :goto_1
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDexEnabled:Z

    .line 49
    .line 50
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNewDexMode:Z

    .line 57
    .line 58
    iput p6, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mAlpha:F

    .line 59
    .line 60
    xor-int/2addr p1, p3

    .line 61
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsSplitTopDown:Z

    .line 62
    .line 63
    iput-boolean p7, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 64
    .line 65
    return-void
.end method

.method public static isButtonVisible(IIZZ)Z
    .locals 3

    .line 1
    const v0, 0x7f0a062c

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne p0, v0, :cond_1

    .line 7
    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    .line 10
    move v1, v2

    .line 11
    :cond_0
    return v1

    .line 12
    :cond_1
    const p1, 0x7f0a0792

    .line 13
    .line 14
    .line 15
    if-ne p0, p1, :cond_2

    .line 16
    .line 17
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_SUPPORT_WINDOW_OPACITY:Z

    .line 18
    .line 19
    return p0

    .line 20
    :cond_2
    const p1, 0x7f0a08e9

    .line 21
    .line 22
    .line 23
    if-ne p0, p1, :cond_4

    .line 24
    .line 25
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_COMPAT_CAPTION_SHELL:Z

    .line 26
    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    move v1, v2

    .line 32
    :cond_3
    return v1

    .line 33
    :cond_4
    const p1, 0x7f0a06bd

    .line 34
    .line 35
    .line 36
    if-ne p0, p1, :cond_6

    .line 37
    .line 38
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_MOVE_DISPLAY:Z

    .line 39
    .line 40
    if-eqz p0, :cond_5

    .line 41
    .line 42
    if-eqz p3, :cond_5

    .line 43
    .line 44
    move v1, v2

    .line 45
    :cond_5
    return v1

    .line 46
    :cond_6
    return v2
.end method


# virtual methods
.method public final changePinButtonIconBackground(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a0d5f

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-boolean p1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mShowIconBackground:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const p1, 0x7f130f36

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const p1, 0x7f130f35

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public getButtonTintColor()Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_ENABLED:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    new-instance v0, Landroid/content/res/Configuration;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    const/16 v2, 0x20

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/16 v2, 0x10

    .line 47
    .line 48
    :goto_0
    and-int/lit8 v2, v2, 0x30

    .line 49
    .line 50
    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 51
    .line 52
    and-int/lit8 v3, v3, -0x31

    .line 53
    .line 54
    or-int/2addr v2, v3

    .line 55
    iput v2, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const v0, 0x1060384

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_2
    instance-of v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 80
    .line 81
    xor-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 92
    .line 93
    if-eqz p0, :cond_3

    .line 94
    .line 95
    const p0, 0x7f060570

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const p0, 0x7f060571

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 114
    .line 115
    if-eqz p0, :cond_5

    .line 116
    .line 117
    const p0, 0x7f060568

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    const p0, 0x7f060569

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method

.method public final setDividerColor(Lcom/android/wm/shell/windowdecor/WindowMenuDivider;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const v1, 0x7f060570

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v1, 0x7f060571

    .line 16
    .line 17
    .line 18
    :goto_0
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 24
    .line 25
    .line 26
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const p0, 0x3df5c28f    # 0.12f

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const p0, 0x3e4ccccd    # 0.2f

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final setSplitButtonDrawable(Lcom/android/wm/shell/windowdecor/WindowMenuItemView;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v1, v3

    .line 21
    :goto_1
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ne v0, v2, :cond_2

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_2
    and-int/lit16 v0, p2, 0x500

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    and-int/2addr p2, v2

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move v2, v3

    .line 43
    :cond_4
    :goto_2
    move v3, v2

    .line 44
    :cond_5
    :goto_3
    iget-boolean p2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsSplitTopDown:Z

    .line 45
    .line 46
    if-eq p2, v3, :cond_7

    .line 47
    .line 48
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsSplitTopDown:Z

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    if-eqz v3, :cond_6

    .line 53
    .line 54
    const p2, 0x7f080f15

    .line 55
    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_6
    const p2, 0x7f080f14

    .line 59
    .line 60
    .line 61
    :goto_4
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    .line 68
    :cond_7
    return-void
.end method

.method public final setupOpacitySlider()V
    .locals 4

    .line 1
    const v0, 0x7f0a0a4f

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mSlider:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const v2, 0x7f0a01f9

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const v3, 0x7f0a0a51

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mButtonContainer:Landroid/view/View;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSliderContainer:Landroid/view/View;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mAnimatable:Z

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mSlider:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
