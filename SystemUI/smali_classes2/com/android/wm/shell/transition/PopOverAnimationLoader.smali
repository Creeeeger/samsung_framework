.class public final Lcom/android/wm/shell/transition/PopOverAnimationLoader;
.super Lcom/android/wm/shell/transition/AnimationLoader;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final POP_OVER_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final POP_OVER_SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 9
    .line 10
    const v1, 0x3ecccccd    # 0.4f

    .line 11
    .line 12
    .line 13
    const v2, 0x3f19999a    # 0.6f

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/high16 v4, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 23
    .line 24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 25
    .line 26
    const v1, 0x3ea8f5c3    # 0.33f

    .line 27
    .line 28
    .line 29
    const v2, 0x3f2b851f    # 0.67f

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/AnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsPopOverAnimationNeeded:Z

    .line 4
    .line 5
    return p0
.end method

.method public final loadAnimationIfPossible()V
    .locals 12

    .line 1
    new-instance v0, Landroid/view/DisplayInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/graphics/Rect;

    .line 24
    .line 25
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 26
    .line 27
    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    .line 32
    .line 33
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    int-to-float v2, v2

    .line 41
    const/high16 v4, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr v2, v4

    .line 44
    add-float v10, v2, v0

    .line 45
    .line 46
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    int-to-float v0, v0

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    int-to-float v1, v1

    .line 54
    div-float/2addr v1, v4

    .line 55
    add-float v11, v1, v0

    .line 56
    .line 57
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 58
    .line 59
    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    if-eq v1, v2, :cond_0

    .line 66
    .line 67
    const/4 v4, 0x3

    .line 68
    if-ne v1, v4, :cond_1

    .line 69
    .line 70
    :cond_0
    move v3, v2

    .line 71
    :cond_1
    sget-object v1, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    const/high16 v4, 0x3f800000    # 1.0f

    .line 75
    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    iget-boolean v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 79
    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    .line 83
    .line 84
    invoke-direct {v3, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    .line 89
    .line 90
    invoke-direct {v3, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isActivityTypeHome()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    iget-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 103
    .line 104
    if-nez v1, :cond_3

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mChange:Landroid/window/TransitionInfo$Change;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    const/4 v2, 0x2

    .line 113
    if-ne v1, v2, :cond_3

    .line 114
    .line 115
    const-wide/16 v1, 0x50

    .line 116
    .line 117
    invoke-virtual {v3, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    const-wide/16 v1, 0x96

    .line 122
    .line 123
    invoke-virtual {v3, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 124
    .line 125
    .line 126
    iget-boolean v4, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 127
    .line 128
    if-eqz v4, :cond_4

    .line 129
    .line 130
    const-wide/16 v1, 0x0

    .line 131
    .line 132
    :cond_4
    invoke-virtual {v3, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 133
    .line 134
    .line 135
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 136
    .line 137
    .line 138
    iget-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 139
    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .line 143
    .line 144
    const v6, 0x3f733333    # 0.95f

    .line 145
    .line 146
    .line 147
    const/high16 v7, 0x3f800000    # 1.0f

    .line 148
    .line 149
    const v8, 0x3f733333    # 0.95f

    .line 150
    .line 151
    .line 152
    const/high16 v9, 0x3f800000    # 1.0f

    .line 153
    .line 154
    move-object v5, v1

    .line 155
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 156
    .line 157
    .line 158
    sget-object v2, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 161
    .line 162
    .line 163
    const-wide/16 v2, 0x15e

    .line 164
    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isClosingTransitionType()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_6

    .line 177
    .line 178
    iget-boolean v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 179
    .line 180
    if-nez v3, :cond_6

    .line 181
    .line 182
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    .line 183
    .line 184
    invoke-direct {v3, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    .line 189
    .line 190
    const-wide/16 v1, 0xc8

    .line 191
    .line 192
    invoke-virtual {v3, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 196
    .line 197
    .line 198
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    .line 199
    .line 200
    const/high16 v6, 0x3f800000    # 1.0f

    .line 201
    .line 202
    const v7, 0x3f733333    # 0.95f

    .line 203
    .line 204
    .line 205
    const/high16 v8, 0x3f800000    # 1.0f

    .line 206
    .line 207
    const v9, 0x3f733333    # 0.95f

    .line 208
    .line 209
    .line 210
    move-object v5, v3

    .line 211
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 212
    .line 213
    .line 214
    sget-object v4, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 215
    .line 216
    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 223
    .line 224
    .line 225
    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "PopOverAnimationLoader"

    .line 2
    .line 3
    return-object p0
.end method
