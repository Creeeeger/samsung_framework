.class Lcom/android/wm/shell/windowdecor/WindowDecorSlider;
.super Landroid/widget/SeekBar;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimatable:Z

.field public mButtonContainer:Landroid/view/View;

.field public mControllable:Z

.field public final mSetControlDisabledRunnable:Lcom/android/wm/shell/windowdecor/WindowDecorSlider$$ExternalSyntheticLambda0;

.field public mSliderContainer:Landroid/view/View;

.field public final mVisAnimListener:Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;

.field public mVisibilityAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x7f140803

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;

    .line 9
    .line 10
    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;-><init>(Lcom/android/wm/shell/windowdecor/WindowDecorSlider;I)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mVisAnimListener:Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;

    .line 14
    .line 15
    new-instance p2, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/WindowDecorSlider;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSetControlDisabledRunnable:Lcom/android/wm/shell/windowdecor/WindowDecorSlider$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mAnimatable:Z

    .line 23
    .line 24
    const/16 p2, 0x3c

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 27
    .line 28
    .line 29
    const p2, 0x7f08072f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x5

    .line 40
    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object v1, p0, Landroid/widget/SeekBar;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string/jumbo v2, "wallpapertheme_state"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x1

    .line 61
    if-ne v1, v2, :cond_0

    .line 62
    .line 63
    move v0, v2

    .line 64
    :cond_0
    if-eqz v0, :cond_1

    .line 65
    .line 66
    const v1, 0x106038c

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const v1, 0x106038b

    .line 71
    .line 72
    .line 73
    :goto_0
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 82
    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    const v0, 0x106038a

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const v0, 0x1060389

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 98
    .line 99
    .line 100
    const p2, 0x7f130f31

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final onStartTrackingTouch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSliderContainer:Landroid/view/View;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSetControlDisabledRunnable:Lcom/android/wm/shell/windowdecor/WindowDecorSlider$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onStopTrackingTouch()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSliderContainer:Landroid/view/View;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSetControlDisabledRunnable:Lcom/android/wm/shell/windowdecor/WindowDecorSlider$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const-wide/16 v1, 0xbb8

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setControllable(Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mAnimatable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mControllable:Z

    .line 6
    .line 7
    if-eq v0, p1, :cond_4

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mControllable:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mVisAnimListener:Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSliderContainer:Landroid/view/View;

    .line 34
    .line 35
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    new-array v3, v2, [F

    .line 39
    .line 40
    const/high16 v4, 0x3f800000    # 1.0f

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    move v6, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v6, v5

    .line 48
    :goto_0
    const/4 v7, 0x0

    .line 49
    aput v6, v3, v7

    .line 50
    .line 51
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide/16 v8, 0x96

    .line 56
    .line 57
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mButtonContainer:Landroid/view/View;

    .line 66
    .line 67
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 68
    .line 69
    new-array v2, v2, [F

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    move v4, v5

    .line 74
    :cond_2
    aput v4, v2, v7

    .line 75
    .line 76
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 81
    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSliderContainer:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mButtonContainer:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 94
    .line 95
    .line 96
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 108
    .line 109
    .line 110
    :cond_4
    return-void
.end method
