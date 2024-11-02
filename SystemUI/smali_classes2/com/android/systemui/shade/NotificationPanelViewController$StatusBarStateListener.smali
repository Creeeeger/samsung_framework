.class public final Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLinearDarkAmount:F

    .line 6
    .line 7
    const-class p2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    sget-object p2, Lcom/android/systemui/shade/NotificationPanelViewController;->ADDITIONAL_TAP_REQUIRED_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 18
    .line 19
    const-string p2, "NotificationPanelView"

    .line 20
    .line 21
    const-string v0, "Failed to get PluginFaceWidgetManager"

    .line 22
    .line 23
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p2, p2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 28
    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldHideLightRevealScrimOnWakeUp()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    :cond_1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    .line 44
    .line 45
    iget-object p2, p2, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->setDarkAmount(F)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    .line 54
    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    cmpl-float p1, p1, p2

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    .line 63
    .line 64
    .line 65
    const-string p1, "onDozeAmountChanged"

    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedMaxCountCallStack:Ljava/lang/String;

    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 8
    .line 9
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->goingToFullShade()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 16
    .line 17
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 18
    .line 19
    iget v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x1

    .line 23
    if-ne v1, v7, :cond_0

    .line 24
    .line 25
    move v8, v7

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v8, v6

    .line 28
    :goto_0
    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 29
    .line 30
    iput v1, v9, Lcom/android/systemui/shade/NotificationPanelView;->mStatusBarState:I

    .line 31
    .line 32
    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 33
    .line 34
    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 35
    .line 36
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldDelayKeyguardShow()Z

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    const/4 v11, 0x0

    .line 41
    if-eqz v10, :cond_1

    .line 42
    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    if-ne v1, v7, :cond_1

    .line 46
    .line 47
    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 48
    .line 49
    iget-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 50
    .line 51
    iget v13, v12, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    .line 52
    .line 53
    iget v12, v12, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockYFullyDozing:I

    .line 54
    .line 55
    invoke-virtual {v10, v13, v12, v6, v11}, Lcom/android/keyguard/KeyguardStatusViewController;->updatePosition(IIZLjava/util/List;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 59
    .line 60
    iget v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 61
    .line 62
    invoke-virtual {v10, v1, v12, v4, v2}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IIZZ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    .line 66
    .line 67
    .line 68
    iput v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 69
    .line 70
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 71
    .line 72
    iput v1, v4, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 73
    .line 74
    iget-object v10, v4, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 75
    .line 76
    iput v1, v10, Lcom/android/systemui/shade/SecQuickSettingsController;->barState:I

    .line 77
    .line 78
    iget-object v10, v10, Lcom/android/systemui/shade/SecQuickSettingsController;->expandQSAtOnceController:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    .line 79
    .line 80
    iput-boolean v6, v10, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mShouldCloseAtOnce:Z

    .line 81
    .line 82
    const/4 v10, 0x2

    .line 83
    if-ne v1, v7, :cond_3

    .line 84
    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    if-ne v5, v10, :cond_3

    .line 88
    .line 89
    :cond_2
    move v12, v7

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move v12, v6

    .line 92
    :goto_1
    iget-boolean v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 93
    .line 94
    if-eqz v13, :cond_4

    .line 95
    .line 96
    if-eqz v12, :cond_4

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsController;->closeQs()V

    .line 99
    .line 100
    .line 101
    :cond_4
    iget-object v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 102
    .line 103
    if-ne v5, v7, :cond_7

    .line 104
    .line 105
    if-nez v2, :cond_5

    .line 106
    .line 107
    if-ne v1, v10, :cond_7

    .line 108
    .line 109
    :cond_5
    iget-boolean v2, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 110
    .line 111
    if-eqz v2, :cond_6

    .line 112
    .line 113
    move-object/from16 v16, v13

    .line 114
    .line 115
    iget-wide v12, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-wide v2, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    .line 121
    .line 122
    const-wide/16 v17, 0x2

    .line 123
    .line 124
    div-long v2, v2, v17

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_6
    move-object/from16 v16, v13

    .line 128
    .line 129
    const-wide/16 v12, 0x0

    .line 130
    .line 131
    const-wide/16 v2, 0x168

    .line 132
    .line 133
    :goto_2
    iget-object v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 134
    .line 135
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    sget-object v7, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 139
    .line 140
    iget-object v14, v15, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    .line 141
    .line 142
    iget-object v14, v14, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 143
    .line 144
    const-string v6, "KeyguardStatusBarViewController"

    .line 145
    .line 146
    const-string v10, "animating status bar out"

    .line 147
    .line 148
    invoke-virtual {v14, v6, v7, v10, v11}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    const/4 v6, 0x2

    .line 152
    new-array v7, v6, [F

    .line 153
    .line 154
    iget-object v6, v15, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 155
    .line 156
    check-cast v6, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 157
    .line 158
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getAlpha()F

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    const/4 v10, 0x0

    .line 163
    aput v6, v7, v10

    .line 164
    .line 165
    const/4 v6, 0x0

    .line 166
    const/4 v10, 0x1

    .line 167
    aput v6, v7, v10

    .line 168
    .line 169
    invoke-static {v7}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    iget-object v7, v15, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimatorUpdateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda7;

    .line 174
    .line 175
    invoke-virtual {v6, v7}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v12, v13}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v2, v3}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 182
    .line 183
    .line 184
    sget-object v2, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    .line 185
    .line 186
    invoke-virtual {v6, v2}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 187
    .line 188
    .line 189
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$10;

    .line 190
    .line 191
    invoke-direct {v2, v15}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$10;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v2}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    .line 195
    .line 196
    .line 197
    const/4 v2, 0x0

    .line 198
    invoke-virtual {v6, v2}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsController;->updateMinHeight()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/QuickSettingsController;->updateNightMode(I)V

    .line 209
    .line 210
    .line 211
    sget-boolean v2, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    .line 212
    .line 213
    if-eqz v2, :cond_14

    .line 214
    .line 215
    move-object/from16 v3, v16

    .line 216
    .line 217
    const/4 v2, 0x4

    .line 218
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_9

    .line 222
    .line 223
    :cond_7
    move-object v3, v13

    .line 224
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 225
    .line 226
    const/4 v2, 0x2

    .line 227
    if-ne v5, v2, :cond_9

    .line 228
    .line 229
    const/4 v2, 0x1

    .line 230
    if-ne v1, v2, :cond_9

    .line 231
    .line 232
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 233
    .line 234
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->animateKeyguardStatusBarIn()V

    .line 235
    .line 236
    .line 237
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 238
    .line 239
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/QuickSettingsController;->updateNightMode(I)V

    .line 247
    .line 248
    .line 249
    sget-boolean v2, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    .line 250
    .line 251
    if-eqz v2, :cond_14

    .line 252
    .line 253
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 254
    .line 255
    if-eqz v2, :cond_8

    .line 256
    .line 257
    const/16 v2, 0x8

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_8
    const/4 v2, 0x0

    .line 261
    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_9

    .line 265
    .line 266
    :cond_9
    if-nez v5, :cond_a

    .line 267
    .line 268
    const/4 v2, 0x1

    .line 269
    if-ne v1, v2, :cond_a

    .line 270
    .line 271
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 272
    .line 273
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->isKeyguardShowDelayed()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_a

    .line 278
    .line 279
    const/4 v2, 0x1

    .line 280
    goto :goto_4

    .line 281
    :cond_a
    const/4 v2, 0x0

    .line 282
    :goto_4
    if-nez v2, :cond_e

    .line 283
    .line 284
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 285
    .line 286
    if-eqz v8, :cond_b

    .line 287
    .line 288
    const-string v3, "Updating keyguard status bar state to visible"

    .line 289
    .line 290
    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_b
    const-string v3, "Updating keyguard status bar state to invisible"

    .line 295
    .line 296
    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :goto_5
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 300
    .line 301
    if-eqz v8, :cond_c

    .line 302
    .line 303
    const/4 v2, 0x0

    .line 304
    goto :goto_6

    .line 305
    :cond_c
    const/4 v2, 0x4

    .line 306
    :goto_6
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    .line 307
    .line 308
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    .line 309
    .line 310
    if-eqz v7, :cond_d

    .line 311
    .line 312
    const/4 v7, 0x4

    .line 313
    goto :goto_7

    .line 314
    :cond_d
    move v7, v2

    .line 315
    :goto_7
    iget-object v2, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 316
    .line 317
    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 318
    .line 319
    const/high16 v9, 0x3f800000    # 1.0f

    .line 320
    .line 321
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 322
    .line 323
    .line 324
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 325
    .line 326
    check-cast v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 327
    .line 328
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    :cond_e
    if-eqz v8, :cond_12

    .line 332
    .line 333
    iget v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 334
    .line 335
    if-eq v5, v3, :cond_12

    .line 336
    .line 337
    iget-object v3, v4, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 338
    .line 339
    if-eqz v3, :cond_f

    .line 340
    .line 341
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->hideImmediately()V

    .line 342
    .line 343
    .line 344
    :cond_f
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 345
    .line 346
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 347
    .line 348
    iget-boolean v3, v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 349
    .line 350
    if-eqz v3, :cond_11

    .line 351
    .line 352
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 353
    .line 354
    iget-object v3, v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 355
    .line 356
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    new-instance v9, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string v10, "dismissEditActivity "

    .line 363
    .line 364
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    const-string v9, "KeyguardEditModeAnimatorController"

    .line 375
    .line 376
    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    if-eqz v7, :cond_10

    .line 384
    .line 385
    const/4 v7, 0x0

    .line 386
    invoke-virtual {v3, v7}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animate(Z)V

    .line 387
    .line 388
    .line 389
    :cond_10
    iget-object v3, v3, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 390
    .line 391
    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 392
    .line 393
    const/4 v7, 0x4

    .line 394
    invoke-virtual {v3, v7}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setThumbnailVisibility(I)V

    .line 395
    .line 396
    .line 397
    :cond_11
    const/4 v3, 0x1

    .line 398
    goto :goto_8

    .line 399
    :cond_12
    const/4 v3, 0x1

    .line 400
    if-ne v5, v3, :cond_13

    .line 401
    .line 402
    if-nez v1, :cond_13

    .line 403
    .line 404
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 405
    .line 406
    .line 407
    :cond_13
    :goto_8
    if-ne v5, v3, :cond_14

    .line 408
    .line 409
    if-nez v1, :cond_14

    .line 410
    .line 411
    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 412
    .line 413
    if-eqz v3, :cond_14

    .line 414
    .line 415
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    .line 416
    .line 417
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 418
    .line 419
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    if-eqz v3, :cond_14

    .line 424
    .line 425
    invoke-virtual {v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->run()V

    .line 426
    .line 427
    .line 428
    :cond_14
    :goto_9
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 429
    .line 430
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateForHeadsUp()V

    .line 431
    .line 432
    .line 433
    const/4 v3, 0x0

    .line 434
    if-eqz v8, :cond_15

    .line 435
    .line 436
    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateDozingVisibilities(Z)V

    .line 437
    .line 438
    .line 439
    :cond_15
    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    .line 440
    .line 441
    .line 442
    const-string v6, "onStateChanged"

    .line 443
    .line 444
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedMaxCountCallStack:Ljava/lang/String;

    .line 445
    .line 446
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 447
    .line 448
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 449
    .line 450
    .line 451
    iget v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 452
    .line 453
    const/4 v8, 0x2

    .line 454
    if-ne v7, v8, :cond_16

    .line 455
    .line 456
    new-array v2, v8, [F

    .line 457
    .line 458
    iget v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 459
    .line 460
    aput v7, v2, v3

    .line 461
    .line 462
    const/4 v3, 0x0

    .line 463
    const/4 v7, 0x1

    .line 464
    aput v3, v2, v7

    .line 465
    .line 466
    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 470
    .line 471
    .line 472
    goto :goto_a

    .line 473
    :cond_16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 474
    .line 475
    const/4 v7, 0x1

    .line 476
    iput v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 477
    .line 478
    :goto_a
    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsController;->updateQsState()V

    .line 479
    .line 480
    .line 481
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    .line 482
    .line 483
    if-eqz v2, :cond_17

    .line 484
    .line 485
    iget-object v2, v4, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 486
    .line 487
    iget-object v2, v2, Lcom/android/systemui/shade/SecQuickSettingsController;->tabletHorizontalPanelPositionHelper:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    .line 488
    .line 489
    invoke-virtual {v2, v7}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->resetHorizontalPanelPosition(Z)V

    .line 490
    .line 491
    .line 492
    :cond_17
    iget v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 493
    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    const-string v4, "onBarStateChanged() to "

    .line 497
    .line 498
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    const-string v4, "NotificationPanelView"

    .line 509
    .line 510
    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 514
    .line 515
    move-object v4, v3

    .line 516
    check-cast v4, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 517
    .line 518
    iput v2, v4, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBarState:I

    .line 519
    .line 520
    iget-object v6, v4, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 521
    .line 522
    if-eqz v6, :cond_19

    .line 523
    .line 524
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    if-ne v6, v7, :cond_18

    .line 533
    .line 534
    iget-object v4, v4, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 535
    .line 536
    invoke-virtual {v4, v2}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onBarStateChanged(I)V

    .line 537
    .line 538
    .line 539
    goto :goto_b

    .line 540
    :cond_18
    iget-object v6, v4, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    .line 541
    .line 542
    new-instance v7, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;

    .line 543
    .line 544
    const/4 v8, 0x1

    .line 545
    invoke-direct {v7, v4, v2, v8}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;II)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    .line 550
    .line 551
    goto :goto_c

    .line 552
    :cond_19
    :goto_b
    const/4 v8, 0x1

    .line 553
    :goto_c
    if-ne v5, v1, :cond_1a

    .line 554
    .line 555
    if-ne v1, v8, :cond_1a

    .line 556
    .line 557
    iget v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    .line 558
    .line 559
    if-eqz v2, :cond_1a

    .line 560
    .line 561
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setViewMode(I)V

    .line 562
    .line 563
    .line 564
    :cond_1a
    iget v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 565
    .line 566
    if-nez v2, :cond_1b

    .line 567
    .line 568
    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 569
    .line 570
    iget-boolean v2, v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsSecureWindow:Z

    .line 571
    .line 572
    if-eqz v2, :cond_1b

    .line 573
    .line 574
    const/4 v2, 0x0

    .line 575
    invoke-virtual {v3, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->updateWindowSecureState(Z)V

    .line 576
    .line 577
    .line 578
    :cond_1b
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    .line 579
    .line 580
    if-eqz v2, :cond_1d

    .line 581
    .line 582
    iget v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 583
    .line 584
    const/4 v4, 0x1

    .line 585
    if-ne v3, v4, :cond_1c

    .line 586
    .line 587
    const/4 v13, 0x0

    .line 588
    goto :goto_d

    .line 589
    :cond_1c
    const/16 v13, 0x8

    .line 590
    .line 591
    :goto_d
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 592
    .line 593
    .line 594
    :cond_1d
    if-nez v1, :cond_1e

    .line 595
    .line 596
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 597
    .line 598
    if-eqz v1, :cond_1e

    .line 599
    .line 600
    const/4 v1, 0x0

    .line 601
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 602
    .line 603
    :cond_1e
    return-void
.end method
