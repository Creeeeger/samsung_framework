.class public final Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    const-string p1, "NVP#onLayout"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 12
    .line 13
    const/4 p3, 0x1

    .line 14
    iput-boolean p3, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    .line 15
    .line 16
    iget-boolean p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    .line 17
    .line 18
    const/4 p5, 0x0

    .line 19
    if-eqz p4, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->abortAnimations()V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 25
    .line 26
    iget p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingVelocity:F

    .line 27
    .line 28
    invoke-virtual {p2, p4}, Lcom/android/systemui/shade/NotificationPanelViewController;->fling(F)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 32
    .line 33
    iput-boolean p5, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    .line 34
    .line 35
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 36
    .line 37
    iget-boolean p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 38
    .line 39
    if-nez p4, :cond_1

    .line 40
    .line 41
    iget-object p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 42
    .line 43
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    if-eqz p4, :cond_2

    .line 48
    .line 49
    :cond_1
    const-class p4, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 50
    .line 51
    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    check-cast p4, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 56
    .line 57
    iget-boolean p4, p4, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mChildAnimatable:Z

    .line 58
    .line 59
    if-eqz p4, :cond_2

    .line 60
    .line 61
    move p4, p3

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move p4, p5

    .line 64
    :goto_0
    xor-int/2addr p4, p3

    .line 65
    invoke-virtual {p2, p4}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 69
    .line 70
    const-string p4, "onLayoutChange"

    .line 71
    .line 72
    iput-object p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedMaxCountCallStack:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 75
    .line 76
    iget-object p6, p4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 77
    .line 78
    invoke-virtual {p6}, Landroid/view/ViewGroup;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result p6

    .line 82
    int-to-float p6, p6

    .line 83
    iget-object p7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 84
    .line 85
    iget-object p7, p7, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 86
    .line 87
    invoke-virtual {p7}, Landroid/widget/FrameLayout;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result p7

    .line 91
    int-to-float p7, p7

    .line 92
    cmpl-float p6, p6, p7

    .line 93
    .line 94
    if-nez p6, :cond_3

    .line 95
    .line 96
    move p6, p3

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move p6, p5

    .line 99
    :goto_1
    iput-boolean p6, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFullWidth:Z

    .line 100
    .line 101
    iget-object p7, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 102
    .line 103
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 107
    .line 108
    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 109
    .line 110
    iput-boolean p6, p4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSmallScreen:Z

    .line 111
    .line 112
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 113
    .line 114
    iput-boolean p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 115
    .line 116
    iget-object p2, p2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 117
    .line 118
    if-eqz p2, :cond_4

    .line 119
    .line 120
    invoke-interface {p2, p6}, Lcom/android/systemui/plugins/qs/QS;->setIsNotificationPanelFullWidth(Z)V

    .line 121
    .line 122
    .line 123
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 124
    .line 125
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 126
    .line 127
    iget p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 130
    .line 131
    .line 132
    move-result p6

    .line 133
    if-eqz p6, :cond_5

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/android/systemui/shade/QuickSettingsController;->updateMinHeight()V

    .line 136
    .line 137
    .line 138
    iget-object p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 139
    .line 140
    invoke-interface {p6}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    .line 141
    .line 142
    .line 143
    move-result p6

    .line 144
    iput p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 145
    .line 146
    iget-object p2, p2, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 147
    .line 148
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 149
    .line 150
    iput p6, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    .line 151
    .line 152
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 153
    .line 154
    invoke-virtual {p2, p5}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 158
    .line 159
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 160
    .line 161
    iget-boolean p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 162
    .line 163
    if-eqz p6, :cond_8

    .line 164
    .line 165
    iget-boolean p7, p2, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 166
    .line 167
    if-eqz p7, :cond_8

    .line 168
    .line 169
    iget p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 170
    .line 171
    int-to-float p6, p6

    .line 172
    iput p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 173
    .line 174
    iget-object p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    .line 175
    .line 176
    if-eqz p6, :cond_6

    .line 177
    .line 178
    iget-object p6, p6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 179
    .line 180
    invoke-virtual {p6, p5}, Lcom/android/systemui/shade/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p6}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    .line 184
    .line 185
    .line 186
    :cond_6
    iget p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 187
    .line 188
    if-eq p6, p4, :cond_b

    .line 189
    .line 190
    iget-object p7, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 191
    .line 192
    if-eqz p7, :cond_7

    .line 193
    .line 194
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p4

    .line 198
    check-cast p4, Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result p4

    .line 204
    iget-object p7, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 205
    .line 206
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->cancel()V

    .line 207
    .line 208
    .line 209
    :cond_7
    filled-new-array {p4, p6}, [I

    .line 210
    .line 211
    .line 212
    move-result-object p4

    .line 213
    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 214
    .line 215
    .line 216
    move-result-object p4

    .line 217
    iput-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 218
    .line 219
    const-wide/16 p6, 0x12c

    .line 220
    .line 221
    invoke-virtual {p4, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 222
    .line 223
    .line 224
    iget-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 225
    .line 226
    sget-object p6, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 227
    .line 228
    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    .line 230
    .line 231
    iget-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 232
    .line 233
    new-instance p6, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda1;

    .line 234
    .line 235
    invoke-direct {p6, p2, p3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    .line 240
    .line 241
    iget-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 242
    .line 243
    new-instance p6, Lcom/android/systemui/shade/QuickSettingsController$1;

    .line 244
    .line 245
    invoke-direct {p6, p2}, Lcom/android/systemui/shade/QuickSettingsController$1;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    .line 250
    .line 251
    iget-object p2, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 252
    .line 253
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_8
    if-nez p6, :cond_a

    .line 258
    .line 259
    iget-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 260
    .line 261
    if-eqz p4, :cond_9

    .line 262
    .line 263
    move p4, p3

    .line 264
    goto :goto_2

    .line 265
    :cond_9
    move p4, p5

    .line 266
    :goto_2
    if-nez p4, :cond_a

    .line 267
    .line 268
    iget p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 269
    .line 270
    int-to-float p4, p4

    .line 271
    iget p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mLastOverscroll:F

    .line 272
    .line 273
    add-float/2addr p4, p6

    .line 274
    invoke-virtual {p2, p4}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_a
    iget-object p2, p2, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 279
    .line 280
    const-string p4, "onLayoutChange: qs expansion not set"

    .line 281
    .line 282
    invoke-virtual {p2, p4}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_b
    :goto_3
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 286
    .line 287
    iget p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 288
    .line 289
    invoke-virtual {p2, p4}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeight(F)V

    .line 290
    .line 291
    .line 292
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 293
    .line 294
    iget p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 295
    .line 296
    if-ne p4, p3, :cond_c

    .line 297
    .line 298
    iget-object p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 299
    .line 300
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    .line 301
    .line 302
    .line 303
    :cond_c
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 304
    .line 305
    invoke-virtual {p2}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansion()V

    .line 306
    .line 307
    .line 308
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 309
    .line 310
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 311
    .line 312
    iget-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 313
    .line 314
    if-eqz p4, :cond_d

    .line 315
    .line 316
    goto :goto_4

    .line 317
    :cond_d
    move p3, p5

    .line 318
    :goto_4
    if-eqz p3, :cond_e

    .line 319
    .line 320
    invoke-virtual {p2}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 321
    .line 322
    .line 323
    move-result p3

    .line 324
    if-eqz p3, :cond_e

    .line 325
    .line 326
    iget-object p2, p2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 327
    .line 328
    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    .line 329
    .line 330
    .line 331
    move-result p3

    .line 332
    invoke-interface {p2, p3}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    .line 333
    .line 334
    .line 335
    :cond_e
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 336
    .line 337
    iget-object p3, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 338
    .line 339
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHeight()I

    .line 340
    .line 341
    .line 342
    move-result p3

    .line 343
    iget p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 344
    .line 345
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 346
    .line 347
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 348
    .line 349
    iget-object p5, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 350
    .line 351
    sub-int p4, p3, p4

    .line 352
    .line 353
    int-to-float p4, p4

    .line 354
    iput p4, p5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    .line 355
    .line 356
    iget-object p4, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    .line 357
    .line 358
    iput p3, p4, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    .line 359
    .line 360
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 361
    .line 362
    .line 363
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 364
    .line 365
    invoke-virtual {p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateGestureExclusionRect()V

    .line 366
    .line 367
    .line 368
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 369
    .line 370
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    .line 371
    .line 372
    if-eqz p2, :cond_f

    .line 373
    .line 374
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 375
    .line 376
    .line 377
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 378
    .line 379
    const/4 p2, 0x0

    .line 380
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    .line 381
    .line 382
    :cond_f
    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    return-void
.end method
