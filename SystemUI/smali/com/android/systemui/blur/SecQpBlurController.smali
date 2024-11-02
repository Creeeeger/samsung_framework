.class public final Lcom/android/systemui/blur/SecQpBlurController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final backgroundColorId:I

.field public mAnimatedFraction:F

.field public mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

.field public mBlurAnimator:Landroid/animation/ValueAnimator;

.field public final mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

.field public final mCaptureInterpolator:Landroid/view/animation/PathInterpolator;

.field public mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

.field public final mContext:Landroid/content/Context;

.field public final mInterpolator:Landroid/view/animation/PathInterpolator;

.field public mIsBlurReduced:Z

.field public mIsBouncerShowing:Z

.field public mIsMirrorVisible:Z

.field public mIsWakingUp:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public final mLazyUnlockedScreenOffAnimationController:Ldagger/Lazy;

.field public mNeedToUpdateByConfig:Z

.field public final mPanelCollapseConfig:Lcom/android/systemui/util/ConfigurationState;

.field public mPanelExpandedFraction:F

.field public mQsExpanded:Z

.field public mRoot:Lcom/android/systemui/shade/NotificationShadeWindowView;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mShadeControllerImpl:Lcom/android/systemui/shade/ShadeControllerImpl;

.field public mShouldUseBlurFilter:Z

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mUpdateBlurCallback:Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

.field public mWallpaperBlurRadius:F

