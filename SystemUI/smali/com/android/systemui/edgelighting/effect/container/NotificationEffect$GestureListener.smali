.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v1, "onDoubleTap : "

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    float-to-int v2, v2

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    float-to-int v3, v3

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 37
    .line 38
    iget-boolean v2, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->launchPendingIntent()V

    .line 43
    .line 44
    .line 45
    return v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isDoubleTapToWakeUpEnabled(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    const-string/jumbo p1, "wakeUpDevice by double touch to root view"

    .line 75
    .line 76
    .line 77
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    return p0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    float-to-int v0, v0

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    float-to-int p1, p1

    .line 26
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_1
    return v1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_b

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    .line 16
    .line 17
    if-eqz v0, :cond_b

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sub-float/2addr v0, v1

    .line 28
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sub-float/2addr v1, v2

    .line 41
    const/high16 v2, 0x43160000    # 150.0f

    .line 42
    .line 43
    cmpl-float v3, v1, v2

    .line 44
    .line 45
    const-string v4, "alpha"

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/high16 v6, 0x43c80000    # 400.0f

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x1

    .line 52
    if-lez v3, :cond_3

    .line 53
    .line 54
    cmpg-float v3, v0, v6

    .line 55
    .line 56
    if-gez v3, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    const-string v1, "Fling down "

    .line 63
    .line 64
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "*****mSwipeDownDisabledForEdgeLightingPlus = "

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 79
    .line 80
    iget-boolean v2, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSwipeDownDisabledForEdgeLightingPlus:Z

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 93
    .line 94
    iget-boolean v1, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSwipeDownDisabledForEdgeLightingPlus:Z

    .line 95
    .line 96
    if-nez v1, :cond_b

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    .line 99
    .line 100
    if-eqz v0, :cond_b

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_b

    .line 107
    .line 108
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_b

    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_0

    .line 121
    .line 122
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 125
    .line 126
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 127
    .line 128
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 129
    .line 130
    :cond_0
    sget-object p1, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 131
    .line 132
    const-string p2, "SM-F90"

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_1

    .line 139
    .line 140
    move p1, v7

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    :goto_0
    if-eqz p1, :cond_2

    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->launchPendingIntent()V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_1

    .line 154
    .line 155
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 161
    .line 162
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 163
    .line 164
    .line 165
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 166
    .line 167
    new-array p3, v8, [F

    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    .line 170
    .line 171
    .line 172
    move-result p4

    .line 173
    div-int/lit8 p4, p4, 0x2

    .line 174
    .line 175
    neg-int p4, p4

    .line 176
    int-to-float p4, p4

    .line 177
    aput p4, p3, v7

    .line 178
    .line 179
    const-string/jumbo p4, "translationY"

    .line 180
    .line 181
    .line 182
    invoke-static {p2, p4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    iget-object p3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 187
    .line 188
    new-array v0, v8, [F

    .line 189
    .line 190
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHeight()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    div-int/lit8 v1, v1, 0x2

    .line 195
    .line 196
    int-to-float v1, v1

    .line 197
    aput v1, v0, v7

    .line 198
    .line 199
    invoke-static {p3, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    iget-object p4, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 204
    .line 205
    new-array v0, v8, [F

    .line 206
    .line 207
    const/high16 v1, 0x3f800000    # 1.0f

    .line 208
    .line 209
    aput v1, v0, v7

    .line 210
    .line 211
    invoke-static {p4, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 212
    .line 213
    .line 214
    move-result-object p4

    .line 215
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 216
    .line 217
    new-array v2, v8, [F

    .line 218
    .line 219
    aput v5, v2, v7

    .line 220
    .line 221
    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    const v2, 0x3ea8f5c3    # 0.33f

    .line 226
    .line 227
    .line 228
    const v3, 0x3ecccccd    # 0.4f

    .line 229
    .line 230
    .line 231
    invoke-static {v2, v5, v3, v1, p2}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 232
    .line 233
    .line 234
    const-wide/16 v6, 0xc8

    .line 235
    .line 236
    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 237
    .line 238
    .line 239
    invoke-static {v2, v5, v3, v1, p2}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 243
    .line 244
    .line 245
    const-wide/16 v6, 0x64

    .line 246
    .line 247
    invoke-virtual {p4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 248
    .line 249
    .line 250
    invoke-static {v2, v5, v3, v1, p3}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 251
    .line 252
    .line 253
    const-wide/16 v6, 0x12c

    .line 254
    .line 255
    invoke-virtual {p3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 256
    .line 257
    .line 258
    invoke-static {v2, v5, v3, v1, v0}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 262
    .line 263
    .line 264
    filled-new-array {p3, v0}, [Landroid/animation/Animator;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 269
    .line 270
    .line 271
    new-instance p2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$5;

    .line 272
    .line 273
    invoke-direct {p2, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$5;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 280
    .line 281
    .line 282
    :goto_1
    return v8

    .line 283
    :cond_3
    cmpl-float v2, v0, v2

    .line 284
    .line 285
    if-lez v2, :cond_8

    .line 286
    .line 287
    cmpg-float v2, v1, v6

    .line 288
    .line 289
    if-gez v2, :cond_8

    .line 290
    .line 291
    iget-object p3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 292
    .line 293
    iget-object p3, p3, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 294
    .line 295
    const-string p4, "Fling Side "

    .line 296
    .line 297
    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    sub-float/2addr p2, p1

    .line 309
    cmpg-float p1, p2, v5

    .line 310
    .line 311
    if-gez p1, :cond_4

    .line 312
    .line 313
    move p1, v8

    .line 314
    goto :goto_2

    .line 315
    :cond_4
    move p1, v7

    .line 316
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 317
    .line 318
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    .line 319
    .line 320
    .line 321
    move-result p3

    .line 322
    if-eqz p3, :cond_5

    .line 323
    .line 324
    iget-object p2, p2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 325
    .line 326
    iget-object p2, p2, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 327
    .line 328
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 329
    .line 330
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 331
    .line 332
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 333
    .line 334
    if-eqz p1, :cond_6

    .line 335
    .line 336
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 337
    .line 338
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    neg-int p1, p1

    .line 343
    goto :goto_3

    .line 344
    :cond_6
    iget p1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 345
    .line 346
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 347
    .line 348
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLeft()I

    .line 349
    .line 350
    .line 351
    move-result p2

    .line 352
    sub-int/2addr p1, p2

    .line 353
    :goto_3
    int-to-float p1, p1

    .line 354
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 355
    .line 356
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    new-array p3, v8, [F

    .line 360
    .line 361
    aput p1, p3, v7

    .line 362
    .line 363
    const-string/jumbo p1, "translationX"

    .line 364
    .line 365
    .line 366
    invoke-static {p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    new-array p3, v8, [F

    .line 371
    .line 372
    const/high16 p4, 0x3f000000    # 0.5f

    .line 373
    .line 374
    aput p4, p3, v7

    .line 375
    .line 376
    invoke-static {p2, v4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    new-instance p3, Landroid/animation/AnimatorSet;

    .line 381
    .line 382
    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 383
    .line 384
    .line 385
    const p4, 0x3f051eb8    # 0.52f

    .line 386
    .line 387
    .line 388
    const v0, 0x3fbc28f6    # 1.47f

    .line 389
    .line 390
    .line 391
    const v1, 0x3e2e147b    # 0.17f

    .line 392
    .line 393
    .line 394
    const v2, 0x3f2b851f    # 0.67f

    .line 395
    .line 396
    .line 397
    invoke-static {v1, v2, p4, v0, p1}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 398
    .line 399
    .line 400
    const-wide/16 v0, 0x258

    .line 401
    .line 402
    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 403
    .line 404
    .line 405
    filled-new-array {p1, p2}, [Landroid/animation/Animator;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 413
    .line 414
    .line 415
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 416
    .line 417
    if-eqz p0, :cond_7

    .line 418
    .line 419
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 420
    .line 421
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 422
    .line 423
    if-eqz p0, :cond_7

    .line 424
    .line 425
    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onSwipeToastInWindow()V

    .line 426
    .line 427
    .line 428
    :cond_7
    return v8

    .line 429
    :cond_8
    const/high16 v2, -0x3d740000    # -70.0f

    .line 430
    .line 431
    cmpg-float v2, v1, v2

    .line 432
    .line 433
    if-gez v2, :cond_a

    .line 434
    .line 435
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 436
    .line 437
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 438
    .line 439
    const-string v1, "Fling up "

    .line 440
    .line 441
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 445
    .line 446
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-eqz v1, :cond_9

    .line 451
    .line 452
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 453
    .line 454
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 455
    .line 456
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 457
    .line 458
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 459
    .line 460
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 461
    .line 462
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->onFlickUpAnimation()V

    .line 463
    .line 464
    .line 465
    goto :goto_4

    .line 466
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 467
    .line 468
    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 469
    .line 470
    const-string/jumbo v3, "onFling dx : "

    .line 471
    .line 472
    .line 473
    const-string v4, " dy : "

    .line 474
    .line 475
    const-string/jumbo v5, "velocityX "

    .line 476
    .line 477
    .line 478
    invoke-static {v3, v0, v4, v1, v5}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v1, " velocityY : "

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    :cond_b
    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 501
    .line 502
    .line 503
    move-result p0

    .line 504
    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v1, "onLongPress"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    float-to-int v1, v1

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    float-to-int p1, p1

    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 48
    .line 49
    iget-boolean v0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_0

    .line 62
    .line 63
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->-$$Nest$mlaunchPopupWindow(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;Z)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v1, "onSingleTapConfirmed : "

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "*****mSingleTapDisabledForEdgeLightingPlus = "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 23
    .line 24
    iget-boolean v2, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSingleTapDisabledForEdgeLightingPlus:Z

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-boolean v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSingleTapDisabledForEdgeLightingPlus:Z

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    float-to-int v1, v1

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    float-to-int v2, v2

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 77
    .line 78
    iget-boolean v1, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->launchPendingIntent()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    const-string v1, " Ignore single Tap in screen off"

    .line 91
    .line 92
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    return p0
.end method
