.class public Lcom/android/systemui/qp/SubroomBrightnessSettingsView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static SEEK_BAR_MAX_VALUE:I


# instance fields
.field public final mAnimationUtils:Lcom/android/systemui/qp/util/AnimationUtils;

.field public mBrightness:I

.field public final mBrightnessLevels:[I

.field public final mContext:Landroid/content/Context;

.field public mDualSeekBarThreshold:I

.field public mIconAnimationValue:F

.field public mIsSliderWarning:Z

.field public mMoreIcon:Landroid/widget/ImageView;

.field public mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

.field public mSunIcon:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const p2, 0x1070156

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightnessLevels:[I

    .line 18
    .line 19
    array-length p2, p1

    .line 20
    add-int/lit8 p2, p2, -0x1

    .line 21
    .line 22
    aget p1, p1, p2

    .line 23
    .line 24
    sput p1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->SEEK_BAR_MAX_VALUE:I

    .line 25
    .line 26
    const-class p1, Lcom/android/systemui/qp/util/AnimationUtils;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/android/systemui/qp/util/AnimationUtils;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mAnimationUtils:Lcom/android/systemui/qp/util/AnimationUtils;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0x49

    .line 11
    .line 12
    const/4 v2, -0x2

    .line 13
    const-string/jumbo v3, "sub_screen_brightness"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "onAttachedToWindow() mBrightness: "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    .line 30
    .line 31
    const-string v2, "SubroomBrightnessSettingsView"

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 37
    .line 38
    iget p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mMoreIcon:Landroid/widget/ImageView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const v1, 0x7f130f06

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mMoreIcon:Landroid/widget/ImageView;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const v1, 0x7f060830

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const v1, 0x7f1310d4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mIsSliderWarning:Z

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    const p0, 0x7f080f00

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const p0, 0x7f08125a

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public final onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0b0f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 14
    .line 15
    sget v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->SEEK_BAR_MAX_VALUE:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const v2, 0x7f1310d4

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const v0, 0x7f0a01b0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSunIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 48
    .line 49
    const v0, 0x7f0a01af

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/ImageView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mMoreIcon:Landroid/widget/ImageView;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSunIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mAnimationUtils:Lcom/android/systemui/qp/util/AnimationUtils;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const-string v1, "brightness_icon_85.json"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mMoreIcon:Landroid/widget/ImageView;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    const v2, 0x7f060830

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const v1, 0x7f0b00e1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    int-to-double v1, v1

    .line 112
    int-to-double v3, v0

    .line 113
    mul-double/2addr v1, v3

    .line 114
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 115
    .line 116
    div-double/2addr v1, v3

    .line 117
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    double-to-int v0, v0

    .line 122
    iput v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mDualSeekBarThreshold:I

    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-gt v0, v1, :cond_2

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->playBrightnessIconAnimation()V

    .line 133
    .line 134
    .line 135
    :cond_2
    return-void
.end method

.method public final playBrightnessIconAnimation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSunIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    div-float/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mIconAnimationValue:F

    .line 22
    .line 23
    sub-float/2addr v1, v0

    .line 24
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    float-to-double v1, v1

    .line 29
    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmpl-double v1, v1, v3

    .line 35
    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    iput v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mIconAnimationValue:F

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSunIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final setDualSeekBarResources(ZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mIsSliderWarning:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mIsSliderWarning:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const p1, 0x7f080f00

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz p2, :cond_1

    .line 20
    .line 21
    const p1, 0x7f08125b

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const p1, 0x7f08125a

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->playBrightnessIconAnimation()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mDualSeekBarThreshold:I

    .line 7
    .line 8
    if-gt v0, p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->playBrightnessIconAnimation()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
