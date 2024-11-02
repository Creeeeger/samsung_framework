.class public final Lcom/android/systemui/decor/CoverPrivacyDotViewController$scheduleUpdate$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/decor/CoverPrivacyDotViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$scheduleUpdate$1;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

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
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$scheduleUpdate$1;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->applyDelayNextViewState:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->applyDelayNextViewState:Z

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/16 v11, 0xff

    .line 24
    .line 25
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/decor/CoverViewState;->copy$default(Lcom/android/systemui/decor/CoverViewState;ZZZZIILandroid/view/View;Ljava/lang/String;I)Lcom/android/systemui/decor/CoverViewState;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    iget-boolean v0, v2, Lcom/android/systemui/decor/CoverViewState;->viewInitialized:Z

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto/16 :goto_9

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->currentViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 42
    .line 43
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    goto/16 :goto_9

    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->currentViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 52
    .line 53
    iget v0, v0, Lcom/android/systemui/decor/CoverViewState;->rotation:I

    .line 54
    .line 55
    iget v3, v2, Lcom/android/systemui/decor/CoverViewState;->rotation:I

    .line 56
    .line 57
    if-eq v3, v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->updateRotations(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->currentViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 63
    .line 64
    iget v0, v0, Lcom/android/systemui/decor/CoverViewState;->rotation:I

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    if-eq v3, v0, :cond_4

    .line 68
    .line 69
    move v0, v4

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move v0, v1

    .line 72
    :goto_0
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->setCornerSizes(Lcom/android/systemui/decor/CoverViewState;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->currentViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/android/systemui/decor/CoverViewState;->designatedCorner:Landroid/view/View;

    .line 104
    .line 105
    iget-object v3, v2, Lcom/android/systemui/decor/CoverViewState;->designatedCorner:Landroid/view/View;

    .line 106
    .line 107
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget-object v5, v2, Lcom/android/systemui/decor/CoverViewState;->contentDescription:Ljava/lang/String;

    .line 112
    .line 113
    const/high16 v6, 0x3f800000    # 1.0f

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    if-nez v0, :cond_9

    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->currentViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/android/systemui/decor/CoverViewState;->designatedCorner:Landroid/view/View;

    .line 121
    .line 122
    if-nez v0, :cond_6

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    const/4 v8, 0x0

    .line 126
    invoke-virtual {v0, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    if-nez v3, :cond_7

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    :goto_3
    iget-boolean v0, v2, Lcom/android/systemui/decor/CoverViewState;->systemPrivacyEventIsActive:Z

    .line 136
    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    iget-boolean v0, v2, Lcom/android/systemui/decor/CoverViewState;->isDotBlocked:Z

    .line 140
    .line 141
    if-nez v0, :cond_8

    .line 142
    .line 143
    move v0, v4

    .line 144
    goto :goto_4

    .line 145
    :cond_8
    move v0, v1

    .line 146
    :goto_4
    if-eqz v0, :cond_b

    .line 147
    .line 148
    if-eqz v3, :cond_b

    .line 149
    .line 150
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-wide/16 v8, 0x12c

    .line 168
    .line 169
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->currentViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/android/systemui/decor/CoverViewState;->contentDescription:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_b

    .line 186
    .line 187
    if-nez v3, :cond_a

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_a
    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    :cond_b
    :goto_5
    iget-boolean v0, v2, Lcom/android/systemui/decor/CoverViewState;->systemPrivacyEventIsActive:Z

    .line 194
    .line 195
    if-eqz v0, :cond_c

    .line 196
    .line 197
    iget-boolean v0, v2, Lcom/android/systemui/decor/CoverViewState;->isDotBlocked:Z

    .line 198
    .line 199
    if-nez v0, :cond_c

    .line 200
    .line 201
    move v0, v4

    .line 202
    goto :goto_6

    .line 203
    :cond_c
    move v0, v1

    .line 204
    :goto_6
    iget-object v5, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->currentViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 205
    .line 206
    iget-boolean v8, v5, Lcom/android/systemui/decor/CoverViewState;->systemPrivacyEventIsActive:Z

    .line 207
    .line 208
    if-eqz v8, :cond_d

    .line 209
    .line 210
    iget-boolean v5, v5, Lcom/android/systemui/decor/CoverViewState;->isDotBlocked:Z

    .line 211
    .line 212
    if-nez v5, :cond_d

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_d
    move v4, v1

    .line 216
    :goto_7
    if-eq v0, v4, :cond_f

    .line 217
    .line 218
    const-wide/16 v4, 0xa0

    .line 219
    .line 220
    if-eqz v0, :cond_e

    .line 221
    .line 222
    if-eqz v3, :cond_e

    .line 223
    .line 224
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sget-object v1, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 252
    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_e
    if-nez v0, :cond_f

    .line 256
    .line 257
    if-eqz v3, :cond_f

    .line 258
    .line 259
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    sget-object v1, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    new-instance v1, Lcom/android/systemui/decor/CoverPrivacyDotViewController$hideDotView$1;

    .line 281
    .line 282
    invoke-direct {v1, v3}, Lcom/android/systemui/decor/CoverPrivacyDotViewController$hideDotView$1;-><init>(Landroid/view/View;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 290
    .line 291
    .line 292
    :cond_f
    :goto_8
    iput-object v2, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->currentViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 293
    .line 294
    :goto_9
    return-void

    .line 295
    :catchall_0
    move-exception p0

    .line 296
    monitor-exit v0

    .line 297
    throw p0
.end method
