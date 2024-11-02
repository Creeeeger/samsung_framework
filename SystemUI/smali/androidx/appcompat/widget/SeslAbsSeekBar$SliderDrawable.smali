.class public final Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAlpha:I

.field public mColor:I

.field public mColorStateList:Landroid/content/res/ColorStateList;

.field public mIsStateChanged:Z

.field public final mIsVertical:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public mPressedAnimator:Landroid/animation/ValueAnimator;

.field public mRadius:F

.field public mReleasedAnimator:Landroid/animation/ValueAnimator;

.field public final mSliderMaxWidth:F

.field public final mSliderMinWidth:F

.field public final mState:Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

.field public final synthetic this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V
    .locals 5

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    const/16 v1, 0xff

    .line 5
    iput v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    .line 6
    new-instance v1, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;Landroidx/appcompat/widget/SeslAbsSeekBar$1;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mState:Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    .line 7
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 9
    iput-object p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 10
    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    .line 11
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    .line 14
    iput p3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, p2, p1

    .line 15
    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    .line 16
    iput-boolean p5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsVertical:Z

    const/4 p1, 0x2

    new-array p4, p1, [F

    aput p2, p4, v0

    const/4 p5, 0x1

    aput p3, p4, p5

    .line 17
    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p4

    iput-object p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    .line 18
    invoke-virtual {p4, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    iget-object p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    iget-object p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$1;

    invoke-direct {v4, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$1;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;)V

    invoke-virtual {p4, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p1, [F

    aput p3, p1, v0

    aput p2, p1, p5

    .line 21
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    .line 22
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$2;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$2;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 8
    .line 9
    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    .line 10
    .line 11
    ushr-int/lit8 v3, v2, 0x7

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    mul-int/2addr v2, v0

    .line 15
    ushr-int/lit8 v2, v2, 0x8

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsVertical:Z

    .line 24
    .line 25
    const/high16 v2, 0x40000000    # 2.0f

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v1, v3

    .line 42
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sub-int/2addr v1, v3

    .line 49
    int-to-float v1, v1

    .line 50
    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    .line 51
    .line 52
    sub-float v6, v1, v4

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    int-to-float v1, v1

    .line 61
    div-float v5, v1, v2

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    int-to-float v1, v1

    .line 70
    div-float v7, v1, v2

    .line 71
    .line 72
    iget-object v8, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 73
    .line 74
    move-object v3, p1

    .line 75
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    .line 86
    .line 87
    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    sub-int/2addr v1, v3

    .line 92
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    .line 93
    .line 94
    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    sub-int/2addr v1, v3

    .line 99
    int-to-float v1, v1

    .line 100
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    sub-int/2addr v3, v4

    .line 113
    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    sub-int/2addr v3, v4

    .line 120
    int-to-float v3, v3

    .line 121
    iget v8, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    .line 122
    .line 123
    sub-float v6, v3, v8

    .line 124
    .line 125
    div-float v7, v1, v2

    .line 126
    .line 127
    iget-object v9, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 128
    .line 129
    move-object v4, p1

    .line 130
    move v5, v7

    .line 131
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mState:Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    .line 2
    .line 3
    float-to-int p0, p0

    .line 4
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    .line 2
    .line 3
    float-to-int p0, p0

    .line 4
    return p0
.end method

.method public final getOpacity()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x2

    .line 16
    return p0

    .line 17
    :cond_0
    const/16 v0, 0xff

    .line 18
    .line 19
    if-ne p0, v0, :cond_1

    .line 20
    .line 21
    const/4 p0, -0x1

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, -0x3

    .line 24
    return p0
.end method

.method public final isStateful()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onStateChange([I)Z
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    .line 8
    .line 9
    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    .line 14
    .line 15
    if-eq v2, v1, :cond_0

    .line 16
    .line 17
    iput v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 25
    .line 26
    .line 27
    :cond_0
    array-length v1, p1

    .line 28
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    move v4, v3

    .line 31
    move v5, v4

    .line 32
    :goto_0
    const/4 v6, 0x1

    .line 33
    if-ge v3, v1, :cond_3

    .line 34
    .line 35
    aget v7, p1, v3

    .line 36
    .line 37
    const v8, 0x101009e

    .line 38
    .line 39
    .line 40
    if-ne v7, v8, :cond_1

    .line 41
    .line 42
    move v4, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const v8, 0x10100a7

    .line 45
    .line 46
    .line 47
    if-ne v7, v8, :cond_2

    .line 48
    .line 49
    move v5, v6

    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    if-eqz v4, :cond_4

    .line 54
    .line 55
    if-eqz v5, :cond_4

    .line 56
    .line 57
    move p1, v6

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move p1, v2

    .line 60
    :goto_2
    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    .line 61
    .line 62
    if-eq v1, p1, :cond_a

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    if-eqz p1, :cond_7

    .line 66
    .line 67
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_5

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 87
    .line 88
    .line 89
    :cond_6
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    .line 90
    .line 91
    new-array v1, v1, [F

    .line 92
    .line 93
    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    .line 94
    .line 95
    aput v4, v1, v2

    .line 96
    .line 97
    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    .line 98
    .line 99
    aput v2, v1, v6

    .line 100
    .line 101
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_7
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_8

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_8
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_9

    .line 126
    .line 127
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 130
    .line 131
    .line 132
    :cond_9
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    .line 133
    .line 134
    new-array v1, v1, [F

    .line 135
    .line 136
    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    .line 137
    .line 138
    aput v4, v1, v2

    .line 139
    .line 140
    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    .line 141
    .line 142
    aput v2, v1, v6

    .line 143
    .line 144
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 150
    .line 151
    .line 152
    :goto_3
    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    .line 153
    .line 154
    :cond_a
    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
