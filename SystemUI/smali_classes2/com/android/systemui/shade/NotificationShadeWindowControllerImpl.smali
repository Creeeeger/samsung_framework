.class public final Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShadeWindowController;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

.field public mDeferWindowLayoutParams:I

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

.field public mHasTopUi:Z

.field public mHasTopUiChanged:Z

.field public final mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

.field public final mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardMaxRefreshRate:F

.field public final mKeyguardPreferredRefreshRate:F

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public mLastKeyguardRotationAllowed:Z

.field public mListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

.field public final mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field public mNotificationShadeView:Landroid/view/ViewGroup;

.field public mScreenBrightnessDoze:F

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public mScrimsVisibilityListener:Ljava/util/function/Consumer;

.field public final mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

.field public final mStateListener:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/shade/ShadeWindowLogger;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move-object/from16 v3, p12

    .line 8
    .line 9
    move-object/from16 v4, p15

    .line 10
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v5, Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 15
    .line 16
    invoke-direct {v5}, Lcom/android/systemui/shade/NotificationShadeWindowState;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 20
    .line 21
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v5, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    .line 29
    .line 30
    const/16 v6, 0x64

    .line 31
    .line 32
    invoke-direct {v5, v6}, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    .line 36
    .line 37
    new-instance v5, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;

    .line 38
    .line 39
    invoke-direct {v5, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    .line 40
    .line 41
    .line 42
    iput-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mStateListener:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;

    .line 43
    .line 44
    new-instance v13, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    .line 45
    .line 46
    new-instance v7, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda9;

    .line 47
    .line 48
    const/4 v14, 0x0

    .line 49
    invoke-direct {v7, v0, v14}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    .line 50
    .line 51
    .line 52
    new-instance v8, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda9;

    .line 53
    .line 54
    const/4 v15, 0x1

    .line 55
    invoke-direct {v8, v0, v15}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    .line 56
    .line 57
    .line 58
    new-instance v9, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda9;

    .line 59
    .line 60
    const/4 v6, 0x2

    .line 61
    invoke-direct {v9, v0, v6}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    .line 62
    .line 63
    .line 64
    new-instance v10, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda10;

    .line 65
    .line 66
    invoke-direct {v10, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    .line 67
    .line 68
    .line 69
    new-instance v11, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;

    .line 70
    .line 71
    invoke-direct {v11, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    .line 72
    .line 73
    .line 74
    new-instance v12, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda12;

    .line 75
    .line 76
    invoke-direct {v12, v0, v14}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    .line 77
    .line 78
    .line 79
    move-object v6, v13

    .line 80
    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Predicate;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;)V

    .line 81
    .line 82
    .line 83
    iput-object v13, v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    .line 84
    .line 85
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 86
    .line 87
    move-object/from16 v1, p2

    .line 88
    .line 89
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    move-object/from16 v6, p3

    .line 92
    .line 93
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 94
    .line 95
    move-object/from16 v6, p4

    .line 96
    .line 97
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 98
    .line 99
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 100
    .line 101
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 102
    .line 103
    move-object/from16 v6, p16

    .line 104
    .line 105
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    .line 106
    .line 107
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 108
    .line 109
    const v6, 0x10e0109

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    int-to-float v2, v2

    .line 117
    const/high16 v6, 0x437f0000    # 255.0f

    .line 118
    .line 119
    div-float/2addr v2, v6

    .line 120
    iput v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    .line 121
    .line 122
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 123
    .line 124
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 128
    .line 129
    move-object/from16 v2, p8

    .line 130
    .line 131
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 132
    .line 133
    move-object/from16 v2, p9

    .line 134
    .line 135
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 136
    .line 137
    move-object/from16 v2, p10

    .line 138
    .line 139
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 140
    .line 141
    move-object/from16 v2, p13

    .line 142
    .line 143
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 144
    .line 145
    const-class v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    move-object/from16 v6, p11

    .line 155
    .line 156
    invoke-static {v6, v2, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 157
    .line 158
    .line 159
    move-object/from16 v2, p14

    .line 160
    .line 161
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 162
    .line 163
    move-object v2, v3

    .line 164
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isKeyguardScreenRotationAllowed()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLastKeyguardRotationAllowed:Z

    .line 171
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const v3, 0x7f0b0026

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 180
    .line 181
    .line 182
    move-object/from16 v2, p6

    .line 183
    .line 184
    check-cast v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 185
    .line 186
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 187
    .line 188
    iget-object v3, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 189
    .line 190
    monitor-enter v3

    .line 191
    :try_start_0
    invoke-virtual {v2, v5, v15}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addListenerInternalLocked(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 192
    .line 193
    .line 194
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    move-object/from16 v2, p7

    .line 196
    .line 197
    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 198
    .line 199
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;

    .line 203
    .line 204
    invoke-direct {v2, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addQsExpansionListener(Lcom/android/systemui/shade/ShadeQsExpansionListener;)V

    .line 208
    .line 209
    .line 210
    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda2;

    .line 211
    .line 212
    invoke-direct {v2, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addFullExpansionListener(Lcom/android/systemui/shade/ShadeFullExpansionListener;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const v3, 0x7f0b0024

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    int-to-float v2, v2

    .line 230
    const/high16 v3, -0x40800000    # -1.0f

    .line 231
    .line 232
    cmpl-float v4, v2, v3

    .line 233
    .line 234
    if-lez v4, :cond_1

    .line 235
    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v4}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    array-length v5, v4

    .line 245
    move v6, v14

    .line 246
    :goto_0
    if-ge v6, v5, :cond_1

    .line 247
    .line 248
    aget-object v7, v4, v6

    .line 249
    .line 250
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    sub-float/2addr v8, v2

    .line 255
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    float-to-double v8, v8

    .line 260
    const-wide v10, 0x3fb999999999999aL    # 0.1

    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    cmpg-double v8, v8, v10

    .line 266
    .line 267
    if-gtz v8, :cond_0

    .line 268
    .line 269
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    goto :goto_1

    .line 274
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 275
    .line 276
    goto :goto_0

    .line 277
    :cond_1
    :goto_1
    iput v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    .line 278
    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    const v2, 0x7f0b0023

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    int-to-float v1, v1

    .line 291
    iput v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    .line 292
    .line 293
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 294
    .line 295
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;

    .line 299
    .line 300
    invoke-direct {v2, v1, v14}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 301
    .line 302
    .line 303
    invoke-static {v2, v15}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 304
    .line 305
    .line 306
    move-object/from16 v1, p17

    .line 307
    .line 308
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 309
    .line 310
    return-void

    .line 311
    :catchall_0
    move-exception v0

    .line 312
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    throw v0
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 6
    .line 7
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 8
    .line 9
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    .line 10
    .line 11
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    .line 12
    .line 13
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 14
    .line 15
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 16
    .line 17
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 18
    .line 19
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 20
    .line 21
    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 22
    .line 23
    iget-boolean v11, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    .line 24
    .line 25
    iget-boolean v12, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    .line 26
    .line 27
    iget-boolean v13, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    .line 28
    .line 29
    iget-boolean v14, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    .line 30
    .line 31
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 32
    .line 33
    move/from16 v16, v15

    .line 34
    .line 35
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    .line 36
    .line 37
    move/from16 v17, v15

    .line 38
    .line 39
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    .line 40
    .line 41
    move/from16 v18, v15

    .line 42
    .line 43
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    .line 44
    .line 45
    move/from16 v19, v15

    .line 46
    .line 47
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->wallpaperSupportsAmbientMode:Z

    .line 48
    .line 49
    move/from16 v20, v15

    .line 50
    .line 51
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    .line 52
    .line 53
    move/from16 v21, v15

    .line 54
    .line 55
    iget v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 56
    .line 57
    move/from16 v22, v15

    .line 58
    .line 59
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    .line 60
    .line 61
    move/from16 v23, v15

    .line 62
    .line 63
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 64
    .line 65
    move/from16 v24, v15

    .line 66
    .line 67
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 68
    .line 69
    move/from16 v25, v15

    .line 70
    .line 71
    iget v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    .line 72
    .line 73
    move/from16 v26, v15

    .line 74
    .line 75
    iget v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    .line 76
    .line 77
    move/from16 v27, v14

    .line 78
    .line 79
    move/from16 v28, v15

    .line 80
    .line 81
    iget-wide v14, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    .line 82
    .line 83
    move-wide/from16 v29, v14

    .line 84
    .line 85
    iget-object v14, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    .line 86
    .line 87
    iget-object v14, v14, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 88
    .line 89
    invoke-virtual {v14}, Lcom/android/systemui/common/buffer/RingBuffer;->advance()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    check-cast v14, Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 94
    .line 95
    iput-boolean v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 96
    .line 97
    iput-boolean v3, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 98
    .line 99
    iput-boolean v4, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    .line 100
    .line 101
    iput-boolean v5, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    .line 102
    .line 103
    iput-boolean v6, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 104
    .line 105
    iput-boolean v7, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 106
    .line 107
    iput-boolean v8, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 108
    .line 109
    iput-boolean v9, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 110
    .line 111
    iput-boolean v10, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 112
    .line 113
    iput-boolean v11, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    .line 114
    .line 115
    iput-boolean v12, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    .line 116
    .line 117
    iput-boolean v13, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    .line 118
    .line 119
    move/from16 v2, v27

    .line 120
    .line 121
    iput-boolean v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    .line 122
    .line 123
    move/from16 v2, v16

    .line 124
    .line 125
    iput-boolean v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 126
    .line 127
    move/from16 v2, v17

    .line 128
    .line 129
    iput-boolean v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    .line 130
    .line 131
    move/from16 v2, v18

    .line 132
    .line 133
    iput-boolean v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    .line 134
    .line 135
    move/from16 v2, v19

    .line 136
    .line 137
    iput-boolean v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    .line 138
    .line 139
    move/from16 v2, v20

    .line 140
    .line 141
    iput-boolean v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->wallpaperSupportsAmbientMode:Z

    .line 142
    .line 143
    move/from16 v2, v21

    .line 144
    .line 145
    iput-boolean v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    .line 146
    .line 147
    iget-object v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 150
    .line 151
    .line 152
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    .line 153
    .line 154
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 155
    .line 156
    .line 157
    iget-object v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    .line 158
    .line 159
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 160
    .line 161
    .line 162
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    .line 163
    .line 164
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 165
    .line 166
    .line 167
    move/from16 v2, v22

    .line 168
    .line 169
    iput v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 170
    .line 171
    move/from16 v2, v23

    .line 172
    .line 173
    iput-boolean v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    .line 174
    .line 175
    move/from16 v2, v24

    .line 176
    .line 177
    iput-boolean v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 178
    .line 179
    move/from16 v2, v25

    .line 180
    .line 181
    iput-boolean v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 182
    .line 183
    move/from16 v2, v26

    .line 184
    .line 185
    iput v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    .line 186
    .line 187
    move/from16 v2, v28

    .line 188
    .line 189
    iput v2, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    .line 190
    .line 191
    move-wide/from16 v4, v29

    .line 192
    .line 193
    iput-wide v4, v14, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    .line 194
    .line 195
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 196
    .line 197
    const/4 v4, 0x0

    .line 198
    const/4 v5, 0x1

    .line 199
    if-nez v2, :cond_1

    .line 200
    .line 201
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 202
    .line 203
    if-eqz v2, :cond_0

    .line 204
    .line 205
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 206
    .line 207
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_0

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_0
    move v2, v4

    .line 215
    goto :goto_1

    .line 216
    :cond_1
    :goto_0
    move v2, v5

    .line 217
    :goto_1
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 218
    .line 219
    if-eqz v2, :cond_3

    .line 220
    .line 221
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    .line 222
    .line 223
    if-nez v2, :cond_3

    .line 224
    .line 225
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    .line 226
    .line 227
    if-eqz v2, :cond_2

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_2
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 231
    .line 232
    const/high16 v7, 0x100000

    .line 233
    .line 234
    or-int/2addr v2, v7

    .line 235
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_3
    :goto_2
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 239
    .line 240
    const v7, -0x100001

    .line 241
    .line 242
    .line 243
    and-int/2addr v2, v7

    .line 244
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 245
    .line 246
    :goto_3
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 247
    .line 248
    if-eqz v2, :cond_4

    .line 249
    .line 250
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 251
    .line 252
    const/high16 v7, 0x80000

    .line 253
    .line 254
    or-int/2addr v2, v7

    .line 255
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_4
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 259
    .line 260
    const v7, -0x80001

    .line 261
    .line 262
    .line 263
    and-int/2addr v2, v7

    .line 264
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 265
    .line 266
    :goto_4
    iget v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    .line 267
    .line 268
    const/4 v7, 0x0

    .line 269
    cmpl-float v8, v2, v7

    .line 270
    .line 271
    if-lez v8, :cond_7

    .line 272
    .line 273
    iget v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 274
    .line 275
    if-ne v8, v5, :cond_5

    .line 276
    .line 277
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 278
    .line 279
    if-nez v8, :cond_5

    .line 280
    .line 281
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 282
    .line 283
    if-nez v8, :cond_5

    .line 284
    .line 285
    move v8, v5

    .line 286
    goto :goto_5

    .line 287
    :cond_5
    move v8, v4

    .line 288
    :goto_5
    if-eqz v8, :cond_6

    .line 289
    .line 290
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 291
    .line 292
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    invoke-virtual {v8, v9}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    if-eqz v8, :cond_6

    .line 301
    .line 302
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 303
    .line 304
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_6
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 308
    .line 309
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 310
    .line 311
    :goto_6
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 312
    .line 313
    float-to-long v7, v2

    .line 314
    const-string v2, "display_set_preferred_refresh_rate"

    .line 315
    .line 316
    invoke-static {v2, v7, v8}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 317
    .line 318
    .line 319
    goto :goto_a

    .line 320
    :cond_7
    iget v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    .line 321
    .line 322
    cmpl-float v8, v2, v7

    .line 323
    .line 324
    if-lez v8, :cond_b

    .line 325
    .line 326
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 327
    .line 328
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 329
    .line 330
    .line 331
    move-result v8

    .line 332
    if-eqz v8, :cond_8

    .line 333
    .line 334
    iget v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 335
    .line 336
    if-ne v8, v5, :cond_8

    .line 337
    .line 338
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 339
    .line 340
    if-nez v8, :cond_8

    .line 341
    .line 342
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 343
    .line 344
    if-nez v8, :cond_8

    .line 345
    .line 346
    move v8, v5

    .line 347
    goto :goto_7

    .line 348
    :cond_8
    move v8, v4

    .line 349
    :goto_7
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 350
    .line 351
    if-nez v9, :cond_a

    .line 352
    .line 353
    if-eqz v8, :cond_9

    .line 354
    .line 355
    goto :goto_8

    .line 356
    :cond_9
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_a
    :goto_8
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 360
    .line 361
    :goto_9
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 362
    .line 363
    float-to-long v7, v2

    .line 364
    const-string v2, "display_max_refresh_rate"

    .line 365
    .line 366
    invoke-static {v2, v7, v8}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 367
    .line 368
    .line 369
    :cond_b
    :goto_a
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 370
    .line 371
    invoke-virtual {v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 376
    .line 377
    const/4 v9, 0x0

    .line 378
    if-eqz v8, :cond_d

    .line 379
    .line 380
    iget-object v8, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    .line 381
    .line 382
    if-nez v8, :cond_c

    .line 383
    .line 384
    move-object v8, v9

    .line 385
    :cond_c
    iget-object v8, v8, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->isDebuggableSupplier:Ljava/util/function/BooleanSupplier;

    .line 386
    .line 387
    invoke-interface {v8}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 388
    .line 389
    .line 390
    move-result v8

    .line 391
    if-eqz v8, :cond_e

    .line 392
    .line 393
    :cond_d
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->securedWindow:Z

    .line 394
    .line 395
    if-eqz v8, :cond_10

    .line 396
    .line 397
    :cond_e
    sget-boolean v8, Lcom/android/systemui/LsRune;->KEYGUARD_EM_TOKEN_CAPTURE_WINDOW:Z

    .line 398
    .line 399
    if-eqz v8, :cond_f

    .line 400
    .line 401
    iget-object v8, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->engineerModeManager:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 402
    .line 403
    iget-boolean v8, v8, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->isCaptureEnabled:Z

    .line 404
    .line 405
    if-nez v8, :cond_10

    .line 406
    .line 407
    :cond_f
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 408
    .line 409
    or-int/lit16 v8, v8, 0x2000

    .line 410
    .line 411
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 412
    .line 413
    goto :goto_b

    .line 414
    :cond_10
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 415
    .line 416
    and-int/lit16 v8, v8, -0x2001

    .line 417
    .line 418
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 419
    .line 420
    :goto_b
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 421
    .line 422
    if-eqz v7, :cond_11

    .line 423
    .line 424
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 425
    .line 426
    if-eqz v7, :cond_11

    .line 427
    .line 428
    move v7, v5

    .line 429
    goto :goto_c

    .line 430
    :cond_11
    move v7, v4

    .line 431
    :goto_c
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 432
    .line 433
    const v10, -0x20001

    .line 434
    .line 435
    .line 436
    if-eqz v8, :cond_12

    .line 437
    .line 438
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 439
    .line 440
    if-nez v8, :cond_14

    .line 441
    .line 442
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    .line 443
    .line 444
    if-nez v8, :cond_14

    .line 445
    .line 446
    :cond_12
    sget-boolean v8, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    .line 447
    .line 448
    if-eqz v8, :cond_13

    .line 449
    .line 450
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    .line 451
    .line 452
    if-nez v8, :cond_14

    .line 453
    .line 454
    :cond_13
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 455
    .line 456
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldIgnoreKeyguardTouches()Z

    .line 457
    .line 458
    .line 459
    move-result v8

    .line 460
    if-eqz v8, :cond_15

    .line 461
    .line 462
    :cond_14
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 463
    .line 464
    and-int/lit8 v7, v7, -0x9

    .line 465
    .line 466
    and-int/2addr v7, v10

    .line 467
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 468
    .line 469
    goto :goto_e

    .line 470
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 471
    .line 472
    .line 473
    move-result v8

    .line 474
    if-nez v8, :cond_17

    .line 475
    .line 476
    if-eqz v7, :cond_16

    .line 477
    .line 478
    goto :goto_d

    .line 479
    :cond_16
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 480
    .line 481
    or-int/lit8 v7, v7, 0x8

    .line 482
    .line 483
    and-int/2addr v7, v10

    .line 484
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 485
    .line 486
    goto :goto_e

    .line 487
    :cond_17
    :goto_d
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 488
    .line 489
    and-int/lit8 v7, v7, -0x9

    .line 490
    .line 491
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 492
    .line 493
    sget-boolean v8, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    .line 494
    .line 495
    const/high16 v11, 0x20000

    .line 496
    .line 497
    if-eqz v8, :cond_18

    .line 498
    .line 499
    or-int/2addr v7, v11

    .line 500
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 501
    .line 502
    goto :goto_e

    .line 503
    :cond_18
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    .line 504
    .line 505
    if-eqz v7, :cond_19

    .line 506
    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    if-eqz v7, :cond_19

    .line 512
    .line 513
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 514
    .line 515
    and-int/2addr v7, v10

    .line 516
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 517
    .line 518
    goto :goto_e

    .line 519
    :cond_19
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 520
    .line 521
    or-int/2addr v7, v11

    .line 522
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 523
    .line 524
    :goto_e
    sget-boolean v7, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    .line 525
    .line 526
    if-eqz v7, :cond_1a

    .line 527
    .line 528
    goto :goto_10

    .line 529
    :cond_1a
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 530
    .line 531
    if-nez v8, :cond_1c

    .line 532
    .line 533
    sget-boolean v8, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    .line 534
    .line 535
    if-eqz v8, :cond_1b

    .line 536
    .line 537
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    .line 538
    .line 539
    if-eqz v8, :cond_1b

    .line 540
    .line 541
    goto :goto_f

    .line 542
    :cond_1b
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 543
    .line 544
    const v10, -0x800001

    .line 545
    .line 546
    .line 547
    and-int/2addr v8, v10

    .line 548
    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 549
    .line 550
    goto :goto_10

    .line 551
    :cond_1c
    :goto_f
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 552
    .line 553
    const/high16 v10, 0x800000

    .line 554
    .line 555
    or-int/2addr v8, v10

    .line 556
    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 557
    .line 558
    :goto_10
    invoke-virtual {v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    .line 559
    .line 560
    .line 561
    move-result-object v8

    .line 562
    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 563
    .line 564
    const/4 v11, 0x2

    .line 565
    if-nez v10, :cond_20

    .line 566
    .line 567
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 568
    .line 569
    .line 570
    move-result v10

    .line 571
    if-nez v10, :cond_20

    .line 572
    .line 573
    sget-boolean v10, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    .line 574
    .line 575
    if-eqz v10, :cond_1d

    .line 576
    .line 577
    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    .line 578
    .line 579
    if-eqz v10, :cond_1d

    .line 580
    .line 581
    move v10, v4

    .line 582
    goto :goto_11

    .line 583
    :cond_1d
    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 584
    .line 585
    :goto_11
    if-eqz v10, :cond_1e

    .line 586
    .line 587
    goto :goto_12

    .line 588
    :cond_1e
    if-nez v7, :cond_1f

    .line 589
    .line 590
    iget-boolean v10, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    .line 591
    .line 592
    if-nez v10, :cond_1f

    .line 593
    .line 594
    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 595
    .line 596
    if-eqz v10, :cond_1f

    .line 597
    .line 598
    goto :goto_14

    .line 599
    :cond_1f
    const/4 v10, -0x1

    .line 600
    goto :goto_15

    .line 601
    :cond_20
    :goto_12
    iget-boolean v10, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    .line 602
    .line 603
    if-eqz v10, :cond_21

    .line 604
    .line 605
    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->screenOrientationNoSensor:Z

    .line 606
    .line 607
    if-nez v10, :cond_21

    .line 608
    .line 609
    move v10, v5

    .line 610
    goto :goto_13

    .line 611
    :cond_21
    move v10, v4

    .line 612
    :goto_13
    if-eqz v10, :cond_24

    .line 613
    .line 614
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 615
    .line 616
    .line 617
    move-result v10

    .line 618
    if-nez v10, :cond_23

    .line 619
    .line 620
    iget v10, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->rotation:I

    .line 621
    .line 622
    iget-object v12, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 623
    .line 624
    invoke-virtual {v12}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRotation()I

    .line 625
    .line 626
    .line 627
    move-result v13

    .line 628
    if-eq v10, v13, :cond_22

    .line 629
    .line 630
    invoke-virtual {v12}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRotation()I

    .line 631
    .line 632
    .line 633
    move-result v10

    .line 634
    iput v10, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->rotation:I

    .line 635
    .line 636
    const-string v12, "adjustScreenOrientation: rotation="

    .line 637
    .line 638
    const-string v13, "NotificationShadeWindowController"

    .line 639
    .line 640
    invoke-static {v12, v10, v13}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 641
    .line 642
    .line 643
    :cond_22
    iget v10, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->rotation:I

    .line 644
    .line 645
    if-ne v10, v11, :cond_23

    .line 646
    .line 647
    goto :goto_14

    .line 648
    :cond_23
    move v10, v11

    .line 649
    goto :goto_15

    .line 650
    :cond_24
    :goto_14
    const/4 v10, 0x5

    .line 651
    :goto_15
    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 652
    .line 653
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z

    .line 654
    .line 655
    .line 656
    move-result v8

    .line 657
    iget-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    .line 658
    .line 659
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    sget-object v12, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 663
    .line 664
    sget-object v13, Lcom/android/systemui/shade/ShadeWindowLogger$logApplyVisibility$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logApplyVisibility$2;

    .line 665
    .line 666
    const-string/jumbo v14, "systemui.shadewindow"

    .line 667
    .line 668
    .line 669
    iget-object v15, v10, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 670
    .line 671
    invoke-virtual {v15, v14, v12, v13, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 672
    .line 673
    .line 674
    move-result-object v9

    .line 675
    invoke-interface {v9, v8}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v15, v9}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 679
    .line 680
    .line 681
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 682
    .line 683
    if-eqz v9, :cond_26

    .line 684
    .line 685
    iget-object v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    .line 686
    .line 687
    if-eqz v9, :cond_25

    .line 688
    .line 689
    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 690
    .line 691
    check-cast v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;

    .line 692
    .line 693
    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;->this$1:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    .line 694
    .line 695
    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->mOverlays:Landroid/util/ArraySet;

    .line 696
    .line 697
    new-instance v12, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback$$ExternalSyntheticLambda0;

    .line 698
    .line 699
    invoke-direct {v12, v8}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v9, v12}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 703
    .line 704
    .line 705
    :cond_25
    const-string v8, "Visibility forced to be true"

    .line 706
    .line 707
    invoke-virtual {v10, v8}, Lcom/android/systemui/shade/ShadeWindowLogger;->d(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    move v8, v5

    .line 711
    :cond_26
    iget-object v9, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 712
    .line 713
    iget-object v10, v9, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 714
    .line 715
    if-eqz v10, :cond_28

    .line 716
    .line 717
    iget-boolean v10, v9, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->needsExpand:Z

    .line 718
    .line 719
    if-eq v8, v10, :cond_27

    .line 720
    .line 721
    goto :goto_16

    .line 722
    :cond_27
    invoke-virtual {v9, v5}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    .line 723
    .line 724
    .line 725
    :cond_28
    :goto_16
    iget-object v9, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->notificationShadeView:Landroid/view/ViewGroup;

    .line 726
    .line 727
    if-eqz v9, :cond_2b

    .line 728
    .line 729
    if-eqz v8, :cond_29

    .line 730
    .line 731
    move v8, v4

    .line 732
    goto :goto_17

    .line 733
    :cond_29
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    .line 734
    .line 735
    if-eqz v8, :cond_2a

    .line 736
    .line 737
    const/16 v8, 0x8

    .line 738
    .line 739
    goto :goto_17

    .line 740
    :cond_2a
    const/4 v8, 0x4

    .line 741
    :goto_17
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 742
    .line 743
    .line 744
    :cond_2b
    invoke-virtual {v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    .line 745
    .line 746
    .line 747
    move-result-object v8

    .line 748
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 749
    .line 750
    .line 751
    move-result v9

    .line 752
    const-wide/16 v12, -0x1

    .line 753
    .line 754
    if-eqz v9, :cond_33

    .line 755
    .line 756
    iget v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 757
    .line 758
    iget-object v10, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 759
    .line 760
    if-eq v9, v5, :cond_2c

    .line 761
    .line 762
    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFullscreenBouncer()Z

    .line 763
    .line 764
    .line 765
    move-result v9

    .line 766
    if-eqz v9, :cond_33

    .line 767
    .line 768
    :cond_2c
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    .line 769
    .line 770
    if-nez v9, :cond_33

    .line 771
    .line 772
    iget-object v9, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 773
    .line 774
    if-eqz v9, :cond_2d

    .line 775
    .line 776
    check-cast v9, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 777
    .line 778
    invoke-virtual {v9}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isDynamicLockEnabled()Z

    .line 779
    .line 780
    .line 781
    move-result v9

    .line 782
    goto :goto_18

    .line 783
    :cond_2d
    move v9, v4

    .line 784
    :goto_18
    if-eqz v9, :cond_2e

    .line 785
    .line 786
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->userScreenTimeOut:Z

    .line 787
    .line 788
    if-eqz v9, :cond_2e

    .line 789
    .line 790
    iput-wide v12, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 791
    .line 792
    iput-wide v12, v8, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 793
    .line 794
    goto :goto_1b

    .line 795
    :cond_2e
    if-nez v7, :cond_2f

    .line 796
    .line 797
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 798
    .line 799
    if-eqz v7, :cond_2f

    .line 800
    .line 801
    iget-wide v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    .line 802
    .line 803
    const-wide/16 v12, 0x2710

    .line 804
    .line 805
    cmp-long v2, v9, v12

    .line 806
    .line 807
    if-gez v2, :cond_32

    .line 808
    .line 809
    :goto_19
    move-wide v9, v12

    .line 810
    goto :goto_1a

    .line 811
    :cond_2f
    iget-object v2, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->context:Landroid/content/Context;

    .line 812
    .line 813
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 818
    .line 819
    .line 820
    move-result v2

    .line 821
    if-eqz v2, :cond_30

    .line 822
    .line 823
    iget-wide v12, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    .line 824
    .line 825
    sget-wide v14, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_ACCESSIBILITY:J

    .line 826
    .line 827
    cmp-long v2, v12, v14

    .line 828
    .line 829
    if-gez v2, :cond_30

    .line 830
    .line 831
    move-wide v9, v14

    .line 832
    goto :goto_1a

    .line 833
    :cond_30
    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    if-eqz v2, :cond_31

    .line 838
    .line 839
    iget-wide v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    .line 840
    .line 841
    sget-wide v12, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_FACE:J

    .line 842
    .line 843
    cmp-long v2, v9, v12

    .line 844
    .line 845
    if-gez v2, :cond_31

    .line 846
    .line 847
    goto :goto_19

    .line 848
    :cond_31
    iget-wide v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    .line 849
    .line 850
    :cond_32
    :goto_1a
    iput-wide v9, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 851
    .line 852
    const-wide/16 v9, 0x0

    .line 853
    .line 854
    iput-wide v9, v8, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 855
    .line 856
    goto :goto_1b

    .line 857
    :cond_33
    iput-wide v12, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 858
    .line 859
    iput-wide v12, v8, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 860
    .line 861
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 862
    .line 863
    .line 864
    move-result v2

    .line 865
    if-eqz v2, :cond_34

    .line 866
    .line 867
    iget v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 868
    .line 869
    if-ne v2, v5, :cond_34

    .line 870
    .line 871
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    .line 872
    .line 873
    if-nez v2, :cond_34

    .line 874
    .line 875
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    .line 876
    .line 877
    if-nez v2, :cond_34

    .line 878
    .line 879
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 880
    .line 881
    or-int/2addr v2, v11

    .line 882
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 883
    .line 884
    goto :goto_1c

    .line 885
    :cond_34
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 886
    .line 887
    and-int/lit8 v2, v2, -0x3

    .line 888
    .line 889
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 890
    .line 891
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 892
    .line 893
    .line 894
    move-result v2

    .line 895
    xor-int/2addr v2, v5

    .line 896
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 897
    .line 898
    if-eqz v7, :cond_35

    .line 899
    .line 900
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    .line 901
    .line 902
    .line 903
    move-result v7

    .line 904
    if-eq v7, v2, :cond_35

    .line 905
    .line 906
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 907
    .line 908
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 909
    .line 910
    .line 911
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 912
    .line 913
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 914
    .line 915
    .line 916
    :cond_35
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    .line 917
    .line 918
    if-eqz v2, :cond_36

    .line 919
    .line 920
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 921
    .line 922
    or-int/lit8 v2, v2, 0x20

    .line 923
    .line 924
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 925
    .line 926
    goto :goto_1d

    .line 927
    :cond_36
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 928
    .line 929
    and-int/lit8 v2, v2, -0x21

    .line 930
    .line 931
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 932
    .line 933
    :goto_1d
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 934
    .line 935
    if-eqz v2, :cond_37

    .line 936
    .line 937
    iget v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    .line 938
    .line 939
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 940
    .line 941
    goto :goto_1e

    .line 942
    :cond_37
    const/high16 v2, -0x40800000    # -1.0f

    .line 943
    .line 944
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 945
    .line 946
    :goto_1e
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 947
    .line 948
    .line 949
    move-result v2

    .line 950
    if-eqz v2, :cond_39

    .line 951
    .line 952
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z

    .line 953
    .line 954
    .line 955
    move-result v2

    .line 956
    if-eqz v2, :cond_38

    .line 957
    .line 958
    goto :goto_1f

    .line 959
    :cond_38
    move v2, v4

    .line 960
    goto :goto_20

    .line 961
    :cond_39
    :goto_1f
    move v2, v5

    .line 962
    :goto_20
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    .line 963
    .line 964
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    .line 965
    .line 966
    if-eqz v2, :cond_3a

    .line 967
    .line 968
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 969
    .line 970
    or-int/lit8 v2, v2, 0x10

    .line 971
    .line 972
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 973
    .line 974
    goto :goto_21

    .line 975
    :cond_3a
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 976
    .line 977
    and-int/lit8 v2, v2, -0x11

    .line 978
    .line 979
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 980
    .line 981
    :goto_21
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z

    .line 982
    .line 983
    .line 984
    move-result v2

    .line 985
    if-nez v2, :cond_3b

    .line 986
    .line 987
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 988
    .line 989
    const/high16 v3, 0x1000000

    .line 990
    .line 991
    or-int/2addr v2, v3

    .line 992
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 993
    .line 994
    goto :goto_22

    .line 995
    :cond_3b
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 996
    .line 997
    const v3, -0x1000001

    .line 998
    .line 999
    .line 1000
    and-int/2addr v2, v3

    .line 1001
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1002
    .line 1003
    :goto_22
    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;

    .line 1004
    .line 1005
    invoke-direct {v2, v0, v1, v4}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;Lcom/android/systemui/shade/NotificationShadeWindowState;I)V

    .line 1006
    .line 1007
    .line 1008
    invoke-static {v2, v5}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->applyWindowLayoutParams()V

    .line 1012
    .line 1013
    .line 1014
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    .line 1015
    .line 1016
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    .line 1017
    .line 1018
    if-eq v2, v3, :cond_3c

    .line 1019
    .line 1020
    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;

    .line 1021
    .line 1022
    invoke-direct {v2, v0, v5}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 1023
    .line 1024
    .line 1025
    invoke-static {v2}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    .line 1026
    .line 1027
    .line 1028
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->notifyStateChangedCallbacks()V

    .line 1029
    .line 1030
    .line 1031
    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;

    .line 1032
    .line 1033
    invoke-direct {v2, v0, v1, v5}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;Lcom/android/systemui/shade/NotificationShadeWindowState;I)V

    .line 1034
    .line 1035
    .line 1036
    invoke-static {v2, v5}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 1037
    .line 1038
    .line 1039
    return-void
.end method

.method public final applyWindowLayoutParams()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 25
    .line 26
    sget-object v3, Lcom/android/systemui/shade/ShadeWindowLogger$logApplyingWindowLayoutParams$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logApplyingWindowLayoutParams$2;

    .line 27
    .line 28
    const-string/jumbo v4, "systemui.shadewindow"

    .line 29
    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "updateViewLayout"

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 59
    .line 60
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public final batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 11
    .line 12
    add-int/lit8 p1, p1, -0x1

    .line 13
    .line 14
    iput p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->applyWindowLayoutParams()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "NotificationShadeWindowController:"

    .line 2
    .line 3
    const-string v0, "  mKeyguardMaxRefreshRate="

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    .line 10
    .line 11
    const-string v1, "  mKeyguardPreferredRefreshRate="

    .line 12
    .line 13
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    .line 18
    .line 19
    const-string v1, "  mDeferWindowLayoutParams="

    .line 20
    .line 21
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-static {p2, v0}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-eqz p2, :cond_0

    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const-string v0, "  "

    .line 69
    .line 70
    invoke-virtual {p2, v0, p1}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    new-instance p2, Lcom/android/systemui/dump/DumpsysTableLogger;

    .line 74
    .line 75
    sget-object v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->TABLE_HEADERS:Ljava/util/List;

    .line 76
    .line 77
    new-instance v1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 84
    .line 85
    .line 86
    sget-object p0, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer$toList$1;->INSTANCE:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer$toList$1;

    .line 87
    .line 88
    new-instance v2, Lkotlin/sequences/TransformingSequence;

    .line 89
    .line 90
    invoke-direct {v2, v1, p0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-string v1, "NotificationShadeWindowController"

    .line 98
    .line 99
    invoke-direct {p2, v1, v0, p0}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;Z)Z

    move-result p0

    return p0
.end method

.method public final isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;Z)Z
    .locals 16

    move-object/from16 v0, p1

    .line 4
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    if-nez v1, :cond_2

    iget v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    if-nez v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    if-gtz v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p0

    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v1, p0

    move v4, v3

    .line 5
    :goto_1
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    .line 7
    iget-object v6, v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    if-eqz v4, :cond_5

    .line 8
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 9
    iget-object v7, v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/android/systemui/keyguard/VisibilityController;->needToBeInvisibleWindow()Z

    move-result v7

    if-ne v7, v3, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_3

    :cond_4
    move v7, v2

    :goto_3
    if-eqz v7, :cond_8

    if-eqz v5, :cond_8

    move v4, v2

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_7

    .line 10
    iget-boolean v5, v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-eqz v5, :cond_6

    .line 11
    iget-object v5, v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v5, :cond_8

    invoke-interface {v5, v2}, Lcom/android/systemui/keyguard/VisibilityController;->resetForceInvisible(Z)V

    goto :goto_4

    .line 12
    :cond_6
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    goto :goto_4

    .line 13
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    :cond_8
    :goto_4
    sget-boolean v5, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v5, :cond_a

    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v5

    if-nez v5, :cond_a

    if-eqz v4, :cond_9

    .line 15
    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    if-eqz v5, :cond_9

    move v4, v2

    goto :goto_5

    :cond_9
    if-nez v4, :cond_a

    .line 16
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->resetForceInvisible(Z)V

    .line 17
    :cond_a
    :goto_5
    sget-boolean v5, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v5, :cond_f

    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    if-eqz v5, :cond_f

    .line 18
    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverAppShowing:Z

    if-eqz v5, :cond_c

    if-nez v4, :cond_c

    iget v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverType:I

    sget-object v6, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    const/16 v6, 0xf

    if-ne v5, v6, :cond_b

    move v5, v3

    goto :goto_6

    :cond_b
    move v5, v2

    :goto_6
    if-eqz v5, :cond_f

    .line 19
    :cond_c
    iget-boolean v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    if-nez v4, :cond_d

    iget v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverType:I

    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    move v2, v3

    :cond_e
    move v4, v2

    :cond_f
    if-nez p2, :cond_11

    .line 20
    iget-boolean v2, v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLastExpanded:Z

    if-eq v2, v4, :cond_10

    goto :goto_7

    :cond_10
    move-object v0, v1

    goto :goto_8

    .line 21
    :cond_11
    :goto_7
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    xor-int/2addr v2, v3

    sget-object v3, Lcom/android/systemui/util/LogUtil;->beginTimes:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    .line 22
    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    iget-boolean v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    iget-boolean v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 23
    iget-boolean v8, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    iget v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    iget v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    .line 24
    iget-boolean v11, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    iget-boolean v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    iget-boolean v13, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    .line 25
    iget-boolean v14, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    iget-boolean v15, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverAppShowing:Z

    iget v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverType:I

    move-object/from16 p0, v1

    const-string v1, "isExpanded="

    move/from16 p1, v0

    const-string v0, "\n!forceCollapsed="

    move/from16 p2, v14

    const-string v14, ", keyguard="

    .line 26
    invoke-static {v1, v4, v0, v2, v14}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", panel="

    const-string v2, ", fadingAway="

    .line 27
    invoke-static {v0, v3, v1, v5, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", bouncer="

    const-string v2, ", headsUp="

    invoke-static {v0, v6, v1, v7, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", scrim="

    const-string v2, ", blur="

    invoke-static {v0, v8, v1, v9, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", launchingActivity="

    const-string v2, ", dozing="

    invoke-static {v0, v10, v1, v11, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", forceInvisible="

    const-string v2, ", coverClosed="

    invoke-static {v0, v12, v1, v13, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", coverApp="

    const-string v2, ", coverType="

    move/from16 v3, p2

    invoke-static {v0, v3, v1, v15, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v1, p1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 30
    :goto_8
    iget-boolean v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLastExpanded:Z

    if-eq v1, v4, :cond_12

    .line 31
    iget-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isExpandedChangedListeners:Ljava/util/List;

    .line 32
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 33
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 34
    :cond_12
    iput-boolean v4, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLastExpanded:Z

    return v4
.end method

.method public final notifyStateChangedCallbacks()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda7;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda7;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda8;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda8;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v2, v1

    .line 50
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 53
    .line 54
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 55
    .line 56
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 57
    .line 58
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 59
    .line 60
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 61
    .line 62
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 63
    .line 64
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 65
    .line 66
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dreaming:Z

    .line 67
    .line 68
    invoke-interface/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;->onStateChanged(ZZZZZZZ)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isKeyguardScreenRotationAllowed()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLastKeyguardRotationAllowed:Z

    .line 10
    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 16
    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLastKeyguardRotationAllowed:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onRemoteInputActive(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onShadeExpansionFullyChanged(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onThemeChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mNeutralColorsLock:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    or-int/lit8 v0, v1, 0x10

    .line 23
    .line 24
    or-int/lit16 v0, v0, 0x2000

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    and-int/lit8 v0, v1, -0x11

    .line 28
    .line 29
    and-int/lit16 v0, v0, -0x2001

    .line 30
    .line 31
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v1, p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final setForcePluginOpen(Ljava/lang/Object;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 17
    .line 18
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    xor-int/lit8 p2, p2, 0x1

    .line 25
    .line 26
    iput-boolean p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 27
    .line 28
    iget-boolean p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 29
    .line 30
    if-eq p1, p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    iget-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final setKeyguardFadingAway(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;I)V

    .line 10
    .line 11
    .line 12
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 22
    .line 23
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final setNotificationShadeFocusable(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 7
    .line 8
    sget-object v2, Lcom/android/systemui/shade/ShadeWindowLogger$logShadeFocusable$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logShadeFocusable$2;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 12
    .line 13
    const-string/jumbo v4, "systemui.shadewindow"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 27
    .line 28
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final setPanelVisible(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 8
    .line 9
    if-ne v1, p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 18
    .line 19
    sget-object v3, Lcom/android/systemui/shade/ShadeWindowLogger$logShadeVisibleAndFocusable$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logShadeVisibleAndFocusable$2;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    iget-object v1, v1, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 23
    .line 24
    const-string/jumbo v5, "systemui.shadewindow"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 35
    .line 36
    .line 37
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    .line 38
    .line 39
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setRequestTopUi(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
