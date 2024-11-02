.class public Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qp/ViewPagerAdapter$SubRoomButtonListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public dots:[Landroid/widget/ImageView;

.field public dotscount:I

.field public mBackButton:Landroid/widget/RelativeLayout;

.field public mBackImageView:Landroid/widget/ImageView;

.field public mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

.field public final mContext:Landroid/content/Context;

.field public mSettingsContainer:Landroid/widget/LinearLayout;

.field public final mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

.field public final mViewPagerOnPageChangeListener:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;

.field public sliderDotspanel:Landroid/widget/LinearLayout;

.field public viewPager:Lcom/android/systemui/qp/RTLViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;-><init>(Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mViewPagerOnPageChangeListener:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;

    .line 10
    .line 11
    const-string p2, "SubroomQuickSettingsBaseView"

    .line 12
    .line 13
    invoke-static {p2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->setSubscreenSettings(I)V

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0a0cae

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/systemui/qp/RTLViewPager;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->viewPager:Lcom/android/systemui/qp/RTLViewPager;

    .line 18
    .line 19
    new-instance v1, Lcom/android/systemui/qp/ViewPagerAdapter;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/android/systemui/qp/ViewPagerAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->viewPager:Lcom/android/systemui/qp/RTLViewPager;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 29
    .line 30
    .line 31
    iput-object p0, v1, Lcom/android/systemui/qp/ViewPagerAdapter;->subRoomButtonListener:Lcom/android/systemui/qp/ViewPagerAdapter$SubRoomButtonListener;

    .line 32
    .line 33
    const v1, 0x7f0a07b8

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->sliderDotspanel:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    iput v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dotscount:I

    .line 46
    .line 47
    new-array v2, v2, [Landroid/widget/ImageView;

    .line 48
    .line 49
    iput-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52
    .line 53
    .line 54
    move v1, v0

    .line 55
    :goto_0
    iget v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dotscount:I

    .line 56
    .line 57
    if-ge v1, v2, :cond_0

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    .line 60
    .line 61
    new-instance v3, Landroid/widget/ImageView;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    aput-object v3, v2, v1

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    .line 71
    .line 72
    aget-object v2, v2, v1

    .line 73
    .line 74
    iget-object v3, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const v4, 0x7f080cbd

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const v3, 0x7f070ede

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    .line 105
    const/4 v4, -0x1

    .line 106
    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    .line 108
    .line 109
    const/16 v2, 0x8

    .line 110
    .line 111
    invoke-virtual {v3, v2, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->sliderDotspanel:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    .line 117
    .line 118
    aget-object v4, v4, v1

    .line 119
    .line 120
    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    .line 127
    .line 128
    aget-object v0, v1, v0

    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const v2, 0x7f08066e

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->viewPager:Lcom/android/systemui/qp/RTLViewPager;

    .line 147
    .line 148
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mViewPagerOnPageChangeListener:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;

    .line 149
    .line 150
    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSettingsContainer:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    const-string v0, "SubroomQuickSettingsBaseView"

    .line 2
    .line 3
    const-string v1, "onDetachedFromWindow"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->viewPager:Lcom/android/systemui/qp/RTLViewPager;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 12
    .line 13
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onFinishInflate"

    .line 5
    .line 6
    const-string v1, "SubroomQuickSettingsBaseView"

    .line 7
    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a0b45

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/LinearLayout;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSettingsContainer:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    const v0, 0x7f0a0b10

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 32
    .line 33
    const v0, 0x7f0a0b0b

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackButton:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    const v0, 0x7f0a0118

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackImageView:Landroid/widget/ImageView;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "SettingContainer=="

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSettingsContainer:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final setSubscreenSettings(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSettingsContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-ne p1, v3, :cond_1

    .line 18
    .line 19
    move v3, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v3, v1

    .line 22
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackButton:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v1, v2

    .line 31
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {p1}, Ljava/lang/Character;->getDirectionality(C)B

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v0, 0x1

    .line 51
    if-ne p1, v0, :cond_3

    .line 52
    .line 53
    move v2, v0

    .line 54
    :cond_3
    if-eqz v2, :cond_4

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackImageView:Landroid/widget/ImageView;

    .line 57
    .line 58
    const/high16 p1, 0x43340000    # 180.0f

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackImageView:Landroid/widget/ImageView;

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 68
    .line 69
    .line 70
    :goto_3
    return-void
.end method
