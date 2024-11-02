.class public final Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final mInvisibleAnim:Landroid/animation/AnimatorSet;

.field public final mVisibleAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    sput-object v0, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 4
    .line 5
    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 6
    .line 7
    sput-object v0, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;IZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    sget-object p4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 11
    .line 12
    new-array v4, v3, [F

    .line 13
    .line 14
    neg-int v5, p3

    .line 15
    int-to-float v5, v5

    .line 16
    aput v5, v4, v2

    .line 17
    .line 18
    aput v0, v4, v1

    .line 19
    .line 20
    invoke-static {p1, p4, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 25
    .line 26
    new-array v5, v3, [F

    .line 27
    .line 28
    aput v0, v5, v2

    .line 29
    .line 30
    int-to-float p3, p3

    .line 31
    aput p3, v5, v1

    .line 32
    .line 33
    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object p4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 39
    .line 40
    new-array v4, v3, [F

    .line 41
    .line 42
    int-to-float v5, p3

    .line 43
    aput v5, v4, v2

    .line 44
    .line 45
    aput v0, v4, v1

    .line 46
    .line 47
    invoke-static {p1, p4, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 52
    .line 53
    new-array v5, v3, [F

    .line 54
    .line 55
    aput v0, v5, v2

    .line 56
    .line 57
    neg-int p3, p3

    .line 58
    int-to-float p3, p3

    .line 59
    aput p3, v5, v1

    .line 60
    .line 61
    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    :goto_0
    sget-object v0, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 66
    .line 67
    invoke-virtual {p4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v1, 0x190

    .line 71
    .line 72
    invoke-virtual {p4, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 79
    .line 80
    .line 81
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 82
    .line 83
    new-array v1, v3, [F

    .line 84
    .line 85
    fill-array-data v1, :array_0

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget-object v1, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    .line 96
    .line 97
    const-wide/16 v4, 0xc8

    .line 98
    .line 99
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 100
    .line 101
    .line 102
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 103
    .line 104
    new-array v3, v3, [F

    .line 105
    .line 106
    fill-array-data v3, :array_1

    .line 107
    .line 108
    .line 109
    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 117
    .line 118
    .line 119
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 120
    .line 121
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->mVisibleAnim:Landroid/animation/AnimatorSet;

    .line 125
    .line 126
    filled-new-array {p4, v0}, [Landroid/animation/Animator;

    .line 127
    .line 128
    .line 129
    move-result-object p4

    .line 130
    invoke-virtual {v1, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 131
    .line 132
    .line 133
    const-wide/16 v3, 0x87

    .line 134
    .line 135
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 136
    .line 137
    .line 138
    new-instance p4, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility$1;

    .line 139
    .line 140
    invoke-direct {p4, p0, p1, p2}, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility$1;-><init>(Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;Landroid/view/View;Landroid/view/View;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 147
    .line 148
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->mInvisibleAnim:Landroid/animation/AnimatorSet;

    .line 152
    .line 153
    filled-new-array {p3, v2}, [Landroid/animation/Animator;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 158
    .line 159
    .line 160
    new-instance p3, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility$2;

    .line 161
    .line 162
    invoke-direct {p3, p0, p2}, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility$2;-><init>(Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
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
        0x0
    .end array-data
.end method