.field public mWindowBlurRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/view/Choreographer;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/shade/ShadeControllerImpl;Ldagger/Lazy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Landroid/view/Choreographer;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaper;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/shade/ShadeControllerImpl;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p3

    .line 4
    move-object/from16 v3, p8

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v4, Lcom/android/systemui/util/ConfigurationState;

    .line 10
    .line 11
    sget-object v5, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->THEME_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 12
    .line 13
    sget-object v6, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ASSET_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 14
    .line 15
    sget-object v7, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 16
    .line 17
    filled-new-array {v5, v6, v7}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-direct {v4, v5}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    iput-object v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 29
    .line 30
    new-instance v4, Lcom/android/systemui/util/ConfigurationState;

    .line 31
    .line 32
    sget-object v5, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 33
    .line 34
    filled-new-array {v7, v5}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-direct {v4, v5}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    iput-object v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelCollapseConfig:Lcom/android/systemui/util/ConfigurationState;

    .line 46
    .line 47
    const v4, 0x7f060484

    .line 48
    .line 49
    .line 50
    iput v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->backgroundColorId:I

    .line 51
    .line 52
    new-instance v4, Landroid/view/animation/PathInterpolator;

    .line 53
    .line 54
    const v5, 0x3f2147ae    # 0.63f

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    const v7, 0x3f547ae1    # 0.83f

    .line 59
    .line 60
    .line 61
    invoke-direct {v4, v5, v6, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 62
    .line 63
    .line 64
    iput-object v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 65
    .line 66
    new-instance v4, Landroid/view/animation/PathInterpolator;

    .line 67
    .line 68
    const v5, 0x3e947ae1    # 0.29f

    .line 69
    .line 70
    .line 71
    const v7, 0x3da3d70a    # 0.08f

    .line 72
    .line 73
    .line 74
    const v8, 0x3f30a3d7    # 0.69f

    .line 75
    .line 76
    .line 77
    const v9, 0x3f7ae148    # 0.98f

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, v5, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 81
    .line 82
    .line 83
    iput-object v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mCaptureInterpolator:Landroid/view/animation/PathInterpolator;

    .line 84
    .line 85
    iput v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mAnimatedFraction:F

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    iput-boolean v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsMirrorVisible:Z

    .line 89
    .line 90
    iput-boolean v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBouncerShowing:Z

    .line 91
    .line 92
    iput-boolean v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsWakingUp:Z

    .line 93
    .line 94
    iput-object v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    iput-object v2, v0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 97
    .line 98
    move-object v5, p4

    .line 99
    iput-object v5, v0, Lcom/android/systemui/blur/SecQpBlurController;->mChoreographer:Landroid/view/Choreographer;

    .line 100
    .line 101
    move-object v5, p5

    .line 102
    iput-object v5, v0, Lcom/android/systemui/blur/SecQpBlurController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 103
    .line 104
    move-object/from16 v5, p6

    .line 105
    .line 106
    iput-object v5, v0, Lcom/android/systemui/blur/SecQpBlurController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 107
    .line 108
    move-object/from16 v5, p7

    .line 109
    .line 110
    iput-object v5, v0, Lcom/android/systemui/blur/SecQpBlurController;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 111
    .line 112
    iput-object v3, v0, Lcom/android/systemui/blur/SecQpBlurController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 113
    .line 114
    new-instance v5, Lcom/android/systemui/blur/QSColorCurve;

    .line 115
    .line 116
    invoke-direct {v5, p1}, Lcom/android/systemui/blur/QSColorCurve;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    iput-object v5, v0, Lcom/android/systemui/blur/SecQpBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    .line 120
    .line 121
    new-instance v5, Lcom/android/systemui/blur/SecQpBlurController$2;

    .line 122
    .line 123
    invoke-direct {v5, p0}, Lcom/android/systemui/blur/SecQpBlurController$2;-><init>(Lcom/android/systemui/blur/SecQpBlurController;)V

    .line 124
    .line 125
    .line 126
    iput-object v5, v0, Lcom/android/systemui/blur/SecQpBlurController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    .line 127
    .line 128
    new-instance v5, Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    invoke-direct {v5, p0}, Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/blur/SecQpBlurController;)V

    .line 131
    .line 132
    .line 133
    iput-object v5, v0, Lcom/android/systemui/blur/SecQpBlurController;->mUpdateBlurCallback:Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    const-string v5, "accessibility_reduce_transparency"

    .line 136
    .line 137
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const-string/jumbo v7, "minimal_battery_use"

    .line 142
    .line 143
    .line 144
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    const-string/jumbo v8, "ultra_powersaving_mode"

    .line 149
    .line 150
    .line 151
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    filled-new-array {v6, v7, v8}, [Landroid/net/Uri;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v3, p0, v6}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 160
    .line 161
    .line 162
    move-object v3, p2

    .line 163
    invoke-virtual {p2, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 164
    .line 165
    .line 166
    invoke-interface {p3, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 167
    .line 168
    .line 169
    move-object/from16 v2, p9

    .line 170
    .line 171
    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 172
    .line 173
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v2, p10

    .line 177
    .line 178
    iput-object v2, v0, Lcom/android/systemui/blur/SecQpBlurController;->mShadeControllerImpl:Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 179
    .line 180
    sget-object v2, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 181
    .line 182
    const-string v3, "SecQpBlurController"

    .line 183
    .line 184
    invoke-virtual {v2, v3, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    .line 185
    .line 186
    .line 187
    move-object/from16 v2, p11

    .line 188
    .line 189
    iput-object v2, v0, Lcom/android/systemui/blur/SecQpBlurController;->mLazyUnlockedScreenOffAnimationController:Ldagger/Lazy;

    .line 190
    .line 191
    new-instance v2, Lcom/android/systemui/blur/SecQpBlurController$1;

    .line 192
    .line 193
    invoke-direct {v2, p0}, Lcom/android/systemui/blur/SecQpBlurController$1;-><init>(Lcom/android/systemui/blur/SecQpBlurController;)V

    .line 194
    .line 195
    .line 196
    move-object/from16 v3, p12

    .line 197
    .line 198
    invoke-virtual {v3, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_0

    .line 210
    .line 211
    const/4 v4, 0x1

    .line 212
    :cond_0
    iput-boolean v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    .line 213
    .line 214
    return-void
.end method


# virtual methods
.method public final doCaptureContainerAlpha(FLcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "SecQpBlurController"

    .line 6
    .line 7
    const-string p1, "doCapturedBlur: mCapturedBlurController is null"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    cmpl-float v0, p1, v0

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 37
    .line 38
    check-cast v3, Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    if-lez v0, :cond_6

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 47
    .line 48
    check-cast v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mLastBlurType:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    if-eq v0, p2, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    move v1, v2

    .line 64
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->captureAndSetBackground(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V

    .line 67
    .line 68
    .line 69
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 70
    .line 71
    check-cast p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 74
    .line 75
    .line 76
    :goto_2
    return-void
.end method

.method public final doFrame()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/systemui/blur/SecQpBlurController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/blur/SecQpBlurController;->mCaptureInterpolator:Landroid/view/animation/PathInterpolator;

    .line 11
    .line 12
    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsMirrorVisible:Z

    .line 13
    .line 14
    if-nez v3, :cond_2

    .line 15
    .line 16
    iget-boolean v3, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBouncerShowing:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget v3, v0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    :goto_1
    iget v2, v0, Lcom/android/systemui/blur/SecQpBlurController;->mAnimatedFraction:F

    .line 29
    .line 30
    :goto_2
    iget-object v3, v0, Lcom/android/systemui/blur/SecQpBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lcom/android/systemui/blur/QSColorCurve;->setFraction(F)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mLazyUnlockedScreenOffAnimationController:Ldagger/Lazy;

    .line 36
    .line 37
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x0

    .line 48
    const-string v6, "SecQpBlurController"

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    cmpl-float v2, v2, v5

    .line 53
    .line 54
    if-lez v2, :cond_3

    .line 55
    .line 56
    const-string v2, "ScreenOff animation is running. & fraction: 0"

    .line 57
    .line 58
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_3
    move v2, v5

    .line 62
    move v7, v2

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    iget v4, v3, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    .line 65
    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/blur/SecQpBlurController;->getCustomBlurPercentage()F

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    mul-float/2addr v7, v4

    .line 71
    :goto_3
    const/4 v4, 0x0

    .line 72
    if-eqz v1, :cond_14

    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/blur/SecQpBlurController;->shouldUseBlurFilter()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_7

    .line 79
    .line 80
    iget-object v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 81
    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    const-string v1, "doWallpaperBlur: mKeyguardWallpaper is null"

    .line 85
    .line 86
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto/16 :goto_a

    .line 90
    .line 91
    :cond_5
    iget v3, v0, Lcom/android/systemui/blur/SecQpBlurController;->mWallpaperBlurRadius:F

    .line 92
    .line 93
    cmpl-float v3, v3, v7

    .line 94
    .line 95
    if-nez v3, :cond_6

    .line 96
    .line 97
    iget-boolean v3, v0, Lcom/android/systemui/blur/SecQpBlurController;->mNeedToUpdateByConfig:Z

    .line 98
    .line 99
    if-nez v3, :cond_6

    .line 100
    .line 101
    goto/16 :goto_a

    .line 102
    .line 103
    :cond_6
    const/high16 v3, 0x40000000    # 2.0f

    .line 104
    .line 105
    div-float/2addr v7, v3

    .line 106
    float-to-int v3, v7

    .line 107
    const-string v5, "doWallPaperBlur: "

    .line 108
    .line 109
    invoke-static {v5, v3, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlur(I)V

    .line 115
    .line 116
    .line 117
    int-to-float v1, v3

    .line 118
    iput v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mWallpaperBlurRadius:F

    .line 119
    .line 120
    iput-boolean v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mNeedToUpdateByConfig:Z

    .line 121
    .line 122
    goto/16 :goto_a

    .line 123
    .line 124
    :cond_7
    float-to-int v1, v7

    .line 125
    iget-object v7, v0, Lcom/android/systemui/blur/SecQpBlurController;->mRoot:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 126
    .line 127
    if-nez v7, :cond_8

    .line 128
    .line 129
    const-string v1, "doWindowBlur: mRoot is null"

    .line 130
    .line 131
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    goto/16 :goto_a

    .line 135
    .line 136
    :cond_8
    iget v7, v0, Lcom/android/systemui/blur/SecQpBlurController;->mWindowBlurRadius:F

    .line 137
    .line 138
    int-to-float v8, v1

    .line 139
    cmpl-float v7, v7, v8

    .line 140
    .line 141
    if-nez v7, :cond_9

    .line 142
    .line 143
    iget-boolean v7, v0, Lcom/android/systemui/blur/SecQpBlurController;->mNeedToUpdateByConfig:Z

    .line 144
    .line 145
    if-nez v7, :cond_9

    .line 146
    .line 147
    goto/16 :goto_a

    .line 148
    .line 149
    :cond_9
    iget-object v7, v0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 150
    .line 151
    if-eqz v7, :cond_a

    .line 152
    .line 153
    iget v7, v7, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    .line 154
    .line 155
    const/high16 v9, 0x3f800000    # 1.0f

    .line 156
    .line 157
    cmpl-float v7, v7, v9

    .line 158
    .line 159
    if-eqz v7, :cond_b

    .line 160
    .line 161
    :cond_a
    iget-boolean v7, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    .line 162
    .line 163
    if-eqz v7, :cond_c

    .line 164
    .line 165
    :cond_b
    const/4 v7, 0x1

    .line 166
    goto :goto_4

    .line 167
    :cond_c
    move v7, v4

    .line 168
    :goto_4
    new-instance v15, Landroid/view/SemBlurInfo$Builder;

    .line 169
    .line 170
    invoke-direct {v15, v4}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 171
    .line 172
    .line 173
    iget-object v9, v0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 174
    .line 175
    if-eqz v9, :cond_e

    .line 176
    .line 177
    iget-object v9, v9, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 178
    .line 179
    check-cast v9, Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    .line 180
    .line 181
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-nez v9, :cond_d

    .line 186
    .line 187
    const/4 v9, 0x1

    .line 188
    goto :goto_5

    .line 189
    :cond_d
    move v9, v4

    .line 190
    :goto_5
    if-nez v9, :cond_e

    .line 191
    .line 192
    iget v10, v3, Lcom/android/systemui/blur/QSColorCurve;->saturation:F

    .line 193
    .line 194
    iget v11, v3, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    .line 195
    .line 196
    iget v12, v3, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    .line 197
    .line 198
    iget v13, v3, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    .line 199
    .line 200
    iget v14, v3, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    .line 201
    .line 202
    iget v3, v3, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    .line 203
    .line 204
    move-object v9, v15

    .line 205
    move-object v5, v15

    .line 206
    move v15, v3

    .line 207
    invoke-virtual/range {v9 .. v15}, Landroid/view/SemBlurInfo$Builder;->setColorCurve(FFFFFF)Landroid/view/SemBlurInfo$Builder;

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_e
    move-object v5, v15

    .line 212
    :goto_6
    if-eqz v7, :cond_f

    .line 213
    .line 214
    move v3, v4

    .line 215
    goto :goto_7

    .line 216
    :cond_f
    move v3, v1

    .line 217
    :goto_7
    invoke-virtual {v5, v3}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 218
    .line 219
    .line 220
    if-eqz v7, :cond_10

    .line 221
    .line 222
    const/4 v8, 0x0

    .line 223
    :cond_10
    iput v8, v0, Lcom/android/systemui/blur/SecQpBlurController;->mWindowBlurRadius:F

    .line 224
    .line 225
    iput-boolean v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mNeedToUpdateByConfig:Z

    .line 226
    .line 227
    iget-object v3, v0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 228
    .line 229
    const-string v8, ""

    .line 230
    .line 231
    if-eqz v3, :cond_12

    .line 232
    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v9, " isBackgroundVisible = "

    .line 236
    .line 237
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v9, v0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 241
    .line 242
    iget-object v9, v9, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 243
    .line 244
    check-cast v9, Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    .line 245
    .line 246
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    if-nez v9, :cond_11

    .line 251
    .line 252
    const/4 v9, 0x1

    .line 253
    goto :goto_8

    .line 254
    :cond_11
    move v9, v4

    .line 255
    :goto_8
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    goto :goto_9

    .line 263
    :cond_12
    move-object v3, v8

    .line 264
    :goto_9
    iget-object v9, v0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 265
    .line 266
    if-eqz v9, :cond_13

    .line 267
    .line 268
    new-instance v8, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v9, " getMaxAlpha = "

    .line 271
    .line 272
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v9, v0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 276
    .line 277
    iget v9, v9, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    .line 278
    .line 279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    :cond_13
    const-string v9, "Window Blur: "

    .line 287
    .line 288
    const-string v10, " shouldBlockBlur: "

    .line 289
    .line 290
    const-string v11, " mIsBlurReduced = "

    .line 291
    .line 292
    invoke-static {v9, v1, v10, v7, v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    iget-boolean v7, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    .line 297
    .line 298
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    iget-object v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mRoot:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 315
    .line 316
    invoke-virtual {v5}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v1, v3}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 321
    .line 322
    .line 323
    goto :goto_a

    .line 324
    :cond_14
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    .line 325
    .line 326
    if-eqz v1, :cond_15

    .line 327
    .line 328
    iget-boolean v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBouncerShowing:Z

    .line 329
    .line 330
    if-nez v1, :cond_15

    .line 331
    .line 332
    sget-object v1, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->QUICK_PANEL:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    .line 333
    .line 334
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/blur/SecQpBlurController;->doCaptureContainerAlpha(FLcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V

    .line 335
    .line 336
    .line 337
    :cond_15
    :goto_a
    iget-object v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 338
    .line 339
    if-eqz v1, :cond_17

    .line 340
    .line 341
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 342
    .line 343
    check-cast v1, Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    .line 344
    .line 345
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_16

    .line 350
    .line 351
    const/4 v4, 0x1

    .line 352
    :cond_16
    if-eqz v4, :cond_17

    .line 353
    .line 354
    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 355
    .line 356
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    .line 357
    .line 358
    iget-object v1, v1, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    .line 359
    .line 360
    iget-object v1, v1, Lcom/android/systemui/blur/SecQpBlurController;->mLazyUnlockedScreenOffAnimationController:Ldagger/Lazy;

    .line 361
    .line 362
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    check-cast v1, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 367
    .line 368
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-nez v1, :cond_17

    .line 373
    .line 374
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 375
    .line 376
    check-cast v1, Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    .line 377
    .line 378
    iget v0, v0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    .line 379
    .line 380
    mul-float/2addr v2, v0

    .line 381
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 382
    .line 383
    .line 384
    :cond_17
    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SecQpBlurController =================================================================================== "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "  radius = "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    .line 19
    .line 20
    iget v2, v2, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " custom_blur_level = "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/blur/SecQpBlurController;->getCustomBlurPercentage()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " mWindowBlurRadius = "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mWindowBlurRadius:F

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, " mWallpaperBlurRadius = "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mWallpaperBlurRadius:F

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "  mIsMirrorVisible = "

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsMirrorVisible:Z

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, " mIsBouncerShowing = "

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBouncerShowing:Z

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, " shouldUseBlurFilter = "

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/blur/SecQpBlurController;->shouldUseBlurFilter()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, " bgColor = "

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    iget p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->backgroundColorId:I

    .line 106
    .line 107
    invoke-virtual {v2, p0}, Landroid/content/Context;->getColor(I)I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    const-string p0, "======================================================================================================= "

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    return-object v0
.end method

.method public final getCustomBlurPercentage()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f0b010f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-float p0, p0

    .line 15
    const/high16 v0, 0x42c80000    # 100.0f

    .line 16
    .line 17
    div-float/2addr p0, v0

    .line 18
    return p0
.end method

.method public final makeAnimationAndRun(FFI)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput p1, v0, v1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    aput p2, v0, p1

    .line 9
    .line 10
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    int-to-long p2, p3

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    .line 18
    new-instance p2, Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/blur/SecQpBlurController;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Lcom/android/systemui/blur/SecQpBlurController$3;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/android/systemui/blur/SecQpBlurController$3;-><init>(Lcom/android/systemui/blur/SecQpBlurController;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    return-void
.end method

.method public final notifyWallpaper(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBouncerShowing:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v2, "notifyWallpaper("

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ")"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "SecQpBlurController"

    .line 46
    .line 47
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 51
    .line 52
    check-cast p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    xor-int/2addr p1, v1

    .line 59
    invoke-interface {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final onChanged(Landroid/net/Uri;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "accessibility_reduce_transparency"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    iget-object v4, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v5, "SecQpBlurController"

    .line 19
    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v2, v3

    .line 34
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string/jumbo v0, "onChanged: accessibility_reduce_transparency: "

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    .line 45
    .line 46
    invoke-static {p1, v0, v5}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    const v0, 0x3e99999a    # 0.3f

    .line 54
    .line 55
    .line 56
    iput v0, p1, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    .line 57
    .line 58
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    .line 63
    .line 64
    iget-boolean v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    .line 65
    .line 66
    const/high16 v2, 0x3f800000    # 1.0f

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    iput v2, p1, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iput v2, p1, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    .line 82
    .line 83
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updatePanel()V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    .line 87
    .line 88
    if-eqz p0, :cond_9

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->updateContainerVisibility()V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    const-string/jumbo v0, "minimal_battery_use"

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    const-string/jumbo v0, "ultra_powersaving_mode"

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_9

    .line 119
    .line 120
    :cond_6
    const-string/jumbo p1, "onChanged: minimal_battery_use || ultra_powersaving_mode"

    .line 121
    .line 122
    .line 123
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 135
    .line 136
    and-int/lit8 p1, p1, 0x20

    .line 137
    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    move v2, v3

    .line 142
    :goto_2
    if-eqz v2, :cond_9

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 145
    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updatePanel()V

    .line 149
    .line 150
    .line 151
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    .line 152
    .line 153
    if-eqz p0, :cond_9

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->updateContainerVisibility()V

    .line 156
    .line 157
    .line 158
    :cond_9
    :goto_3
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mNeedToUpdateByConfig:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updatePanel()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->updateContainerVisibility()V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/blur/SecQpBlurController;->doFrame()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelCollapseConfig:Lcom/android/systemui/util/ConfigurationState;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 45
    .line 46
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v3, p0, Lcom/android/systemui/blur/SecQpBlurController;->mShadeControllerImpl:Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 51
    .line 52
    if-ne v1, v2, :cond_3

    .line 53
    .line 54
    iget-object p0, v3, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->animateCollapseQs(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    cmpl-float p0, p0, v1

    .line 64
    .line 65
    if-lez p0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/android/systemui/shade/ShadeControllerImpl;->instantCollapseShade()V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    return-void
.end method

.method public final onFolderStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updatePanel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    const v5, 0x3eb33333    # 0.35f

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const v5, 0x3f19999a    # 0.6f

    .line 33
    .line 34
    .line 35
    :goto_1
    mul-float/2addr v1, v5

    .line 36
    iget v5, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->dragDownPxAmount:F

    .line 37
    .line 38
    div-float/2addr v5, v1

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 46
    .line 47
    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget v5, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    .line 52
    .line 53
    cmpl-float v5, v5, p1

    .line 54
    .line 55
    if-eqz v5, :cond_9

    .line 56
    .line 57
    iput p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    .line 58
    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v5, "onPanelExpansionChanged mPanelExpandedFraction: "

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v5, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    .line 68
    .line 69
    const-string v6, "SecQpBlurController"

    .line 70
    .line 71
    invoke-static {p1, v5, v6}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/blur/QSColorCurve;->isCoverDisplay()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    const/high16 p1, 0x43ae0000    # 348.0f

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    if-eqz v4, :cond_4

    .line 86
    .line 87
    const/high16 p1, 0x428c0000    # 70.0f

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    const/high16 p1, 0x43480000    # 200.0f

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    const/high16 p1, 0x43c80000    # 400.0f

    .line 98
    .line 99
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/blur/SecQpBlurController;->getCustomBlurPercentage()F

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    mul-float/2addr v4, p1

    .line 104
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_6

    .line 109
    .line 110
    move v2, v3

    .line 111
    :cond_6
    if-eqz v2, :cond_9

    .line 112
    .line 113
    iget p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    .line 114
    .line 115
    cmpl-float v0, p1, v1

    .line 116
    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    iget v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mWindowBlurRadius:F

    .line 120
    .line 121
    cmpl-float v0, v0, v4

    .line 122
    .line 123
    if-nez v0, :cond_8

    .line 124
    .line 125
    :cond_7
    const/4 v0, 0x0

    .line 126
    cmpl-float p1, p1, v0

    .line 127
    .line 128
    if-nez p1, :cond_9

    .line 129
    .line 130
    iget p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mWindowBlurRadius:F

    .line 131
    .line 132
    cmpl-float p1, p1, v0

    .line 133
    .line 134
    if-eqz p1, :cond_9

    .line 135
    .line 136
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/blur/SecQpBlurController;->doFrame()V

    .line 137
    .line 138
    .line 139
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mChoreographer:Landroid/view/Choreographer;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mUpdateBlurCallback:Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

    .line 142
    .line 143
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, v0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mStatusBarState:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput p1, v0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mStatusBarState:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updatePanel()V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    iput p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    .line 21
    .line 22
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mChoreographer:Landroid/view/Choreographer;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mUpdateBlurCallback:Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final setBrightnessMirrorVisible(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setBrightnessMirrorVisible: "

    .line 2
    .line 3
    .line 4
    const-string v1, "SecQpBlurController"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsMirrorVisible:Z

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/16 p1, 0x96

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/blur/SecQpBlurController;->makeAnimationAndRun(FFI)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 p1, 0xc8

    .line 23
    .line 24
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/systemui/blur/SecQpBlurController;->makeAnimationAndRun(FFI)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final shouldUseBlurFilter()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    if-nez v0, :cond_5

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 17
    .line 18
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 19
    .line 20
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/systemui/blur/SecQpBlurController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 44
    .line 45
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    sget-object v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    .line 50
    .line 51
    aget v3, v4, v3

    .line 52
    .line 53
    const/4 v4, 0x7

    .line 54
    if-ne v3, v4, :cond_2

    .line 55
    .line 56
    move v3, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v3, v2

    .line 59
    :goto_1
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 64
    .line 65
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->hasLockscreenWallpaper()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    if-nez v3, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move v1, v2

    .line 81
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mShouldUseBlurFilter:Z

    .line 82
    .line 83
    if-eq v1, v0, :cond_4

    .line 84
    .line 85
    iput-boolean v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mShouldUseBlurFilter:Z

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 88
    .line 89
    if-eqz p0, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updatePanel()V

    .line 92
    .line 93
    .line 94
    :cond_4
    move v2, v1

    .line 95
    :cond_5
    return v2
.end method
