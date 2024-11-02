.class public Lcom/android/wm/shell/common/DismissButtonView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAccessibilityTextResId:I

.field public mCurrentFontScale:F

.field public final mDismissArea:Landroid/graphics/Rect;

.field public mDismissType:I

.field public mElevation:F

.field public mEnterAnimation:Landroid/view/animation/Animation;

.field public mFocusChangeHapticDisabled:Z

.field public mHideAnimationEnd:Ljava/lang/Runnable;

.field public mIconView:Landroid/widget/ImageView;

.field public mInsideHideAnimation:Landroid/view/animation/Animation;

.field public mIsEnterDismissButton:Z

.field public mIsNightModeOn:Z

.field public mOutsideHideAnimation:Landroid/view/animation/Animation;

.field public mSineOut60:Landroid/view/animation/Interpolator;

.field public mTextView:Landroid/widget/TextView;

.field public mVisible:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/common/DismissButtonView;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissType:I

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissArea:Landroid/graphics/Rect;

    .line 13
    .line 14
    const/high16 p1, -0x80000000

    .line 15
    .line 16
    iput p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mAccessibilityTextResId:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget-boolean v2, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIsNightModeOn:Z

    .line 15
    .line 16
    if-eq v2, v0, :cond_1

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIsNightModeOn:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->updateNightModeUI()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mCurrentFontScale:F

    .line 24
    .line 25
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 26
    .line 27
    cmpl-float v0, v0, p1

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iput p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mCurrentFontScale:F

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const v0, 0x7f0702d8

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mCurrentFontScale:F

    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropUtil;->calculateFontSizeWithScale(FF)F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissType:I

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DismissButtonView;->setDismissType(I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0c002b

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mSineOut60:Landroid/view/animation/Interpolator;

    .line 16
    .line 17
    const v0, 0x7f0a0344

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    .line 27
    .line 28
    const v0, 0x7f0a0343

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/ImageView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIconView:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const v1, 0x7f0702db

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mElevation:F

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 63
    .line 64
    iput v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mCurrentFontScale:F

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 75
    .line 76
    and-int/lit8 v0, v0, 0x20

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move v0, v1

    .line 84
    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIsNightModeOn:Z

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const v2, 0x7f01019d

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 98
    .line 99
    new-instance v2, Lcom/android/wm/shell/common/DismissButtonView$1;

    .line 100
    .line 101
    invoke-direct {v2, p0}, Lcom/android/wm/shell/common/DismissButtonView$1;-><init>(Lcom/android/wm/shell/common/DismissButtonView;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const v2, 0x7f0101a2

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mInsideHideAnimation:Landroid/view/animation/Animation;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const v2, 0x7f01019c

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mOutsideHideAnimation:Landroid/view/animation/Animation;

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const v2, 0x7f0702d8

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iget v2, p0, Lcom/android/wm/shell/common/DismissButtonView;->mCurrentFontScale:F

    .line 145
    .line 146
    invoke-static {v0, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropUtil;->calculateFontSizeWithScale(FF)F

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    iget-object v2, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->updateNightModeUI()V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final setDismissType(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissType:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-ne p1, v0, :cond_3

    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const v0, 0x7f1304c4

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v1, 0x7f1304bf

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    const p1, 0x7f13007c

    .line 50
    .line 51
    .line 52
    iput p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mAccessibilityTextResId:I

    .line 53
    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method public final updateDismissButtonState(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 6
    .line 7
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "updateEnterDismissButtonState: enter="

    .line 12
    .line 13
    .line 14
    const-string v0, ", Callers="

    .line 15
    .line 16
    invoke-static {p0, p1, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 p1, 0x3

    .line 21
    const-string v0, "DismissButtonView"

    .line 22
    .line 23
    invoke-static {p1, p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final updateNightModeUI()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3
    .line 4
    .line 5
    const v0, 0x7f080759

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const v2, 0x7f06013f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIconView:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const v1, 0x7f06013c

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final updateResources(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mElevation:F

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const v1, 0x3f933333    # 1.15f

    .line 6
    .line 7
    .line 8
    mul-float/2addr v0, v1

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const v0, 0x7f08075a

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const v0, 0x7f080759

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    const v2, 0x7f060140

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const v2, 0x7f06013f

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIconView:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    const p1, 0x7f06013d

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const p1, 0x7f06013c

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final updateView(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissArea:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissArea:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(ZZ)V

    return-void
.end method

.method public final updateView(ZZ)V
    .locals 4

    .line 5
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f933333    # 1.15f

    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    .line 8
    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 9
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mSineOut60:Landroid/view/animation/Interpolator;

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0xfa

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/android/wm/shell/common/DismissButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/common/DismissButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissButtonView;Z)V

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 14
    iget-boolean p2, p0, Lcom/android/wm/shell/common/DismissButtonView;->mFocusChangeHapticDisabled:Z

    if-nez p2, :cond_8

    const/16 p2, 0x29

    .line 15
    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    goto :goto_6

    .line 16
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DismissButtonView;->updateResources(Z)V

    if-eqz p1, :cond_5

    move p2, v2

    goto :goto_3

    :cond_5
    move p2, v1

    .line 17
    :goto_3
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    .line 18
    :goto_4
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move v0, v1

    .line 19
    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 20
    :cond_8
    :goto_6
    iget p2, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 21
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    invoke-interface {p2, v0}, Landroid/view/IWindowManager;->setDragSurfaceToOverlay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p2

    const-string v0, "Failed to setDragSurfaceToOverlay."

    .line 22
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_a
    :goto_8
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DismissButtonView;->updateDismissButtonState(Z)V

    return-void
.end method
