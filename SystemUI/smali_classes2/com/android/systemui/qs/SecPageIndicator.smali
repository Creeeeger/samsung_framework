.class public Lcom/android/systemui/qs/SecPageIndicator;
.super Lcom/android/systemui/qs/PageIndicator;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCallback:Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

.field public final mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mNumPages:I

.field public mPosition:I

.field public mQsExpansion:F

.field public mSelectedColor:I

.field public mSelectedColorResId:I

.field public mUnselectedColor:I

.field public mUnselectedColorResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    .line 8
    .line 9
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColorResId:I

    .line 10
    .line 11
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColorResId:I

    .line 12
    .line 13
    new-instance p1, Lcom/android/systemui/qs/SecDarkModeEasel;

    .line 14
    .line 15
    new-instance p2, Lcom/android/systemui/qs/SecPageIndicator$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecPageIndicator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecPageIndicator;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Lcom/android/systemui/qs/SecDarkModeEasel;-><init>(Lcom/android/systemui/qs/SecDarkModeEasel$PictureSubject;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

    .line 24
    .line 25
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const p2, 0x7f060501

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    .line 39
    .line 40
    const p2, 0x7f0605ba

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    .line 48
    .line 49
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    const-string p2, "layout_inflater"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/view/LayoutInflater;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecDarkModeEasel;->updateColors(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onPanelModeChanged()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColorResId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColorResId:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColorResId:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColorResId:I

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    .line 29
    .line 30
    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    .line 31
    .line 32
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setPosition(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final playAnimation(Landroid/widget/ImageView;ZZ)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 13
    .line 14
    const/16 v1, 0x96

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const p3, 0x7f130108

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-eqz p3, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const p3, 0x7f130102

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    instance-of v0, p3, Landroid/widget/LinearLayout;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    check-cast p3, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    const-string v0, ", "

    .line 60
    .line 61
    invoke-static {p2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget p0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    .line 78
    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const p1, 0x7f130105

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p3, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    return-void
.end method

.method public final reset(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    instance-of v3, v2, Landroid/widget/ImageView;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    check-cast v2, Landroid/widget/ImageView;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v1, p1, :cond_0

    .line 27
    .line 28
    move v4, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v4, v0

    .line 31
    :goto_1
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;ZZ)V

    .line 32
    .line 33
    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    .line 38
    .line 39
    return-void
.end method

.method public final setLocation(F)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    sub-int p1, v0, p1

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->setPosition(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setNumPages(I)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-le p1, v1, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v2, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    .line 13
    .line 14
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v2, v0

    .line 25
    :goto_2
    if-ge v2, p1, :cond_2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/systemui/qs/SecPageIndicator;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    .line 29
    const v4, 0x7f0d0261

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const v5, 0x7f080dae

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const v6, 0x7f080dad

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    filled-new-array {v4, v5}, [Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    aget-object v5, v4, v0

    .line 65
    .line 66
    iget v6, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    .line 67
    .line 68
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 69
    .line 70
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 71
    .line 72
    .line 73
    aget-object v5, v4, v1

    .line 74
    .line 75
    iget v6, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    .line 76
    .line 77
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 78
    .line 79
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    .line 81
    .line 82
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 83
    .line 84
    invoke-direct {v5, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 88
    .line 89
    .line 90
    const v4, 0x7f0a07b6

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Landroid/widget/ImageView;

    .line 98
    .line 99
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4, v2}, Landroid/view/View;->setId(I)V

    .line 107
    .line 108
    .line 109
    new-instance v4, Lcom/android/systemui/qs/SecPageIndicator$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    invoke-direct {v4, p0, v2}, Lcom/android/systemui/qs/SecPageIndicator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecPageIndicator;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->reset(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final setPosition(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isVisibleToUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    .line 8
    .line 9
    sub-int/2addr v0, p1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/widget/LinearLayout;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;ZZ)V

    .line 56
    .line 57
    .line 58
    check-cast v3, Landroid/widget/ImageView;

    .line 59
    .line 60
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;ZZ)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->reset(I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    .line 68
    .line 69
    return-void
.end method

.method public final setSecIndicatorColorResId()V
    .locals 3

    .line 1
    const v0, 0x7f0604f7

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColorResId:I

    .line 5
    .line 6
    const v0, 0x7f0604f8

    .line 7
    .line 8
    .line 9
    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColorResId:I

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColorResId:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColorResId:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    .line 36
    .line 37
    iput v1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    .line 38
    .line 39
    return-void
.end method
