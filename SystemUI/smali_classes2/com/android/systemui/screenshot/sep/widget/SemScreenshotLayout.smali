.class public Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final CUSTOM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final SINEINOUT70:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

.field public mCallback:Lcom/android/systemui/screenshot/ScreenshotController$4;

.field public mScreenDegrees:F

.field public mScreenshotImageView:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const v1, 0x3f333333    # 0.7f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->CUSTOM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 13
    .line 14
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 15
    .line 16
    const v1, 0x3ea8f5c3    # 0.33f

    .line 17
    .line 18
    .line 19
    const v4, 0x3e99999a    # 0.3f

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->SINEINOUT70:Landroid/view/animation/PathInterpolator;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    const-string p1, "Screenshot"

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    const-string p1, "Screenshot"

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    const-class p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    const-string p1, "Screenshot"

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addCaptureEffectViewInLayout(Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isB5ScreenEffect()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "isB5ScreenEffect: "

    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    .line 38
    .line 39
    iget v1, p1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->setDegree(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isLetterBoxHide()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-boolean v0, p1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 58
    :goto_2
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isB5CoverScreenInReverseMode()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    const/4 v0, -0x1

    .line 69
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getScreenshotEffectRect()Landroid/graphics/Rect;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .line 89
    .line 90
    const/16 p1, 0x50

    .line 91
    .line 92
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    .line 94
    move-object p1, v0

    .line 95
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final startAnimation(FF)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const v4, 0x7f0703c6

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const v5, 0x7f0703c4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    div-int/lit8 v6, v4, 0x2

    .line 26
    .line 27
    sub-int/2addr v5, v6

    .line 28
    const v7, 0x7f0703c5

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    sub-int/2addr v3, v6

    .line 36
    mul-int/lit8 v6, v4, 0x2

    .line 37
    .line 38
    int-to-float v6, v6

    .line 39
    sub-float v7, v1, v6

    .line 40
    .line 41
    div-float v7, v1, v7

    .line 42
    .line 43
    sub-float v6, v2, v6

    .line 44
    .line 45
    div-float v6, v2, v6

    .line 46
    .line 47
    iget-object v8, v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v9, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v10, "setupAndStartAnimation: screenWidth:"

    .line 52
    .line 53
    .line 54
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, " screenHeight:"

    .line 61
    .line 62
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    .line 76
    .line 77
    if-nez v1, :cond_0

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    .line 80
    .line 81
    const-string v1, "mAnimationView is null"

    .line 82
    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    iget v2, v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenDegrees:F

    .line 88
    .line 89
    const/4 v15, 0x0

    .line 90
    cmpl-float v8, v2, v15

    .line 91
    .line 92
    if-eqz v8, :cond_2

    .line 93
    .line 94
    const/high16 v8, 0x43340000    # 180.0f

    .line 95
    .line 96
    cmpl-float v2, v2, v8

    .line 97
    .line 98
    if-nez v2, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v1, v4, v3, v5}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->setEffectParams(III)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    :goto_0
    invoke-virtual {v1, v4, v5, v3}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->setEffectParams(III)V

    .line 106
    .line 107
    .line 108
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    .line 109
    .line 110
    const/4 v2, 0x4

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .line 115
    .line 116
    const/high16 v10, 0x3f800000    # 1.0f

    .line 117
    .line 118
    const/high16 v12, 0x3f800000    # 1.0f

    .line 119
    .line 120
    const/4 v13, 0x1

    .line 121
    const/high16 v14, 0x3f000000    # 0.5f

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    const/high16 v16, 0x3f000000    # 0.5f

    .line 125
    .line 126
    move-object v8, v1

    .line 127
    move v9, v7

    .line 128
    move v11, v6

    .line 129
    move v3, v15

    .line 130
    move v15, v2

    .line 131
    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 132
    .line 133
    .line 134
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 135
    .line 136
    const/high16 v9, 0x3f800000    # 1.0f

    .line 137
    .line 138
    const/high16 v11, 0x3f800000    # 1.0f

    .line 139
    .line 140
    const/4 v15, 0x1

    .line 141
    move-object v8, v2

    .line 142
    move v10, v7

    .line 143
    move v12, v6

    .line 144
    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 145
    .line 146
    .line 147
    sget-object v4, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->SINEINOUT70:Landroid/view/animation/PathInterpolator;

    .line 148
    .line 149
    invoke-virtual {v1, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 150
    .line 151
    .line 152
    const-wide/16 v4, 0x96

    .line 153
    .line 154
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 155
    .line 156
    .line 157
    sget-object v6, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->CUSTOM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 158
    .line 159
    invoke-virtual {v2, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 160
    .line 161
    .line 162
    const-wide/16 v6, 0xa7

    .line 163
    .line 164
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 165
    .line 166
    .line 167
    const-wide/16 v8, 0xd8

    .line 168
    .line 169
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 170
    .line 171
    .line 172
    new-instance v8, Landroid/view/animation/AnimationSet;

    .line 173
    .line 174
    const/4 v9, 0x0

    .line 175
    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;

    .line 185
    .line 186
    invoke-direct {v1, v0}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;-><init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 193
    .line 194
    const/high16 v2, 0x3f800000    # 1.0f

    .line 195
    .line 196
    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 197
    .line 198
    .line 199
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .line 200
    .line 201
    invoke-direct {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 208
    .line 209
    .line 210
    const-wide/16 v2, 0x42

    .line 211
    .line 212
    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 213
    .line 214
    .line 215
    const/4 v2, 0x1

    .line 216
    invoke-virtual {v9, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 217
    .line 218
    .line 219
    new-instance v2, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;

    .line 220
    .line 221
    invoke-direct {v2, v0, v9}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;-><init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;Landroid/view/animation/AlphaAnimation;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;

    .line 228
    .line 229
    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;-><init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 233
    .line 234
    .line 235
    iget-object v2, v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    .line 236
    .line 237
    invoke-virtual {v2, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 243
    .line 244
    .line 245
    return-void
.end method
