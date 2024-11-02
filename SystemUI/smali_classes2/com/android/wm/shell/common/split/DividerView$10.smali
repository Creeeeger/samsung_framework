.class public final Lcom/android/wm/shell/common/split/DividerView$10;
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
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mDividerRoundedCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const v2, 0x7f071228

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v2, 0x7f071227

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerView;->isVerticalDivision()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$2;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sget-object v0, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$3;

    .line 38
    .line 39
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 42
    .line 43
    iget v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 44
    .line 45
    iget v3, v1, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverBgScaleSize:I

    .line 46
    .line 47
    add-int/2addr v3, v2

    .line 48
    filled-new-array {v2, v3}, [I

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    new-array v3, v2, [F

    .line 62
    .line 63
    fill-array-data v3, :array_0

    .line 64
    .line 65
    .line 66
    const-string/jumbo v4, "scaleX"

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 74
    .line 75
    iget-object v3, v3, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 76
    .line 77
    new-array v2, v2, [F

    .line 78
    .line 79
    fill-array-data v2, :array_1

    .line 80
    .line 81
    .line 82
    const-string/jumbo v4, "scaleY"

    .line 83
    .line 84
    .line 85
    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 90
    .line 91
    iget-object v4, v3, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    iget-object v5, v3, Lcom/android/wm/shell/common/split/DividerView;->mDividerRoundedCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    .line 94
    .line 95
    iget v5, v5, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 96
    .line 97
    iget v3, v3, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverBgScaleSize:I

    .line 98
    .line 99
    add-int/2addr v3, v5

    .line 100
    filled-new-array {v5, v3}, [I

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 108
    .line 109
    iget-object v4, v3, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    .line 110
    .line 111
    iget-object v3, v3, Lcom/android/wm/shell/common/split/DividerView;->mRoundedCornerUpdateListener:Lcom/android/wm/shell/common/split/DividerView$7;

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 117
    .line 118
    iget-object v4, v3, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    .line 119
    .line 120
    iget-object v3, v3, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    .line 121
    .line 122
    filled-new-array {v0, v1, v2, v3}, [Landroid/animation/Animator;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    .line 132
    .line 133
    const-wide/16 v1, 0xc8

    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    .line 141
    .line 142
    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 148
    .line 149
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$8;

    .line 152
    .line 153
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 161
    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$10;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->updateCursorType()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data
.end method
