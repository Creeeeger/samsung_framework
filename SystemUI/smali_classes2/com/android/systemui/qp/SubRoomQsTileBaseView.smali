.class public final Lcom/android/systemui/qp/SubRoomQsTileBaseView;
.super Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCircleColor:I

.field public mColorActive:I

.field public mColorDisabled:I

.field public mColorInactive:I

.field public final mQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field public mRipple:Landroid/graphics/drawable/RippleDrawable;

.field public mState:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public mTileBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const p3, 0x7f0713da

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    float-to-int p2, p2

    .line 16
    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 26
    .line 27
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 31
    .line 32
    const/16 v0, 0x11

    .line 33
    .line 34
    invoke-direct {p3, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {v1, v2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    .line 46
    invoke-direct {p3, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 52
    .line 53
    invoke-virtual {p2, v0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 59
    .line 60
    const/4 v0, -0x2

    .line 61
    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iput-object p2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    instance-of p3, p2, Landroid/graphics/drawable/RippleDrawable;

    .line 74
    .line 75
    if-eqz p3, :cond_0

    .line 76
    .line 77
    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    .line 78
    .line 79
    const p3, 0x7f0605bb

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    .line 96
    .line 97
    invoke-direct {p0, p2}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    new-instance p2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    .line 101
    .line 102
    invoke-direct {p2, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    iput-object p2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    .line 106
    .line 107
    invoke-direct {p0}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->updateBackgroundColors()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->updateSubscreenTileStroke()V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 114
    .line 115
    iget-object p2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 121
    .line 122
    const/4 p2, 0x1

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 124
    .line 125
    .line 126
    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    div-int/lit8 p1, p1, 0x2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    div-int/lit8 v0, v0, 0x2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    const v2, 0x3f4ccccd    # 0.8f

    .line 33
    .line 34
    .line 35
    mul-float/2addr v1, v2

    .line 36
    float-to-int v1, v1

    .line 37
    iget-object p0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 38
    .line 39
    sub-int v2, p1, v1

    .line 40
    .line 41
    sub-int v3, v0, v1

    .line 42
    .line 43
    add-int/2addr p1, v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    invoke-virtual {p0, v2, v3, p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method private updateBackgroundColors()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f060889

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorActive:I

    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const v1, 0x7f060888

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorDisabled:I

    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const v1, 0x7f060887

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorInactive:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 5
    .line 6
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const-string v2, "Invalid state "

    .line 17
    .line 18
    const-string v3, "SubRoomQsTileBaseView"

    .line 19
    .line 20
    invoke-static {v2, v0, v3}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorActive:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorDisabled:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorInactive:I

    .line 32
    .line 33
    :goto_0
    iget v2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mCircleColor:I

    .line 34
    .line 35
    if-eq v0, v2, :cond_3

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    .line 50
    .line 51
    iput v0, v2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    .line 52
    .line 53
    iput v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mCircleColor:I

    .line 54
    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 66
    .line 67
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    const v3, 0x7f0605bb

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 86
    .line 87
    invoke-direct {p0, v0}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->updateSubscreenTileStroke()V

    .line 91
    .line 92
    .line 93
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 94
    .line 95
    if-ne v0, v1, :cond_5

    .line 96
    .line 97
    const v0, 0x7f060886

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    const v0, 0x7f060885

    .line 102
    .line 103
    .line 104
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Landroid/widget/ImageView;

    .line 111
    .line 112
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {v3, v0}, Landroid/content/Context;->getColor(I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 119
    .line 120
    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 124
    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 137
    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    const/4 v0, 0x0

    .line 147
    :goto_2
    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 148
    .line 149
    const-string v3, ","

    .line 150
    .line 151
    if-nez v2, :cond_9

    .line 152
    .line 153
    if-eqz v0, :cond_a

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 160
    .line 161
    if-ne p1, v1, :cond_7

    .line 162
    .line 163
    const p1, 0x7f13006f

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_7
    const p1, 0x7f13006e

    .line 168
    .line 169
    .line 170
    :goto_3
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-eqz p1, :cond_8

    .line 196
    .line 197
    const-string v0, "\n"

    .line 198
    .line 199
    const-string v1, " "

    .line 200
    .line 201
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const-string v0, "-"

    .line 206
    .line 207
    const-string v1, ""

    .line 208
    .line 209
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    :cond_8
    move-object v0, p1

    .line 214
    goto :goto_4

    .line 215
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 233
    .line 234
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->updateBackgroundColors()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final updateSubscreenTileStroke()V
    .locals 4

    .line 1
    const-string v0, "SubRoomQsTileBaseView"

    .line 2
    .line 3
    const-string/jumbo v1, "updateSubscreenTileStroke"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x7f0713e9

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const v3, 0x7f060891

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
