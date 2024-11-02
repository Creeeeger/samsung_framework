.class public final Lcom/android/wm/shell/common/split/DividerView$11;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerView;->isVerticalDivision()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$2;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$3;

    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 17
    .line 18
    iget v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 19
    .line 20
    iget v3, v1, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverBgScaleSize:I

    .line 21
    .line 22
    add-int/2addr v3, v2

    .line 23
    filled-new-array {v3, v2}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    new-array v3, v2, [F

    .line 37
    .line 38
    fill-array-data v3, :array_0

    .line 39
    .line 40
    .line 41
    const-string/jumbo v4, "scaleX"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 49
    .line 50
    iget-object v3, v3, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 51
    .line 52
    new-array v2, v2, [F

    .line 53
    .line 54
    fill-array-data v2, :array_1

    .line 55
    .line 56
    .line 57
    const-string/jumbo v4, "scaleY"

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 65
    .line 66
    iget-object v4, v3, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/android/wm/shell/common/split/DividerView;->mDividerRoundedCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    .line 69
    .line 70
    iget v5, v3, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    .line 77
    .line 78
    if-eqz v6, :cond_1

    .line 79
    .line 80
    const v6, 0x7f071228

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const v6, 0x7f071227

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    filled-new-array {v5, v3}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 99
    .line 100
    iget-object v4, v3, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    iget-object v3, v3, Lcom/android/wm/shell/common/split/DividerView;->mRoundedCornerUpdateListener:Lcom/android/wm/shell/common/split/DividerView$7;

    .line 103
    .line 104
    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 108
    .line 109
    iget-object v4, v3, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 110
    .line 111
    iget-object v3, v3, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    .line 112
    .line 113
    filled-new-array {v0, v1, v2, v3}, [Landroid/animation/Animator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 123
    .line 124
    const-wide/16 v1, 0xc8

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 132
    .line 133
    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 139
    .line 140
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$9;

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :array_0
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method
