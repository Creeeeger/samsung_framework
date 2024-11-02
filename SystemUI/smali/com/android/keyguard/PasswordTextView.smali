.class public Lcom/android/keyguard/PasswordTextView;
.super Lcom/android/systemui/widget/SystemUIEditText;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAppearInterpolator:Landroid/view/animation/Interpolator;

.field public final mCharPadding:I

.field public final mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field public final mDotSize:I

.field public final mGravity:I

.field public final mPM:Landroid/os/PowerManager;

.field public mShowPassword:Z

.field public mText:Ljava/lang/String;

.field public final mTextChars:Ljava/util/ArrayList;

.field public mTextHeightRaw:I

.field public mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    const-string p3, ""

    .line 6
    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 8
    sget-object p4, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p4

    const/16 v0, 0x13

    .line 9
    :try_start_0
    invoke-virtual {p4, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v1, 0x14

    .line 10
    invoke-virtual {p4, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    sget-object p4, Lcom/android/systemui/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p4, 0x0

    const/4 v0, 0x4

    .line 15
    :try_start_1
    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    const/16 v0, 0x11

    .line 16
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    .line 17
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070aa7

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x3

    .line 18
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070aa6

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x2

    .line 20
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    const/4 p3, -0x1

    .line 21
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 22
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const/16 p3, 0x81

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 25
    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 26
    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const p3, 0x1040349

    .line 27
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    iget-object p1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    const p2, 0x10c000e

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 30
    iget-object p1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    const p2, 0x10c000f

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 31
    iget-object p1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    const p2, 0x10c000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 32
    iget-object p1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    .line 33
    invoke-virtual {p0, p4}, Landroid/widget/EditText;->setWillNotDraw(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    throw p0

    :catchall_1
    move-exception p0

    .line 36
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    throw p0
.end method


# virtual methods
.method public append(C)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-le v2, v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 38
    .line 39
    invoke-direct {v0, p0, v3}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;I)V

    .line 40
    .line 41
    .line 42
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 51
    .line 52
    add-int/lit8 v4, v2, -0x1

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 59
    .line 60
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 61
    .line 62
    :goto_0
    iget-object p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 63
    .line 64
    iget-boolean v4, p1, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    iget-object v6, v0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 70
    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    iget-boolean v6, v0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 74
    .line 75
    if-nez v6, :cond_2

    .line 76
    .line 77
    :cond_1
    move v6, v5

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v6, v3

    .line 80
    :goto_1
    if-eqz v4, :cond_4

    .line 81
    .line 82
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    iget-boolean v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 87
    .line 88
    if-nez v4, :cond_4

    .line 89
    .line 90
    :cond_3
    move v4, v5

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move v4, v3

    .line 93
    :goto_2
    iget-object v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    if-eqz v7, :cond_6

    .line 96
    .line 97
    iget-boolean v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 98
    .line 99
    if-nez v7, :cond_5

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    move v7, v3

    .line 103
    goto :goto_4

    .line 104
    :cond_6
    :goto_3
    move v7, v5

    .line 105
    :goto_4
    const-wide/16 v8, 0x0

    .line 106
    .line 107
    if-eqz v6, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0, v8, v9}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 110
    .line 111
    .line 112
    :cond_7
    const/4 v6, 0x2

    .line 113
    const/high16 v10, 0x43200000    # 160.0f

    .line 114
    .line 115
    const/high16 v11, 0x3f800000    # 1.0f

    .line 116
    .line 117
    if-eqz v4, :cond_8

    .line 118
    .line 119
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    invoke-static {v4}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 122
    .line 123
    .line 124
    new-array v4, v6, [F

    .line 125
    .line 126
    iget v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 127
    .line 128
    aput v12, v4, v3

    .line 129
    .line 130
    aput v11, v4, v5

    .line 131
    .line 132
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iput-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 137
    .line 138
    iget-object v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$7;

    .line 139
    .line 140
    invoke-virtual {v4, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 144
    .line 145
    iget-object v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$3;

    .line 146
    .line 147
    invoke-virtual {v4, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    .line 149
    .line 150
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 151
    .line 152
    iget-object v12, p1, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 153
    .line 154
    invoke-virtual {v4, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    .line 156
    .line 157
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 158
    .line 159
    iget v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 160
    .line 161
    sub-float v12, v11, v12

    .line 162
    .line 163
    mul-float/2addr v12, v10

    .line 164
    float-to-long v12, v12

    .line 165
    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 166
    .line 167
    .line 168
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 169
    .line 170
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 171
    .line 172
    .line 173
    iput-boolean v5, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 174
    .line 175
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 176
    .line 177
    if-nez v4, :cond_8

    .line 178
    .line 179
    new-array v4, v6, [F

    .line 180
    .line 181
    fill-array-data v4, :array_0

    .line 182
    .line 183
    .line 184
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    iput-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 189
    .line 190
    iget-object v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslationUpdater:Lcom/android/keyguard/PasswordTextView$CharState$8;

    .line 191
    .line 192
    invoke-virtual {v4, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 193
    .line 194
    .line 195
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 196
    .line 197
    iget-object v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$4;

    .line 198
    .line 199
    invoke-virtual {v4, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    .line 201
    .line 202
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 203
    .line 204
    iget-object v12, p1, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 205
    .line 206
    invoke-virtual {v4, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 207
    .line 208
    .line 209
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 210
    .line 211
    const-wide/16 v12, 0xa0

    .line 212
    .line 213
    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 214
    .line 215
    .line 216
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 217
    .line 218
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 219
    .line 220
    .line 221
    :cond_8
    if-eqz v7, :cond_9

    .line 222
    .line 223
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 224
    .line 225
    invoke-static {v4}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 226
    .line 227
    .line 228
    new-array v4, v6, [F

    .line 229
    .line 230
    iget v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 231
    .line 232
    aput v7, v4, v3

    .line 233
    .line 234
    aput v11, v4, v5

    .line 235
    .line 236
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    iput-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 241
    .line 242
    iget-object v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Lcom/android/keyguard/PasswordTextView$CharState$9;

    .line 243
    .line 244
    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 245
    .line 246
    .line 247
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 248
    .line 249
    iget-object v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$5;

    .line 250
    .line 251
    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    .line 253
    .line 254
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 255
    .line 256
    iget v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 257
    .line 258
    sub-float/2addr v11, v7

    .line 259
    mul-float/2addr v11, v10

    .line 260
    float-to-long v10, v11

    .line 261
    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 262
    .line 263
    .line 264
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 265
    .line 266
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 267
    .line 268
    .line 269
    iput-boolean v5, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 270
    .line 271
    :cond_9
    iget-boolean p1, p1, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 272
    .line 273
    if-eqz p1, :cond_a

    .line 274
    .line 275
    iget-object p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 276
    .line 277
    iget-object v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    .line 278
    .line 279
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 280
    .line 281
    .line 282
    iput-boolean v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 283
    .line 284
    const-wide/16 v10, 0x514

    .line 285
    .line 286
    invoke-virtual {p1, v4, v10, v11}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    .line 288
    .line 289
    iput-boolean v5, v0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 290
    .line 291
    :cond_a
    if-le v2, v5, :cond_c

    .line 292
    .line 293
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 294
    .line 295
    sub-int/2addr v2, v6

    .line 296
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    check-cast p1, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 301
    .line 302
    iget-boolean v0, p1, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 303
    .line 304
    if-eqz v0, :cond_c

    .line 305
    .line 306
    iget-object v0, p1, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 307
    .line 308
    iget-object v2, p1, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    .line 309
    .line 310
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 311
    .line 312
    .line 313
    iput-boolean v3, p1, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 314
    .line 315
    iget-object v4, p1, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 316
    .line 317
    if-eqz v4, :cond_b

    .line 318
    .line 319
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 320
    .line 321
    .line 322
    move-result-wide v6

    .line 323
    iget-object v4, p1, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 324
    .line 325
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 326
    .line 327
    .line 328
    move-result-wide v8

    .line 329
    sub-long/2addr v6, v8

    .line 330
    const-wide/16 v8, 0x64

    .line 331
    .line 332
    add-long/2addr v6, v8

    .line 333
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 334
    .line 335
    .line 336
    iput-boolean v3, p1, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 337
    .line 338
    invoke-virtual {v0, v2, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    .line 340
    .line 341
    iput-boolean v5, p1, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_b
    invoke-virtual {p1, v8, v9}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    .line 345
    .line 346
    .line 347
    const-wide/16 v6, 0x1e

    .line 348
    .line 349
    invoke-virtual {p1, v6, v7}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 350
    .line 351
    .line 352
    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    .line 353
    .line 354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 355
    .line 356
    .line 357
    move-result-wide v6

    .line 358
    invoke-virtual {p1, v6, v7, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 359
    .line 360
    .line 361
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    .line 362
    .line 363
    if-eqz p1, :cond_d

    .line 364
    .line 365
    invoke-interface {p1}, Lcom/android/keyguard/PasswordTextView$UserActivityListener;->onUserActivity()V

    .line 366
    .line 367
    .line 368
    :cond_d
    move-object p1, v1

    .line 369
    check-cast p1, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    invoke-virtual {p0, v1, p1, v3, v5}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final deleteLastChar()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    sub-int/2addr v0, v4

    .line 18
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iput-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 31
    .line 32
    const-wide/16 v5, 0x0

    .line 33
    .line 34
    invoke-virtual {v0, v5, v6, v5, v6}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    .line 35
    .line 36
    .line 37
    move-object v0, v1

    .line 38
    check-cast v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-int/2addr v0, v4

    .line 45
    invoke-virtual {p0, v1, v0, v4, v2}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    .line 58
    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    invoke-interface {p0}, Lcom/android/keyguard/PasswordTextView$UserActivityListener;->onUserActivity()V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public getCharBounds()Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 13
    .line 14
    mul-float/2addr v0, v1

    .line 15
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    const-string v3, "0"

    .line 30
    .line 31
    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final getTransformedText()Ljava/lang/CharSequence;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v0, :cond_2

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 22
    .line 23
    iget-object v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    iget-boolean v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    invoke-virtual {v3}, Lcom/android/keyguard/PasswordTextView$CharState;->isCharVisibleForA11y()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget-char v3, v3, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v3, 0x2022

    .line 42
    .line 43
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-object v1
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const v0, 0x7f0b00e0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    .line 17
    .line 18
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 16
    .line 17
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    sub-int/2addr v4, v3

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    if-ge v3, v2, :cond_1

    .line 23
    .line 24
    iget-object v6, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    int-to-float v5, v5

    .line 35
    iget v7, v0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    .line 36
    .line 37
    int-to-float v7, v7

    .line 38
    iget v8, v6, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 39
    .line 40
    mul-float/2addr v7, v8

    .line 41
    add-float/2addr v7, v5

    .line 42
    float-to-int v5, v7

    .line 43
    :cond_0
    int-to-float v5, v5

    .line 44
    int-to-float v7, v4

    .line 45
    iget v6, v6, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 46
    .line 47
    mul-float/2addr v7, v6

    .line 48
    add-float/2addr v7, v5

    .line 49
    float-to-int v5, v7

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    int-to-float v2, v5

    .line 54
    iget v3, v0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    .line 55
    .line 56
    and-int/lit8 v4, v3, 0x7

    .line 57
    .line 58
    const/4 v5, 0x3

    .line 59
    const/4 v6, 0x0

    .line 60
    const/high16 v7, 0x40000000    # 2.0f

    .line 61
    .line 62
    const/4 v8, 0x1

    .line 63
    if-ne v4, v5, :cond_3

    .line 64
    .line 65
    const/high16 v4, 0x800000

    .line 66
    .line 67
    and-int/2addr v3, v4

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getLayoutDirection()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-ne v3, v8, :cond_2

    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingRight()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    sub-int/2addr v3, v4

    .line 85
    int-to-float v3, v3

    .line 86
    sub-float/2addr v3, v2

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingLeft()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    int-to-float v3, v2

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingRight()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    sub-int/2addr v3, v4

    .line 103
    int-to-float v3, v3

    .line 104
    sub-float/2addr v3, v2

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getWidth()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    int-to-float v4, v4

    .line 110
    div-float/2addr v4, v7

    .line 111
    div-float/2addr v2, v7

    .line 112
    sub-float v2, v4, v2

    .line 113
    .line 114
    cmpl-float v4, v2, v6

    .line 115
    .line 116
    if-lez v4, :cond_4

    .line 117
    .line 118
    move v3, v2

    .line 119
    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 130
    .line 131
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 132
    .line 133
    sub-int/2addr v5, v9

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getHeight()I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingBottom()I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    sub-int/2addr v9, v10

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingTop()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    sub-int/2addr v9, v10

    .line 148
    div-int/lit8 v9, v9, 0x2

    .line 149
    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingTop()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    add-int/2addr v10, v9

    .line 155
    int-to-float v9, v10

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingLeft()I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingTop()I

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getWidth()I

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingRight()I

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    sub-int/2addr v12, v13

    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getHeight()I

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingBottom()I

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    sub-int/2addr v13, v14

    .line 182
    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 183
    .line 184
    .line 185
    iget v10, v4, Landroid/graphics/Rect;->right:I

    .line 186
    .line 187
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 188
    .line 189
    sub-int/2addr v10, v4

    .line 190
    int-to-float v4, v10

    .line 191
    const/4 v10, 0x0

    .line 192
    :goto_2
    if-ge v10, v2, :cond_9

    .line 193
    .line 194
    iget-object v11, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    check-cast v11, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 201
    .line 202
    iget v12, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 203
    .line 204
    cmpl-float v13, v12, v6

    .line 205
    .line 206
    if-lez v13, :cond_5

    .line 207
    .line 208
    move v13, v8

    .line 209
    goto :goto_3

    .line 210
    :cond_5
    const/4 v13, 0x0

    .line 211
    :goto_3
    iget v14, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 212
    .line 213
    cmpl-float v14, v14, v6

    .line 214
    .line 215
    if-lez v14, :cond_6

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_6
    const/4 v8, 0x0

    .line 219
    :goto_4
    iget v14, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 220
    .line 221
    mul-float/2addr v14, v4

    .line 222
    iget-object v15, v11, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 223
    .line 224
    if-eqz v13, :cond_7

    .line 225
    .line 226
    int-to-float v13, v5

    .line 227
    div-float v16, v13, v7

    .line 228
    .line 229
    mul-float v16, v16, v12

    .line 230
    .line 231
    add-float v16, v16, v9

    .line 232
    .line 233
    iget v12, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 234
    .line 235
    mul-float/2addr v13, v12

    .line 236
    const v12, 0x3f4ccccd    # 0.8f

    .line 237
    .line 238
    .line 239
    mul-float/2addr v13, v12

    .line 240
    add-float v13, v13, v16

    .line 241
    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 243
    .line 244
    .line 245
    div-float v12, v14, v7

    .line 246
    .line 247
    add-float/2addr v12, v3

    .line 248
    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 249
    .line 250
    .line 251
    iget v12, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 252
    .line 253
    invoke-virtual {v1, v12, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 254
    .line 255
    .line 256
    iget-char v12, v11, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 257
    .line 258
    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    iget-object v13, v15, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    .line 263
    .line 264
    invoke-virtual {v1, v12, v6, v6, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 268
    .line 269
    .line 270
    :cond_7
    if-eqz v8, :cond_8

    .line 271
    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 273
    .line 274
    .line 275
    div-float v8, v14, v7

    .line 276
    .line 277
    add-float/2addr v8, v3

    .line 278
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 279
    .line 280
    .line 281
    iget v8, v15, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    .line 282
    .line 283
    div-int/lit8 v8, v8, 0x2

    .line 284
    .line 285
    int-to-float v8, v8

    .line 286
    iget v12, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 287
    .line 288
    mul-float/2addr v8, v12

    .line 289
    iget-object v12, v15, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    .line 290
    .line 291
    invoke-virtual {v1, v6, v6, v8, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 295
    .line 296
    .line 297
    :cond_8
    iget v8, v15, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    .line 298
    .line 299
    int-to-float v8, v8

    .line 300
    iget v11, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 301
    .line 302
    invoke-static {v8, v11, v14, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    add-int/lit8 v10, v10, 0x1

    .line 307
    .line 308
    const/4 v8, 0x1

    .line 309
    goto :goto_2

    .line 310
    :cond_9
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class p0, Landroid/widget/EditText;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/widget/EditText;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 25
    .line 26
    .line 27
    const/16 p0, 0x10

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public reset(ZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    iput-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/lit8 v3, v2, -0x1

    .line 18
    .line 19
    div-int/lit8 v4, v3, 0x2

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    move v6, v5

    .line 23
    :goto_0
    if-ge v6, v2, :cond_2

    .line 24
    .line 25
    iget-object v7, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    check-cast v7, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    if-gt v6, v4, :cond_0

    .line 36
    .line 37
    mul-int/lit8 v8, v6, 0x2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    sub-int v8, v6, v4

    .line 41
    .line 42
    add-int/lit8 v8, v8, -0x1

    .line 43
    .line 44
    mul-int/lit8 v8, v8, 0x2

    .line 45
    .line 46
    sub-int v8, v3, v8

    .line 47
    .line 48
    :goto_1
    int-to-long v8, v8

    .line 49
    const-wide/16 v10, 0x28

    .line 50
    .line 51
    mul-long/2addr v8, v10

    .line 52
    const-wide/16 v12, 0xc8

    .line 53
    .line 54
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v8

    .line 58
    int-to-long v14, v3

    .line 59
    mul-long/2addr v14, v10

    .line 60
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide v10

    .line 64
    const-wide/16 v12, 0xa0

    .line 65
    .line 66
    add-long/2addr v10, v12

    .line 67
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    .line 68
    .line 69
    .line 70
    iget-object v8, v7, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    .line 71
    .line 72
    iget-object v9, v7, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 73
    .line 74
    invoke-virtual {v9, v8}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    iput-boolean v5, v7, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 78
    .line 79
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    if-nez p1, :cond_3

    .line 83
    .line 84
    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 87
    .line 88
    .line 89
    :cond_3
    if-eqz p2, :cond_4

    .line 90
    .line 91
    move-object v2, v1

    .line 92
    check-cast v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v0, v1, v5, v2, v5}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 99
    .line 100
    .line 101
    :cond_4
    return-void
.end method

.method public final sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/EditText;->isShown()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x10

    .line 20
    .line 21
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    const/4 p1, 0x1

    .line 55
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
