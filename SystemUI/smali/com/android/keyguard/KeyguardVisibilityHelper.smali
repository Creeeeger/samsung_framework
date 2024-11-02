.class public final Lcom/android/keyguard/KeyguardVisibilityHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAnimateKeyguardStatusViewGoneEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

.field public final mAnimateKeyguardStatusViewInvisibleEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

.field public final mAnimateYPos:Z

.field public final mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mKeyguardViewVisibilityAnimating:Z

.field public mLastOccludedState:Z

.field public final mLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mSetGoneEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$2;

.field public final mSetInvisibleEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$1;

.field public final mSetVisibleEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;ZLcom/android/systemui/log/LogBuffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLastOccludedState:Z

    .line 9
    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 16
    .line 17
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$1;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetInvisibleEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$1;

    .line 23
    .line 24
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper$2;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$2;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetGoneEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$2;

    .line 30
    .line 31
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v0, p0, p3}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    new-instance p3, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-direct {p3, p0, v0}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;I)V

    .line 42
    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewGoneEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    new-instance p3, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    invoke-direct {p3, p0, v0}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;I)V

    .line 50
    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetVisibleEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 57
    .line 58
    iput-object p4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 59
    .line 60
    iput-boolean p5, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateYPos:Z

    .line 61
    .line 62
    iput-object p6, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string v0, "KeyguardVisibilityHelper"

    .line 6
    .line 7
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final setViewVisibility(IIZZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 3
    .line 4
    move/from16 v2, p2

    .line 5
    .line 6
    sget-object v3, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 7
    .line 8
    iget-object v4, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 9
    .line 10
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->cancelAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)V

    .line 11
    .line 12
    .line 13
    iget-object v5, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 14
    .line 15
    move-object v6, v5

    .line 16
    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 17
    .line 18
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    iput-boolean v8, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const-wide/16 v10, 0x0

    .line 25
    .line 26
    const/4 v12, 0x1

    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    if-ne v2, v12, :cond_0

    .line 30
    .line 31
    if-ne v1, v12, :cond_1

    .line 32
    .line 33
    :cond_0
    if-eqz p4, :cond_3

    .line 34
    .line 35
    :cond_1
    iput-boolean v12, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 36
    .line 37
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 43
    .line 44
    sget-object v8, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 45
    .line 46
    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetGoneEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$2;

    .line 50
    .line 51
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 52
    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    iget-wide v10, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    .line 56
    .line 57
    iput-wide v10, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 63
    .line 64
    iget-wide v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    .line 65
    .line 66
    const-wide/16 v10, 0x2

    .line 67
    .line 68
    div-long/2addr v5, v10

    .line 69
    iput-wide v5, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 70
    .line 71
    const-string v2, "goingToFullShade && keyguardFadingAway"

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iput-wide v10, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 78
    .line 79
    const-wide/16 v5, 0xa0

    .line 80
    .line 81
    iput-wide v5, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 82
    .line 83
    const-string v2, "goingToFullShade && !keyguardFadingAway"

    .line 84
    .line 85
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-static {v4, v3, v9, v1, v12}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_3
    const/4 v5, 0x2

    .line 94
    const-string v6, "keyguardFadingAway transition w/ Y Aniamtion"

    .line 95
    .line 96
    const/high16 v13, 0x3f800000    # 1.0f

    .line 97
    .line 98
    if-ne v2, v5, :cond_4

    .line 99
    .line 100
    if-ne v1, v12, :cond_4

    .line 101
    .line 102
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iput-boolean v12, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 106
    .line 107
    invoke-virtual {v4, v9}, Landroid/view/View;->setAlpha(F)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 111
    .line 112
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-wide v10, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 116
    .line 117
    const-wide/16 v8, 0x140

    .line 118
    .line 119
    iput-wide v8, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 120
    .line 121
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 122
    .line 123
    sget-object v5, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 124
    .line 125
    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;

    .line 129
    .line 130
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    .line 131
    .line 132
    .line 133
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 134
    .line 135
    invoke-static {v4, v3, v13, v1, v12}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_2

    .line 142
    .line 143
    :cond_4
    if-ne v1, v12, :cond_8

    .line 144
    .line 145
    if-eqz p3, :cond_6

    .line 146
    .line 147
    iput-boolean v12, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 148
    .line 149
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 150
    .line 151
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-wide v10, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 155
    .line 156
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 157
    .line 158
    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 159
    .line 160
    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    .line 161
    .line 162
    .line 163
    iget-object v2, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetInvisibleEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$1;

    .line 164
    .line 165
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 166
    .line 167
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateYPos:Z

    .line 168
    .line 169
    if-eqz v2, :cond_5

    .line 170
    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    int-to-float v5, v5

    .line 180
    const v10, 0x3d4ccccd    # 0.05f

    .line 181
    .line 182
    .line 183
    mul-float/2addr v5, v10

    .line 184
    sub-float/2addr v2, v5

    .line 185
    iget-object v5, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 186
    .line 187
    const/16 v10, 0x7d

    .line 188
    .line 189
    int-to-long v10, v10

    .line 190
    iput-wide v10, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 191
    .line 192
    int-to-long v13, v8

    .line 193
    iput-wide v13, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 194
    .line 195
    sget-object v8, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 196
    .line 197
    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->cancelAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v4, v8, v2, v5, v12}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 201
    .line 202
    .line 203
    iput-wide v10, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 204
    .line 205
    iput-wide v13, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 206
    .line 207
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_5
    const-string v2, "keyguardFadingAway transition w/o Y Animation"

    .line 212
    .line 213
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_1
    invoke-static {v4, v3, v9, v1, v12}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_6
    iget-object v1, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldAnimateInKeyguard()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_7

    .line 227
    .line 228
    const-string v2, "ScreenOff transition"

    .line 229
    .line 230
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iput-boolean v12, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 234
    .line 235
    iget-object v2, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetVisibleEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    .line 236
    .line 237
    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animateInKeyguard$1(Landroid/view/View;Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;)V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_7
    const-string v1, "Direct set Visibility to VISIBLE"

    .line 242
    .line 243
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_8
    const-string v1, "Direct set Visibility to GONE"

    .line 251
    .line 252
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const/16 v1, 0x8

    .line 256
    .line 257
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4, v13}, Landroid/view/View;->setAlpha(F)V

    .line 261
    .line 262
    .line 263
    :goto_2
    iput-boolean v7, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLastOccludedState:Z

    .line 264
    .line 265
    return-void
.end method
