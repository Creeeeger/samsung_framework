.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 12

    .line 1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2$showBlurRunnable$1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2$showBlurRunnable$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2$showBlurRunnable$2;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2$showBlurRunnable$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2$showBlurRunnable$3;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2$showBlurRunnable$3;

    .line 26
    .line 27
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 35
    .line 36
    if-nez p0, :cond_3

    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    new-array v3, v2, [F

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/4 v5, 0x0

    .line 61
    aput v4, v3, v5

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    const/high16 v6, 0x3f800000    # 1.0f

    .line 65
    .line 66
    aput v6, v3, v4

    .line 67
    .line 68
    const-string v7, "alpha"

    .line 69
    .line 70
    invoke-static {p0, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-wide/16 v8, 0xc8

    .line 75
    .line 76
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    .line 78
    .line 79
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    .line 80
    .line 81
    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    .line 86
    .line 87
    new-instance v8, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startShowVolumeExpandAnimation$alphaAnimator$1$1;

    .line 88
    .line 89
    invoke-direct {v8, p0, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startShowVolumeExpandAnimation$alphaAnimator$1$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    .line 94
    .line 95
    new-array v8, v2, [F

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    aput v9, v8, v5

    .line 102
    .line 103
    aput v6, v8, v4

    .line 104
    .line 105
    const-string/jumbo v9, "scaleX"

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    new-instance v9, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startShowVolumeExpandAnimation$scaleAnimator$1$1;

    .line 113
    .line 114
    invoke-direct {v9, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startShowVolumeExpandAnimation$scaleAnimator$1$1;-><init>(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    .line 119
    .line 120
    const-wide/16 v9, 0x190

    .line 121
    .line 122
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 123
    .line 124
    .line 125
    const v9, 0x3e6147ae    # 0.22f

    .line 126
    .line 127
    .line 128
    const/high16 v10, 0x3e800000    # 0.25f

    .line 129
    .line 130
    const/4 v11, 0x0

    .line 131
    invoke-static {v9, v10, v11, v6, v8}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 132
    .line 133
    .line 134
    const v6, 0x7f0a0d1c

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 142
    .line 143
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 144
    .line 145
    .line 146
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 151
    .line 152
    .line 153
    filled-new-array {v8}, [Landroid/animation/Animator;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 158
    .line 159
    .line 160
    new-array v3, v4, [Landroid/animation/Animator;

    .line 161
    .line 162
    new-array v8, v2, [F

    .line 163
    .line 164
    iget-object v9, v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 165
    .line 166
    if-nez v9, :cond_4

    .line 167
    .line 168
    const/4 v9, 0x0

    .line 169
    :cond_4
    const v10, 0x7f071295

    .line 170
    .line 171
    .line 172
    invoke-static {v10, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    aput v9, v8, v5

    .line 177
    .line 178
    aput v11, v8, v4

    .line 179
    .line 180
    const-string/jumbo v4, "translationY"

    .line 181
    .line 182
    .line 183
    invoke-static {p0, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    const-wide/16 v8, 0x190

    .line 188
    .line 189
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 190
    .line 191
    .line 192
    sget-object v8, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->TITLE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 193
    .line 194
    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 195
    .line 196
    .line 197
    new-array v2, v2, [F

    .line 198
    .line 199
    fill-array-data v2, :array_0

    .line 200
    .line 201
    .line 202
    invoke-static {p0, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    const-wide/16 v7, 0xc8

    .line 207
    .line 208
    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 209
    .line 210
    .line 211
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 212
    .line 213
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    .line 218
    .line 219
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 220
    .line 221
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 222
    .line 223
    .line 224
    filled-new-array {v4}, [Landroid/animation/Animator;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 229
    .line 230
    .line 231
    filled-new-array {p0}, [Landroid/animation/Animator;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 236
    .line 237
    .line 238
    const-wide/16 v7, 0x32

    .line 239
    .line 240
    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 241
    .line 242
    .line 243
    aput-object v2, v3, v5

    .line 244
    .line 245
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 246
    .line 247
    .line 248
    const-wide/16 v2, 0xfa

    .line 249
    .line 250
    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 251
    .line 252
    .line 253
    new-instance p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startShowVolumeExpandAnimation$1$1;

    .line 254
    .line 255
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startShowVolumeExpandAnimation$1$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;Ljava/lang/Runnable;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 262
    .line 263
    .line 264
    if-nez p1, :cond_5

    .line 265
    .line 266
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    .line 267
    .line 268
    if-eqz p0, :cond_5

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 271
    .line 272
    .line 273
    :cond_5
    return-void

    .line 274
    nop

    .line 275
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
