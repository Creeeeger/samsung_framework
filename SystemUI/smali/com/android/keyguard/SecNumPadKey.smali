.class public Lcom/android/keyguard/SecNumPadKey;
.super Lcom/android/keyguard/NumPadKey;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAccessibilityDelegate:Lcom/android/keyguard/SecNumPadKey$1;

.field public mDigitImage:Landroid/widget/ImageView;

.field public mIsImagePinLock:Z

.field public final mOnSettingsChangedCallback:Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda0;

.field public mRipple:Landroid/graphics/drawable/RippleDrawable;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f0d0167

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p2, Lcom/android/keyguard/SecNumPadKey$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/SecNumPadKey$1;-><init>(Lcom/android/keyguard/SecNumPadKey;)V

    iput-object p2, p0, Lcom/android/keyguard/SecNumPadKey;->mAccessibilityDelegate:Lcom/android/keyguard/SecNumPadKey$1;

    .line 6
    new-instance p2, Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/SecNumPadKey;)V

    iput-object p2, p0, Lcom/android/keyguard/SecNumPadKey;->mOnSettingsChangedCallback:Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 8
    iget p2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-nez p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :cond_0
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_SPR_USIM_TEXT:Z

    if-eqz p2, :cond_1

    const p2, 0x7f130786

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    const p2, 0x7f080b3f

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 16
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final doHapticKeyClick()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isHapticFeedbackEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey;->mOnSettingsChangedCallback:Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const-string v1, "accessibility_reduce_transparency"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    filled-new-array {v1}, [Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey;->mOnSettingsChangedCallback:Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mAccessibilityDelegate:Lcom/android/keyguard/SecNumPadKey$1;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    div-int/lit8 p2, p2, 0x2

    .line 20
    .line 21
    div-int/lit8 p3, p1, 0x2

    .line 22
    .line 23
    sub-int/2addr p2, p3

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    div-int/lit8 p3, p3, 0x2

    .line 29
    .line 30
    iget-object p4, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    div-int/lit8 p4, p4, 0x2

    .line 37
    .line 38
    sub-int/2addr p3, p4

    .line 39
    add-int/2addr p1, p2

    .line 40
    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    add-int/2addr p4, p3

    .line 47
    invoke-virtual {p0, p3, p2, p4, p1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/NumPadKey;->onLayout(ZIIII)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public updateDigitTextSize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v1, 0x7f070519

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-float p0, p0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public updateKlondikeTextSize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v1, 0x7f070515

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-float p0, p0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final updateViewStyle()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v3, 0x7f050081

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const v0, 0x7f0d0146

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const v0, 0x7f0d0168

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const v0, 0x7f0d0167

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const-string v4, "layout_inflater"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/view/LayoutInflater;

    .line 62
    .line 63
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-object v4, v3

    .line 67
    check-cast v4, Landroid/view/LayoutInflater;

    .line 68
    .line 69
    invoke-virtual {v3, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    iget-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    .line 73
    .line 74
    const v3, 0x7f080b41

    .line 75
    .line 76
    .line 77
    const v4, 0x7f080b3f

    .line 78
    .line 79
    .line 80
    const-string v5, "background"

    .line 81
    .line 82
    if-eqz v0, :cond_11

    .line 83
    .line 84
    const v0, 0x7f0a0337

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/ImageView;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 94
    .line 95
    invoke-static {v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const v5, 0x7f080d2a

    .line 100
    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    if-nez v6, :cond_3

    .line 113
    .line 114
    const-string v6, "SecNumPadKey"

    .line 115
    .line 116
    const-string/jumbo v7, "return null - bitmap is null"

    .line 117
    .line 118
    .line 119
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move v6, v1

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move v6, v2

    .line 125
    :goto_2
    if-eqz v6, :cond_4

    .line 126
    .line 127
    move v1, v2

    .line 128
    :cond_4
    iget v2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 129
    .line 130
    packed-switch v2, :pswitch_data_0

    .line 131
    .line 132
    .line 133
    goto/16 :goto_d

    .line 134
    .line 135
    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 136
    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    const v1, 0x7f080d3a

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    const v1, 0x7f080d39

    .line 144
    .line 145
    .line 146
    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_d

    .line 150
    .line 151
    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 152
    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    const v1, 0x7f080d38

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_6
    const v1, 0x7f080d37

    .line 160
    .line 161
    .line 162
    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_d

    .line 166
    .line 167
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 168
    .line 169
    if-eqz v1, :cond_7

    .line 170
    .line 171
    const v1, 0x7f080d36

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_7
    const v1, 0x7f080d35

    .line 176
    .line 177
    .line 178
    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_d

    .line 182
    .line 183
    :pswitch_3
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 184
    .line 185
    if-eqz v1, :cond_8

    .line 186
    .line 187
    const v1, 0x7f080d34

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_8
    const v1, 0x7f080d33

    .line 192
    .line 193
    .line 194
    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_d

    .line 198
    :pswitch_4
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 199
    .line 200
    if-eqz v1, :cond_9

    .line 201
    .line 202
    const v1, 0x7f080d32

    .line 203
    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_9
    const v1, 0x7f080d31

    .line 207
    .line 208
    .line 209
    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    .line 211
    .line 212
    goto :goto_d

    .line 213
    :pswitch_5
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 214
    .line 215
    if-eqz v1, :cond_a

    .line 216
    .line 217
    const v1, 0x7f080d30

    .line 218
    .line 219
    .line 220
    goto :goto_8

    .line 221
    :cond_a
    const v1, 0x7f080d2f

    .line 222
    .line 223
    .line 224
    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    .line 226
    .line 227
    goto :goto_d

    .line 228
    :pswitch_6
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 229
    .line 230
    if-eqz v1, :cond_b

    .line 231
    .line 232
    const v1, 0x7f080d2e

    .line 233
    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_b
    const v1, 0x7f080d2d

    .line 237
    .line 238
    .line 239
    :goto_9
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    .line 241
    .line 242
    goto :goto_d

    .line 243
    :pswitch_7
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 244
    .line 245
    if-eqz v1, :cond_c

    .line 246
    .line 247
    const v1, 0x7f080d2c

    .line 248
    .line 249
    .line 250
    goto :goto_a

    .line 251
    :cond_c
    const v1, 0x7f080d2b

    .line 252
    .line 253
    .line 254
    :goto_a
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_d

    .line 258
    :pswitch_8
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 259
    .line 260
    if-eqz v1, :cond_d

    .line 261
    .line 262
    goto :goto_b

    .line 263
    :cond_d
    const v5, 0x7f080d29

    .line 264
    .line 265
    .line 266
    :goto_b
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    .line 268
    .line 269
    goto :goto_d

    .line 270
    :pswitch_9
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 271
    .line 272
    if-eqz v1, :cond_e

    .line 273
    .line 274
    const v1, 0x7f080d28

    .line 275
    .line 276
    .line 277
    goto :goto_c

    .line 278
    :cond_e
    const v1, 0x7f080d27

    .line 279
    .line 280
    .line 281
    :goto_c
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    .line 283
    .line 284
    :goto_d
    iget v1, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 285
    .line 286
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    if-eqz v0, :cond_f

    .line 298
    .line 299
    const v2, 0x7f080d26

    .line 300
    .line 301
    .line 302
    goto :goto_e

    .line 303
    :cond_f
    const v2, 0x7f080d25

    .line 304
    .line 305
    .line 306
    :goto_e
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .line 312
    .line 313
    goto/16 :goto_16

    .line 314
    .line 315
    :catch_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    if-eqz v0, :cond_10

    .line 320
    .line 321
    goto :goto_f

    .line 322
    :cond_10
    move v3, v4

    .line 323
    :goto_f
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_16

    .line 331
    .line 332
    :cond_11
    const v0, 0x7f0a0338

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    check-cast v0, Landroid/widget/TextView;

    .line 340
    .line 341
    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 342
    .line 343
    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 344
    .line 345
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    .line 351
    .line 352
    const v0, 0x7f0a0564

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, Landroid/widget/TextView;

    .line 360
    .line 361
    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    .line 362
    .line 363
    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 364
    .line 365
    if-lez v6, :cond_14

    .line 366
    .line 367
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 368
    .line 369
    if-nez v0, :cond_12

    .line 370
    .line 371
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    const v6, 0x7f030056

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    sput-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 383
    .line 384
    :cond_12
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 385
    .line 386
    array-length v6, v0

    .line 387
    iget v7, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 388
    .line 389
    if-le v6, v7, :cond_15

    .line 390
    .line 391
    aget-object v0, v0, v7

    .line 392
    .line 393
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 394
    .line 395
    .line 396
    move-result v6

    .line 397
    if-lez v6, :cond_13

    .line 398
    .line 399
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    .line 400
    .line 401
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    .line 403
    .line 404
    goto :goto_10

    .line 405
    :cond_13
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    .line 406
    .line 407
    const/4 v6, 0x4

    .line 408
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    .line 410
    .line 411
    goto :goto_10

    .line 412
    :cond_14
    if-nez v6, :cond_15

    .line 413
    .line 414
    const/16 v6, 0x8

    .line 415
    .line 416
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    :cond_15
    :goto_10
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 420
    .line 421
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 430
    .line 431
    .line 432
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 433
    .line 434
    instance-of v6, v0, Lcom/android/systemui/widget/SystemUITextView;

    .line 435
    .line 436
    if-eqz v6, :cond_19

    .line 437
    .line 438
    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    .line 439
    .line 440
    iget-object v6, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 441
    .line 442
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    .line 443
    .line 444
    .line 445
    move-result v6

    .line 446
    if-eqz v6, :cond_16

    .line 447
    .line 448
    iget-object v6, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 449
    .line 450
    iget-object v6, v6, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 451
    .line 452
    const-string/jumbo v7, "theme_font_numeric"

    .line 453
    .line 454
    .line 455
    invoke-virtual {v6, v7}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v6

    .line 463
    goto :goto_11

    .line 464
    :cond_16
    const/4 v6, 0x0

    .line 465
    :goto_11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 466
    .line 467
    .line 468
    move-result v7

    .line 469
    if-nez v7, :cond_17

    .line 470
    .line 471
    new-instance v7, Ljava/io/File;

    .line 472
    .line 473
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 477
    .line 478
    .line 479
    move-result v7

    .line 480
    if-eqz v7, :cond_17

    .line 481
    .line 482
    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    goto :goto_12

    .line 487
    :cond_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    const v8, 0x7f130c9b

    .line 492
    .line 493
    .line 494
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v7

    .line 498
    invoke-static {v7, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    const/16 v8, 0x190

    .line 503
    .line 504
    invoke-static {v7, v8, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 509
    .line 510
    .line 511
    move-result v7

    .line 512
    if-nez v7, :cond_18

    .line 513
    .line 514
    new-instance v7, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    const-string v6, " does not exist. Use default font."

    .line 523
    .line 524
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v6

    .line 531
    const-string v7, "NumPadKey"

    .line 532
    .line 533
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .line 535
    .line 536
    :cond_18
    :goto_12
    if-eqz v1, :cond_19

    .line 537
    .line 538
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 539
    .line 540
    .line 541
    :cond_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 546
    .line 547
    .line 548
    move-result-wide v5

    .line 549
    invoke-static {v0, v5, v6, v2}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 554
    .line 555
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    if-eqz v1, :cond_1b

    .line 560
    .line 561
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    if-eqz v0, :cond_1a

    .line 566
    .line 567
    const v0, 0x7f080b42

    .line 568
    .line 569
    .line 570
    goto :goto_13

    .line 571
    :cond_1a
    const v0, 0x7f080b40

    .line 572
    .line 573
    .line 574
    :goto_13
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 579
    .line 580
    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 581
    .line 582
    goto :goto_15

    .line 583
    :cond_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    if-eqz v0, :cond_1c

    .line 588
    .line 589
    goto :goto_14

    .line 590
    :cond_1c
    move v3, v4

    .line 591
    :goto_14
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 596
    .line 597
    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 598
    .line 599
    :goto_15
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 600
    .line 601
    if-eqz v0, :cond_1d

    .line 602
    .line 603
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 604
    .line 605
    .line 606
    :cond_1d
    :goto_16
    return-void

    .line 607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
