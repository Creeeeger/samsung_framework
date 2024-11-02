.class public Lcom/android/systemui/edgelighting/effect/view/MorphView;
.super Lcom/android/systemui/edgelighting/effect/view/AbsToastView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCodeText:Landroid/widget/TextView;

.field public final mExpandButton:Landroid/widget/ImageView;

.field public final mIconRootLayout:Landroid/widget/LinearLayout;

.field public mIsGrayScaled:Z

.field public mIsShowAppIcon:Z

.field public mIsSupportAppIcon:Z

.field public final mMainText:Landroid/widget/TextView;

.field public final mNotiIcon:Landroid/widget/ImageView;

.field public final mNotiIconBg:Landroid/widget/LinearLayout;

.field public mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

.field public mShouldShowButton:Z

.field public final mSmallIcon:Landroid/widget/ImageView;

.field public final mSubText:Landroid/widget/TextView;

.field public mTextAnimator:Landroid/animation/ValueAnimator;

.field public final mTextRootLayout:Landroid/widget/LinearLayout;

.field public final mToastRootLayout:Landroid/widget/LinearLayout;

.field public final mTouchRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "layout_inflater"

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/view/LayoutInflater;

    .line 11
    .line 12
    const p2, 0x7f0d01fd

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a0be8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    const p1, 0x7f0a0be6

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIconRootLayout:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    const p1, 0x7f0a0759

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/LinearLayout;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIconBg:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    const p1, 0x7f0a0be4

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/widget/ImageView;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    .line 62
    .line 63
    const p1, 0x7f0a0be9

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/widget/ImageView;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    .line 73
    .line 74
    const p1, 0x7f0a0beb

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroid/widget/LinearLayout;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    const p1, 0x7f0a0bec

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Landroid/widget/TextView;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 95
    .line 96
    const p1, 0x7f0a0bea

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroid/widget/TextView;

    .line 104
    .line 105
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 106
    .line 107
    const p1, 0x7f0a03d4

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/widget/ImageView;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    .line 117
    .line 118
    const p1, 0x7f0a0ca0

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroid/widget/TextView;

    .line 126
    .line 127
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 128
    .line 129
    new-instance p2, Lcom/android/systemui/edgelighting/effect/view/MorphView$1;

    .line 130
    .line 131
    invoke-direct {p2, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Landroid/graphics/Rect;

    .line 138
    .line 139
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 143
    .line 144
    return-void
.end method


# virtual methods
.method public final changeNotiText(FJJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput p1, v1, v2

    .line 8
    .line 9
    const-string v2, "alpha"

    .line 10
    .line 11
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    new-instance p3, Lcom/android/systemui/edgelighting/effect/view/MorphView$3;

    .line 23
    .line 24
    invoke-direct {p3, p0, p1}, Lcom/android/systemui/edgelighting/effect/view/MorphView$3;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;F)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    .line 38
    .line 39
    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final changeNotificationWidth(IIJJ)V
    .locals 9

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-le p1, p2, :cond_0

    .line 11
    .line 12
    move v2, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v1

    .line 15
    :goto_0
    const/4 v3, 0x2

    .line 16
    new-array v4, v3, [F

    .line 17
    .line 18
    const/high16 v5, 0x3f800000    # 1.0f

    .line 19
    .line 20
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    move v7, v5

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v7, v6

    .line 27
    :goto_1
    aput v7, v4, v1

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    move v5, v6

    .line 32
    :cond_2
    aput v5, v4, v0

    .line 33
    .line 34
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    .line 41
    new-instance v5, Lcom/android/systemui/edgelighting/effect/utils/OneSpring;

    .line 42
    .line 43
    invoke-direct {v5}, Lcom/android/systemui/edgelighting/effect/utils/OneSpring;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    .line 48
    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIconRootLayout:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 54
    .line 55
    .line 56
    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIconRootLayout:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 59
    .line 60
    .line 61
    :cond_3
    new-instance v5, Lcom/android/systemui/edgelighting/effect/view/MorphView$6;

    .line 62
    .line 63
    invoke-direct {v5, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$6;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const v6, 0x7f0706b4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    int-to-float v5, v5

    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const v7, 0x7f0706b5

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    int-to-float v6, v6

    .line 93
    new-array v7, v3, [F

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    move v8, v5

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move v8, v6

    .line 100
    :goto_2
    aput v8, v7, v1

    .line 101
    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    move v5, v6

    .line 105
    :cond_5
    aput v5, v7, v0

    .line 106
    .line 107
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v5, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    .line 113
    .line 114
    new-instance v6, Lcom/android/systemui/edgelighting/effect/utils/OneSpring;

    .line 115
    .line 116
    invoke-direct {v6}, Lcom/android/systemui/edgelighting/effect/utils/OneSpring;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    .line 121
    .line 122
    new-instance v6, Lcom/android/systemui/edgelighting/effect/view/MorphView$7;

    .line 123
    .line 124
    invoke-direct {v6, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$7;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    .line 129
    .line 130
    new-array v5, v3, [F

    .line 131
    .line 132
    fill-array-data v5, :array_0

    .line 133
    .line 134
    .line 135
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v5, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 140
    .line 141
    .line 142
    new-instance v6, Lcom/android/systemui/edgelighting/effect/utils/OneSpring;

    .line 143
    .line 144
    invoke-direct {v6}, Lcom/android/systemui/edgelighting/effect/utils/OneSpring;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    .line 149
    .line 150
    new-instance v6, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;

    .line 151
    .line 152
    invoke-direct {v6, p0, p1, p2, v2}, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;IIZ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const p2, 0x7f0714cc

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    int-to-float p1, p1

    .line 170
    new-array p2, v3, [F

    .line 171
    .line 172
    const/4 v3, 0x0

    .line 173
    if-eqz v2, :cond_6

    .line 174
    .line 175
    move v6, p1

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    move v6, v3

    .line 178
    :goto_3
    aput v6, p2, v1

    .line 179
    .line 180
    if-eqz v2, :cond_7

    .line 181
    .line 182
    move p1, v3

    .line 183
    :cond_7
    aput p1, p2, v0

    .line 184
    .line 185
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 190
    .line 191
    .line 192
    new-instance p2, Lcom/android/systemui/edgelighting/effect/utils/OneSpring;

    .line 193
    .line 194
    invoke-direct {p2}, Lcom/android/systemui/edgelighting/effect/utils/OneSpring;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    .line 199
    .line 200
    new-instance p2, Lcom/android/systemui/edgelighting/effect/view/MorphView$9;

    .line 201
    .line 202
    invoke-direct {p2, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$9;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    .line 207
    .line 208
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    .line 209
    .line 210
    new-instance p5, Lcom/android/systemui/edgelighting/effect/view/MorphView$10;

    .line 211
    .line 212
    invoke-direct {p5, p0, v2}, Lcom/android/systemui/edgelighting/effect/view/MorphView$10;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, p5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 216
    .line 217
    .line 218
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    .line 219
    .line 220
    filled-new-array {v5, v4, p1}, [Landroid/animation/Animator;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    .line 228
    .line 229
    invoke-virtual {p1, p3, p4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 230
    .line 231
    .line 232
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    .line 233
    .line 234
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    nop

    .line 239
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final disappear()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "MorphView"

    .line 6
    .line 7
    const-string v0, "Morph animation is running. So ignore hide action."

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    .line 15
    .line 16
    new-array v0, v0, [F

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    aput v2, v0, v1

    .line 21
    .line 22
    const-string v1, "alpha"

    .line 23
    .line 24
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v1, 0xc8

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/MorphView$4;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$4;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final getRootRect()Landroid/graphics/Rect;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget v1, v0, v1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aget v0, v0, v2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    new-instance v3, Landroid/graphics/Rect;

    .line 28
    .line 29
    add-int/2addr v2, v1

    .line 30
    add-int/2addr p0, v0

    .line 31
    invoke-direct {v3, v1, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    .line 33
    .line 34
    return-object v3
.end method

.method public final hide()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "MorphView"

    .line 6
    .line 7
    const-string v0, "Morph animation is running. So ignore hide action."

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->isEmptyTickerText()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismissToastPopup()V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    const-wide/16 v6, 0xc8

    .line 33
    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    move-object v2, p0

    .line 37
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->changeNotiText(FJJ)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v11, 0x96

    .line 41
    .line 42
    const-wide/16 v13, 0xfa

    .line 43
    .line 44
    iget v9, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    .line 45
    .line 46
    iget v10, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    .line 47
    .line 48
    move-object v8, p0

    .line 49
    invoke-virtual/range {v8 .. v14}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->changeNotificationWidth(IIJJ)V

    .line 50
    .line 51
    .line 52
    :cond_2
    new-array v1, v0, [F

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    const/high16 v3, -0x3c510000    # -350.0f

    .line 56
    .line 57
    aput v3, v1, v2

    .line 58
    .line 59
    const-string/jumbo v3, "translationY"

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v3, Lcom/android/systemui/edgelighting/effect/utils/SineIn60;

    .line 67
    .line 68
    invoke-direct {v3}, Lcom/android/systemui/edgelighting/effect/utils/SineIn60;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v3, 0x15e

    .line 75
    .line 76
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    .line 78
    .line 79
    new-array v0, v0, [F

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    aput v3, v0, v2

    .line 83
    .line 84
    const-string v2, "alpha"

    .line 85
    .line 86
    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 91
    .line 92
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    .line 97
    .line 98
    const-wide/16 v2, 0xc8

    .line 99
    .line 100
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    .line 102
    .line 103
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 104
    .line 105
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 109
    .line 110
    const-wide/16 v3, 0x190

    .line 111
    .line 112
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 116
    .line 117
    filled-new-array {v1, v0}, [Landroid/animation/Animator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 125
    .line 126
    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/MorphView$5;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$5;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final initialize()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0714c7

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f07086e

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/high16 v3, 0x41500000    # 13.0f

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v3, 0x0

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-lez v2, :cond_1

    .line 83
    .line 84
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    add-int/2addr v2, v3

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move v2, v3

    .line 98
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-eqz v4, :cond_2

    .line 105
    .line 106
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-lez v4, :cond_2

    .line 117
    .line 118
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-virtual {v4, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 121
    .line 122
    .line 123
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    add-int/2addr v2, v4

    .line 130
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-nez v4, :cond_3

    .line 137
    .line 138
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-eqz v4, :cond_3

    .line 143
    .line 144
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {v4, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 147
    .line 148
    .line 149
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    add-int/2addr v2, v4

    .line 156
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    .line 157
    .line 158
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-nez v4, :cond_4

    .line 163
    .line 164
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    .line 165
    .line 166
    invoke-virtual {v4, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 167
    .line 168
    .line 169
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    .line 170
    .line 171
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    add-int/2addr v2, v4

    .line 176
    :cond_4
    const v4, 0x7f0714cd

    .line 177
    .line 178
    .line 179
    const v5, 0x7f0714ce

    .line 180
    .line 181
    .line 182
    if-lez v2, :cond_5

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    add-int/2addr v6, v2

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    add-int/2addr v2, v6

    .line 202
    add-int/2addr v2, v0

    .line 203
    goto :goto_2

    .line 204
    :cond_5
    move v2, v0

    .line 205
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsShowAppIcon:Z

    .line 206
    .line 207
    if-eqz v6, :cond_6

    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    const v7, 0x7f0714c3

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    add-int/2addr v2, v6

    .line 221
    :cond_6
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_7

    .line 226
    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    const-string/jumbo v7, "window"

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    check-cast v6, Landroid/view/WindowManager;

    .line 239
    .line 240
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    int-to-float v6, v6

    .line 249
    const/high16 v7, 0x3f800000    # 1.0f

    .line 250
    .line 251
    cmpl-float v6, v6, v7

    .line 252
    .line 253
    if-nez v6, :cond_7

    .line 254
    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    const v7, 0x7f07026b

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    goto :goto_3

    .line 271
    :cond_7
    move v6, v3

    .line 272
    :goto_3
    invoke-virtual {p0, v3, v3, v6, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 273
    .line 274
    .line 275
    iget v7, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    .line 276
    .line 277
    mul-int/lit8 v1, v1, 0x2

    .line 278
    .line 279
    sub-int/2addr v7, v1

    .line 280
    sub-int/2addr v7, v6

    .line 281
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    .line 286
    .line 287
    iput v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    .line 288
    .line 289
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {p0, v2}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->updateMargin(Landroid/view/WindowInsets;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    const v6, 0x7f0714c6

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    iget v7, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    .line 312
    .line 313
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 314
    .line 315
    mul-int/lit8 v2, v2, 0x2

    .line 316
    .line 317
    add-int/2addr v2, v0

    .line 318
    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 319
    .line 320
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    .line 322
    .line 323
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 324
    .line 325
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 330
    .line 331
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 332
    .line 333
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 334
    .line 335
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    .line 355
    .line 356
    invoke-virtual {v4, v0, v3, v2, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 357
    .line 358
    .line 359
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    .line 360
    .line 361
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 366
    .line 367
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    .line 368
    .line 369
    sub-int/2addr v1, v2

    .line 370
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 371
    .line 372
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    .line 373
    .line 374
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->reset()V

    .line 378
    .line 379
    .line 380
    return-void
.end method

.method public final isEmptyTickerText()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-lez p0, :cond_2

    .line 40
    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return p0

    .line 43
    :cond_2
    const/4 p0, 0x1

    .line 44
    return p0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->updateMargin(Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final reset()V
    .locals 2

    .line 1
    const/high16 v0, -0x3c860000    # -250.0f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 83
    .line 84
    .line 85
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    .line 88
    .line 89
    return-void
.end method

.method public final show()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    new-array v1, v0, [F

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/high16 v3, 0x41200000    # 10.0f

    .line 19
    .line 20
    aput v3, v1, v2

    .line 21
    .line 22
    const-string/jumbo v3, "translationY"

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-wide/16 v4, 0x15e

    .line 30
    .line 31
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    new-instance v6, Lcom/android/systemui/edgelighting/effect/utils/SineInOut80;

    .line 35
    .line 36
    invoke-direct {v6}, Lcom/android/systemui/edgelighting/effect/utils/SineInOut80;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 40
    .line 41
    .line 42
    new-array v6, v0, [F

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    aput v7, v6, v2

    .line 46
    .line 47
    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v4, 0x64

    .line 55
    .line 56
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 57
    .line 58
    .line 59
    const v4, 0x3dcccccd    # 0.1f

    .line 60
    .line 61
    .line 62
    const v5, 0x3f2b851f    # 0.67f

    .line 63
    .line 64
    .line 65
    const/high16 v6, 0x3f800000    # 1.0f

    .line 66
    .line 67
    invoke-static {v4, v7, v5, v6, v3}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 68
    .line 69
    .line 70
    new-array v0, v0, [F

    .line 71
    .line 72
    aput v6, v0, v2

    .line 73
    .line 74
    const-string v2, "alpha"

    .line 75
    .line 76
    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-wide/16 v4, 0x96

    .line 81
    .line 82
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 83
    .line 84
    .line 85
    const-wide/16 v4, 0xc8

    .line 86
    .line 87
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    .line 89
    .line 90
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 91
    .line 92
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 99
    .line 100
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 104
    .line 105
    const-wide/16 v4, 0x0

    .line 106
    .line 107
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 111
    .line 112
    filled-new-array {v1, v3, v0}, [Landroid/animation/Animator;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 120
    .line 121
    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 130
    .line 131
    const-wide/16 v1, 0x190

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final showExpandButton(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mShouldShowButton:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v1, 0x8

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mShouldShowButton:Z

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final updateMargin(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0713ea

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f0714d2

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    add-int/2addr v0, p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    if-le v0, p1, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v0, p1

    .line 50
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 59
    .line 60
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 61
    .line 62
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 63
    .line 64
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    .line 65
    .line 66
    add-int/2addr v0, v1

    .line 67
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    .line 70
    .line 71
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    .line 72
    .line 73
    sub-int v1, v0, v1

    .line 74
    .line 75
    div-int/lit8 v1, v1, 0x2

    .line 76
    .line 77
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 78
    .line 79
    sub-int/2addr v0, v1

    .line 80
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const v0, 0x7f0714cc

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 97
    .line 98
    sub-int/2addr v0, p0

    .line 99
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 102
    .line 103
    sub-int/2addr v0, p0

    .line 104
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 105
    .line 106
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 107
    .line 108
    add-int/2addr v0, p0

    .line 109
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 110
    .line 111
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 112
    .line 113
    add-int/2addr v0, p0

    .line 114
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 115
    .line 116
    :goto_2
    return-void
.end method
