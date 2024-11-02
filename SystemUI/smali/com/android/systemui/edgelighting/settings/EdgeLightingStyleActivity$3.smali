.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const p2, 0x7f0a060a

    .line 15
    .line 16
    .line 17
    if-ne p1, p2, :cond_4

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p2, "empty view clicked"

    .line 24
    .line 25
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 29
    .line 30
    iget-object p2, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-boolean v1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout(I)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_1
    if-nez p2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->playEdgeLightingByHandler()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 49
    .line 50
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    .line 51
    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 68
    .line 69
    :cond_3
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 70
    .line 71
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const p2, 0x7f071158

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    int-to-float p1, p1

    .line 88
    iget-object p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    const/4 v1, 0x2

    .line 91
    new-array v2, v1, [F

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    aput v3, v2, v0

    .line 95
    .line 96
    neg-float p1, p1

    .line 97
    const/4 v4, 0x1

    .line 98
    aput p1, v2, v4

    .line 99
    .line 100
    const-string/jumbo v5, "translationY"

    .line 101
    .line 102
    .line 103
    invoke-static {p2, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    const-wide/16 v6, 0x12c

    .line 108
    .line 109
    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 113
    .line 114
    new-array v8, v1, [F

    .line 115
    .line 116
    fill-array-data v8, :array_0

    .line 117
    .line 118
    .line 119
    const-string v9, "alpha"

    .line 120
    .line 121
    invoke-static {v2, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-wide/16 v10, 0x96

    .line 126
    .line 127
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 128
    .line 129
    .line 130
    iget-object v8, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    new-array v12, v1, [F

    .line 133
    .line 134
    aput v3, v12, v0

    .line 135
    .line 136
    aput p1, v12, v4

    .line 137
    .line 138
    invoke-static {v8, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    new-array v1, v1, [F

    .line 148
    .line 149
    fill-array-data v1, :array_1

    .line 150
    .line 151
    .line 152
    invoke-static {v3, v9, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    .line 158
    .line 159
    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 160
    .line 161
    new-instance v5, Landroid/view/animation/PathInterpolator;

    .line 162
    .line 163
    const v6, 0x3e2e147b    # 0.17f

    .line 164
    .line 165
    .line 166
    const v7, 0x3e4ccccd    # 0.2f

    .line 167
    .line 168
    .line 169
    const/high16 v8, 0x3f800000    # 1.0f

    .line 170
    .line 171
    invoke-direct {v5, v6, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 178
    .line 179
    filled-new-array {p1, p2, v1, v2}, [Landroid/animation/Animator;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 187
    .line 188
    new-instance p2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$5;

    .line 189
    .line 190
    invoke-direct {p2, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$5;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 199
    .line 200
    .line 201
    iput-boolean v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 204
    .line 205
    const/16 p1, 0x8

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    :cond_4
    :goto_0
    return v0

    .line 211
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
