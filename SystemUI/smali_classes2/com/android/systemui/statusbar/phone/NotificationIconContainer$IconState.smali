.class public final Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public clampedAppearAmount:F

.field public iconAppearAmount:F

.field public iconColor:I

.field public justAdded:Z

.field public justReplaced:Z

.field public final mCannedAnimationEndListener:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

.field public final mView:Landroid/view/View;

.field public needsCannedAnimation:Z

.field public noAnimations:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public visibleState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 9
    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    .line 19
    .line 20
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mCannedAnimationEndListener:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final applyToView(Landroid/view/View;)V
    .locals 14

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1d

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 8
    .line 9
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 10
    .line 11
    const/4 v8, 0x1

    .line 12
    const/4 v9, 0x2

    .line 13
    if-ne v2, v9, :cond_0

    .line 14
    .line 15
    iget v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 16
    .line 17
    if-eq v3, v8, :cond_1

    .line 18
    .line 19
    :cond_0
    if-ne v2, v8, :cond_2

    .line 20
    .line 21
    iget v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 22
    .line 23
    if-ne v3, v9, :cond_2

    .line 24
    .line 25
    :cond_1
    move v3, v8

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move v3, v1

    .line 28
    :goto_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 29
    .line 30
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 31
    .line 32
    iget-boolean v4, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 33
    .line 34
    if-nez v4, :cond_4

    .line 35
    .line 36
    iget-object v4, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 37
    .line 38
    if-ne v0, v4, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move v4, v1

    .line 42
    goto :goto_2

    .line 43
    :cond_4
    :goto_1
    move v4, v8

    .line 44
    :goto_2
    if-eqz v4, :cond_5

    .line 45
    .line 46
    iget-boolean v4, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 47
    .line 48
    if-nez v4, :cond_5

    .line 49
    .line 50
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 51
    .line 52
    if-nez v4, :cond_5

    .line 53
    .line 54
    if-nez v3, :cond_5

    .line 55
    .line 56
    move v11, v8

    .line 57
    goto :goto_3

    .line 58
    :cond_5
    move v11, v1

    .line 59
    :goto_3
    const/4 v12, 0x0

    .line 60
    if-eqz v11, :cond_16

    .line 61
    .line 62
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 63
    .line 64
    if-nez v3, :cond_7

    .line 65
    .line 66
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 67
    .line 68
    if-eqz v3, :cond_6

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_6
    iget v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 72
    .line 73
    if-eq v2, v3, :cond_8

    .line 74
    .line 75
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_7
    :goto_4
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 82
    .line 83
    if-eqz v2, :cond_8

    .line 84
    .line 85
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    cmpl-float v2, v2, v3

    .line 89
    .line 90
    if-eqz v2, :cond_8

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    const-wide/16 v6, 0x0

    .line 97
    .line 98
    const/4 v3, 0x2

    .line 99
    const/4 v4, 0x0

    .line 100
    move-object v2, v0

    .line 101
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;J)V

    .line 102
    .line 103
    .line 104
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    .line 105
    .line 106
    :goto_5
    move v3, v8

    .line 107
    goto :goto_6

    .line 108
    :cond_8
    move v3, v1

    .line 109
    move-object v2, v12

    .line 110
    :goto_6
    if-nez v3, :cond_a

    .line 111
    .line 112
    iget v4, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 113
    .line 114
    if-ltz v4, :cond_a

    .line 115
    .line 116
    invoke-virtual {v10, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    iget v5, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 121
    .line 122
    if-lt v4, v5, :cond_a

    .line 123
    .line 124
    iget v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 125
    .line 126
    if-ne v4, v9, :cond_9

    .line 127
    .line 128
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 129
    .line 130
    if-eq v4, v9, :cond_a

    .line 131
    .line 132
    :cond_9
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 133
    .line 134
    move v3, v8

    .line 135
    :cond_a
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 136
    .line 137
    const-wide/16 v5, 0x64

    .line 138
    .line 139
    if-eqz v4, :cond_f

    .line 140
    .line 141
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    .line 142
    .line 143
    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    .line 146
    .line 147
    .line 148
    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    .line 149
    .line 150
    iget-object v13, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 151
    .line 152
    invoke-virtual {v4, v13}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 153
    .line 154
    .line 155
    iput-object v12, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 156
    .line 157
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 158
    .line 159
    if-eqz v7, :cond_b

    .line 160
    .line 161
    new-instance v13, Landroid/util/ArrayMap;

    .line 162
    .line 163
    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object v13, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 167
    .line 168
    iget-object v13, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 169
    .line 170
    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 171
    .line 172
    .line 173
    :cond_b
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowsConversation:Z

    .line 174
    .line 175
    if-eqz v7, :cond_c

    .line 176
    .line 177
    sget-object v7, Lcom/android/app/animation/Interpolators;->ICON_OVERSHOT_LESS:Landroid/view/animation/Interpolator;

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_c
    sget-object v7, Lcom/android/app/animation/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 181
    .line 182
    :goto_7
    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 183
    .line 184
    invoke-virtual {v3, v13, v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    .line 185
    .line 186
    .line 187
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mCannedAnimationEndListener:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

    .line 188
    .line 189
    iput-object v7, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 190
    .line 191
    if-eqz v2, :cond_e

    .line 192
    .line 193
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 198
    .line 199
    .line 200
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 201
    .line 202
    if-eqz v2, :cond_e

    .line 203
    .line 204
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 205
    .line 206
    if-nez v4, :cond_d

    .line 207
    .line 208
    new-instance v4, Landroid/util/ArrayMap;

    .line 209
    .line 210
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 211
    .line 212
    .line 213
    iput-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 214
    .line 215
    :cond_d
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 216
    .line 217
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 218
    .line 219
    .line 220
    :cond_e
    iput-wide v5, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 221
    .line 222
    invoke-virtual {v10, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    iput v2, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 227
    .line 228
    move-object v2, v3

    .line 229
    move v3, v8

    .line 230
    :cond_f
    if-nez v3, :cond_11

    .line 231
    .line 232
    iget v4, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 233
    .line 234
    if-ltz v4, :cond_11

    .line 235
    .line 236
    invoke-virtual {v10, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    iget v7, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 241
    .line 242
    if-le v4, v7, :cond_11

    .line 243
    .line 244
    iget v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 245
    .line 246
    if-ne v4, v9, :cond_10

    .line 247
    .line 248
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 249
    .line 250
    if-eq v4, v9, :cond_11

    .line 251
    .line 252
    :cond_10
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    .line 253
    .line 254
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 255
    .line 256
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    .line 257
    .line 258
    .line 259
    iput-boolean v8, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    .line 260
    .line 261
    iput-object v12, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 262
    .line 263
    iput-wide v5, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 264
    .line 265
    move v3, v8

    .line 266
    :cond_11
    iget-object v4, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 267
    .line 268
    if-eqz v4, :cond_15

    .line 269
    .line 270
    const-wide/16 v2, 0x0

    .line 271
    .line 272
    if-ne p1, v4, :cond_13

    .line 273
    .line 274
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;

    .line 275
    .line 276
    iget-object v7, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 277
    .line 278
    if-eqz v7, :cond_12

    .line 279
    .line 280
    goto :goto_8

    .line 281
    :cond_12
    move-wide v5, v2

    .line 282
    :goto_8
    iput-wide v5, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_13
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

    .line 286
    .line 287
    iget-object v7, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 288
    .line 289
    if-nez v7, :cond_14

    .line 290
    .line 291
    goto :goto_9

    .line 292
    :cond_14
    move-wide v5, v2

    .line 293
    :goto_9
    iput-wide v5, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 294
    .line 295
    :goto_a
    move-object v2, v4

    .line 296
    move-object v9, v2

    .line 297
    move v13, v8

    .line 298
    goto :goto_b

    .line 299
    :cond_15
    move-object v9, v2

    .line 300
    move v13, v3

    .line 301
    goto :goto_b

    .line 302
    :cond_16
    move v13, v1

    .line 303
    move-object v9, v12

    .line 304
    :goto_b
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 305
    .line 306
    const/4 v5, 0x0

    .line 307
    const-wide/16 v6, 0x0

    .line 308
    .line 309
    move-object v2, v0

    .line 310
    move v4, v11

    .line 311
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;J)V

    .line 312
    .line 313
    .line 314
    iget-boolean v2, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInNotificationIconShelf:Z

    .line 315
    .line 316
    if-nez v2, :cond_19

    .line 317
    .line 318
    iget-boolean v2, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 319
    .line 320
    if-eqz v2, :cond_17

    .line 321
    .line 322
    iget v2, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    .line 323
    .line 324
    goto :goto_c

    .line 325
    :cond_17
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 326
    .line 327
    :goto_c
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 328
    .line 329
    if-eqz v3, :cond_18

    .line 330
    .line 331
    if-eqz v11, :cond_18

    .line 332
    .line 333
    goto :goto_d

    .line 334
    :cond_18
    move v8, v1

    .line 335
    :goto_d
    invoke-virtual {v0, v2, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 336
    .line 337
    .line 338
    goto :goto_f

    .line 339
    :cond_19
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-static {v2}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-eqz v2, :cond_1b

    .line 352
    .line 353
    iget v2, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShelfIconColor:I

    .line 354
    .line 355
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 356
    .line 357
    if-eqz v3, :cond_1a

    .line 358
    .line 359
    if-eqz v11, :cond_1a

    .line 360
    .line 361
    goto :goto_e

    .line 362
    :cond_1a
    move v8, v1

    .line 363
    :goto_e
    invoke-virtual {v0, v2, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 364
    .line 365
    .line 366
    :cond_1b
    :goto_f
    if-eqz v13, :cond_1c

    .line 367
    .line 368
    invoke-virtual {p0, v0, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 369
    .line 370
    .line 371
    goto :goto_10

    .line 372
    :cond_1c
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 373
    .line 374
    .line 375
    :goto_10
    sget-object p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    .line 376
    .line 377
    iput-object v12, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 378
    .line 379
    :cond_1d
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 380
    .line 381
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 382
    .line 383
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 384
    .line 385
    return-void
.end method

.method public final initFrom(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 9
    .line 10
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    .line 11
    .line 12
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 13
    .line 14
    :cond_0
    return-void
.end method
