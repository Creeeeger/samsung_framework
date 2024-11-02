.class public final Lcom/android/systemui/ScreenDecorations;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEBUG_COLOR:Z

.field public static final DEBUG_DISABLE_SCREEN_DECORATIONS:Z

.field public static final DEBUG_PRIVACY_INDICATOR:Z

.field public static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

.field public static final DISPLAY_CUTOUT_IDS:[I


# instance fields
.field public blockUpdateStatusIconContainerLayout:Z

.field public final mAODStateSettingsCallback:Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mAuthControllerCallback:Lcom/android/systemui/ScreenDecorations$4;

.field public mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

.field public final mCameraTransitionCallback:Lcom/android/systemui/ScreenDecorations$1;

.field public mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

.field public final mContext:Landroid/content/Context;

.field public final mCoverDisplayInfo:Landroid/view/DisplayInfo;

.field public final mCoverDotViewController:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

.field public mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

.field public mCoverPendingConfigChange:Z

.field public mCoverRotation:I

.field public mCoverRoundedCornerFactory:Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;

.field public mCoverWindowContext:Landroid/content/Context;

.field public mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

.field public mDisplayCutout:Landroid/view/DisplayCutout;

.field protected mDisplayInfo:Landroid/view/DisplayInfo;

.field mDisplayListener:Lcom/android/systemui/settings/DisplayTracker$Callback;

.field public mDisplayMode:Landroid/view/Display$Mode;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field mDisplayUniqueId:Ljava/lang/String;

.field public final mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

.field public final mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

.field public mExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

.field public final mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

.field public final mFaceScanningViewId:I

.field public final mFillUDCSettingsCallback:Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;

.field public mHandler:Landroid/os/Handler;

.field protected mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

.field public final mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public mIsDotViewVisible:Z

.field protected mIsRegistered:Z

.field public final mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field protected mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

.field public mPendingConfigChange:Z

.field mPrivacyDotCreateListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$CreateListener;

.field mPrivacyDotShowingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

.field public mProviderRefreshToken:I

.field public mRotation:I

.field protected mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

.field protected mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

.field mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

.field mScreenDecorHwcWindow:Landroid/view/ViewGroup;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mThreadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

.field public mTintColor:I

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "debug.disable_screen_decorations"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    .line 9
    .line 10
    const-string v0, "debug.screenshot_rounded_corners"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    .line 17
    .line 18
    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    .line 19
    .line 20
    const v0, 0x7f0a034b

    .line 21
    .line 22
    .line 23
    const v1, 0x7f0a0349

    .line 24
    .line 25
    .line 26
    const v2, 0x7f0a0348

    .line 27
    .line 28
    .line 29
    const v3, 0x7f0a034a

    .line 30
    .line 31
    .line 32
    filled-new-array {v2, v3, v0, v1}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/android/systemui/ScreenDecorations;->DISPLAY_CUTOUT_IDS:[I

    .line 37
    .line 38
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_PRIVACY_INDICATOR:Z

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/util/concurrency/ThreadFactory;Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;Lcom/android/systemui/decor/FaceScanningProviderFactory;Lcom/android/systemui/log/ScreenDecorationsLogger;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/decor/CoverPrivacyDotViewController;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lcom/android/systemui/ScreenDecorations;->mProviderRefreshToken:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 10
    .line 11
    const/high16 v3, -0x1000000

    .line 12
    .line 13
    iput v3, v0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    .line 14
    .line 15
    new-instance v3, Landroid/view/DisplayInfo;

    .line 16
    .line 17
    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mCoverWindowContext:Landroid/content/Context;

    .line 23
    .line 24
    new-instance v3, Landroid/view/DisplayInfo;

    .line 25
    .line 26
    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mCoverDisplayInfo:Landroid/view/DisplayInfo;

    .line 30
    .line 31
    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 32
    .line 33
    iput-boolean v1, v0, Lcom/android/systemui/ScreenDecorations;->blockUpdateStatusIconContainerLayout:Z

    .line 34
    .line 35
    new-instance v2, Lcom/android/systemui/ScreenDecorations$1;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mCameraTransitionCallback:Lcom/android/systemui/ScreenDecorations$1;

    .line 41
    .line 42
    new-instance v2, Lcom/android/systemui/ScreenDecorations$2;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$2;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mPrivacyDotCreateListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$CreateListener;

    .line 48
    .line 49
    new-instance v2, Lcom/android/systemui/ScreenDecorations$3;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 52
    .line 53
    .line 54
    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mPrivacyDotShowingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    .line 55
    .line 56
    new-instance v2, Lcom/android/systemui/ScreenDecorations$4;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$4;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 59
    .line 60
    .line 61
    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mAuthControllerCallback:Lcom/android/systemui/ScreenDecorations$4;

    .line 62
    .line 63
    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;

    .line 64
    .line 65
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    .line 66
    .line 67
    .line 68
    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mAODStateSettingsCallback:Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;

    .line 69
    .line 70
    new-instance v1, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    .line 74
    .line 75
    .line 76
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mFillUDCSettingsCallback:Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;

    .line 77
    .line 78
    new-instance v1, Lcom/android/systemui/ScreenDecorations$10;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/android/systemui/ScreenDecorations$10;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 84
    .line 85
    move-object v1, p1

    .line 86
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    move-object v1, p2

    .line 89
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 90
    .line 91
    move-object v1, p3

    .line 92
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 93
    .line 94
    move-object v1, p4

    .line 95
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 96
    .line 97
    move-object v1, p5

    .line 98
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 99
    .line 100
    move-object v1, p6

    .line 101
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 102
    .line 103
    move-object v1, p7

    .line 104
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 105
    .line 106
    move-object v1, p8

    .line 107
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mThreadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

    .line 108
    .line 109
    move-object v1, p9

    .line 110
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    .line 111
    .line 112
    move-object v1, p10

    .line 113
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

    .line 114
    .line 115
    const v1, 0x7f0a03e2

    .line 116
    .line 117
    .line 118
    iput v1, v0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    .line 119
    .line 120
    move-object v1, p11

    .line 121
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    .line 122
    .line 123
    move-object/from16 v1, p12

    .line 124
    .line 125
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 126
    .line 127
    move-object/from16 v1, p13

    .line 128
    .line 129
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 130
    .line 131
    move-object/from16 v1, p14

    .line 132
    .line 133
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCoverDotViewController:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 134
    .line 135
    move-object/from16 v1, p15

    .line 136
    .line 137
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 138
    .line 139
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    .line 140
    .line 141
    if-eqz v1, :cond_0

    .line 142
    .line 143
    move-object/from16 v1, p16

    .line 144
    .line 145
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 146
    .line 147
    :cond_0
    return-void
.end method

.method public static displayModeChanged(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eq p0, p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :cond_2
    :goto_0
    return v0
.end method

.method public static getBoundPositionFromRotation(II)I
    .locals 0

    .line 1
    sub-int/2addr p0, p1

    .line 2
    if-gez p0, :cond_0

    .line 3
    .line 4
    add-int/lit8 p0, p0, 0x4

    .line 5
    .line 6
    :cond_0
    return p0
.end method

.method public static getWindowLayoutBaseParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x3

    .line 4
    const/16 v2, 0x7e8

    .line 5
    .line 6
    const v3, 0x20800138

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2, v3, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 10
    .line 11
    .line 12
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 13
    .line 14
    or-int/lit8 v1, v1, 0x50

    .line 15
    .line 16
    const/high16 v2, 0x20000000

    .line 17
    .line 18
    or-int/2addr v1, v2

    .line 19
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 20
    .line 21
    sget-boolean v2, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const/high16 v2, 0x100000

    .line 26
    .line 27
    or-int/2addr v1, v2

    .line 28
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 29
    .line 30
    :cond_0
    const/4 v1, 0x3

    .line 31
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 35
    .line 36
    .line 37
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 38
    .line 39
    const/high16 v2, 0x1000000

    .line 40
    .line 41
    or-int/2addr v1, v2

    .line 42
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 43
    .line 44
    return-object v0
.end method

.method public static getWindowTitleByPos(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    const-string p0, "ScreenDecorOverlayBottom"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string/jumbo v1, "unknown bound position: "

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    const-string p0, "ScreenDecorOverlayRight"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    const-string p0, "ScreenDecorOverlay"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_3
    const-string p0, "ScreenDecorOverlayLeft"

    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "ScreenDecorations state:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "DEBUG_DISABLE_SCREEN_DECORATIONS:"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-boolean v2, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "mIsPrivacyDotEnabled:"

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getHasProviders()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string/jumbo v1, "shouldOptimizeOverlayVisibility:false"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getHasProviders()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const-string/jumbo v3, "supportsShowingFaceScanningAnim:"

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v2, v0}, Lcom/android/systemui/DisplayCutoutBaseView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 74
    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    const/4 v4, 0x0

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 81
    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v5, "canShowFaceScanningAnim:"

    .line 86
    .line 87
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getHasProviders()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    iget-object v6, v1, Lcom/android/systemui/decor/FaceScanningProviderFactory;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 95
    .line 96
    if-eqz v5, :cond_1

    .line 97
    .line 98
    iget-boolean v5, v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceEnrolled:Z

    .line 99
    .line 100
    if-eqz v5, :cond_1

    .line 101
    .line 102
    move v5, v3

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    move v5, v4

    .line 105
    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string/jumbo v5, "shouldShowFaceScanningAnim (at time dump was taken):"

    .line 118
    .line 119
    .line 120
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getHasProviders()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_2

    .line 128
    .line 129
    iget-boolean v5, v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceEnrolled:Z

    .line 130
    .line 131
    if-eqz v5, :cond_2

    .line 132
    .line 133
    move v5, v3

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    move v5, v4

    .line 136
    :goto_1
    if-eqz v5, :cond_4

    .line 137
    .line 138
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-nez v5, :cond_3

    .line 143
    .line 144
    iget-object v1, v1, Lcom/android/systemui/decor/FaceScanningProviderFactory;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthController;->isShowing()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_4

    .line 151
    .line 152
    :cond_3
    move v1, v3

    .line 153
    goto :goto_2

    .line 154
    :cond_4
    move v1, v4

    .line 155
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 166
    .line 167
    .line 168
    :cond_5
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    .line 169
    .line 170
    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Lcom/android/systemui/FaceScanningOverlay;

    .line 175
    .line 176
    if-eqz v1, :cond_6

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Lcom/android/systemui/FaceScanningOverlay;->dump(Ljava/io/PrintWriter;)V

    .line 179
    .line 180
    .line 181
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v2, "mRotation:"

    .line 184
    .line 185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v2, "mPendingConfigChange:"

    .line 203
    .line 204
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->mPendingConfigChange:Z

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasCoverOverlay()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_8

    .line 224
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v2, "hasCoverRoundedCorners:"

    .line 228
    .line 229
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mCoverRoundedCornerFactory:Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;

    .line 233
    .line 234
    if-nez v2, :cond_7

    .line 235
    .line 236
    move v2, v4

    .line 237
    goto :goto_3

    .line 238
    :cond_7
    iget-boolean v2, v2, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;->hasProviders:Z

    .line 239
    .line 240
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v2, "isCoverPrivacyDotEnabled:"

    .line 253
    .line 254
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->isCoverPrivacyDotEnabled()Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v2, "mCoverPendingConfigChange:"

    .line 274
    .line 275
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->mPendingConfigChange:Z

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v2, "mCoverRotation:"

    .line 293
    .line 294
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mCoverRotation:I

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 310
    .line 311
    if-eqz v1, :cond_b

    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 314
    .line 315
    .line 316
    const-string v1, "mHwcScreenDecorationSupport:"

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 322
    .line 323
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v2, "format="

    .line 327
    .line 328
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 332
    .line 333
    iget v2, v2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->format:I

    .line 334
    .line 335
    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatToString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v2, "alphaInterpretation="

    .line 352
    .line 353
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 357
    .line 358
    iget v2, v2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->alphaInterpretation:I

    .line 359
    .line 360
    if-eqz v2, :cond_a

    .line 361
    .line 362
    if-eq v2, v3, :cond_9

    .line 363
    .line 364
    const-string v5, "Unknown: "

    .line 365
    .line 366
    invoke-static {v5, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    goto :goto_4

    .line 371
    :cond_9
    const-string v2, "MASK"

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_a
    const-string v2, "COVERAGE"

    .line 375
    .line 376
    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 390
    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_b
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 394
    .line 395
    .line 396
    const-string v1, "mHwcScreenDecorationSupport: null"

    .line 397
    .line 398
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 402
    .line 403
    .line 404
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 405
    .line 406
    if-eqz v1, :cond_c

    .line 407
    .line 408
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 409
    .line 410
    .line 411
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 412
    .line 413
    invoke-virtual {v1, v0}, Lcom/android/systemui/ScreenDecorHwcLayer;->dump(Ljava/io/PrintWriter;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 417
    .line 418
    .line 419
    goto :goto_6

    .line 420
    :cond_c
    const-string v1, "mScreenDecorHwcLayer: null"

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    :goto_6
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 426
    .line 427
    if-eqz v1, :cond_12

    .line 428
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    const-string v2, "mOverlays(left,top,right,bottom)=("

    .line 432
    .line 433
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 437
    .line 438
    aget-object v2, v2, v4

    .line 439
    .line 440
    if-eqz v2, :cond_d

    .line 441
    .line 442
    move v2, v3

    .line 443
    goto :goto_7

    .line 444
    :cond_d
    move v2, v4

    .line 445
    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v2, ","

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 454
    .line 455
    aget-object v5, v5, v3

    .line 456
    .line 457
    if-eqz v5, :cond_e

    .line 458
    .line 459
    move v5, v3

    .line 460
    goto :goto_8

    .line 461
    :cond_e
    move v5, v4

    .line 462
    :goto_8
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 469
    .line 470
    const/4 v6, 0x2

    .line 471
    aget-object v5, v5, v6

    .line 472
    .line 473
    if-eqz v5, :cond_f

    .line 474
    .line 475
    move v5, v3

    .line 476
    goto :goto_9

    .line 477
    :cond_f
    move v5, v4

    .line 478
    :goto_9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 485
    .line 486
    const/4 v5, 0x3

    .line 487
    aget-object v2, v2, v5

    .line 488
    .line 489
    if-eqz v2, :cond_10

    .line 490
    .line 491
    goto :goto_a

    .line 492
    :cond_10
    move v3, v4

    .line 493
    :goto_a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v2, ")"

    .line 497
    .line 498
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    :goto_b
    const/4 v0, 0x4

    .line 509
    if-ge v4, v0, :cond_12

    .line 510
    .line 511
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 512
    .line 513
    aget-object v0, v0, v4

    .line 514
    .line 515
    if-eqz v0, :cond_11

    .line 516
    .line 517
    invoke-static {v4}, Lcom/android/systemui/ScreenDecorations;->getWindowTitleByPos(I)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/decor/OverlayWindow;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :cond_11
    add-int/lit8 v4, v4, 0x1

    .line 525
    .line 526
    goto :goto_b

    .line 527
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasCoverOverlay()Z

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    if-eqz v0, :cond_13

    .line 532
    .line 533
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 534
    .line 535
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getCoverWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/decor/OverlayWindow;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 551
    .line 552
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasCoverOverlay()Z

    .line 556
    .line 557
    .line 558
    move-result p2

    .line 559
    if-eqz p2, :cond_14

    .line 560
    .line 561
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCoverDotViewController:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 562
    .line 563
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    const-string p2, "CoverPrivacyDotViewController state:"

    .line 567
    .line 568
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    iget-object p0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->currentViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 572
    .line 573
    new-instance p2, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    const-string v0, "  currentViewState="

    .line 576
    .line 577
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object p0

    .line 587
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    :cond_14
    return-void
.end method

.method public final getCoverOverlayView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/decor/OverlayWindow;->getView(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    return-object v0
.end method

.method public getCoverWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutBaseParams()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 7
    .line 8
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 9
    .line 10
    const-string v0, "ScreenDecorOverlayCover"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x11

    .line 16
    .line 17
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 18
    .line 19
    return-object p0
.end method

.method public final getDisplayAspectRatioChanged()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 13
    .line 14
    iget-object v0, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    int-to-float p0, p0

    .line 38
    div-float/2addr v2, p0

    .line 39
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    int-to-float p0, p0

    .line 44
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    div-float/2addr p0, v0

    .line 50
    invoke-static {v2, p0}, Ljava/lang/Float;->compare(FF)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_1
    return v1
.end method

.method public getOverlayView(I)Landroid/view/View;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_3

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v3, p1}, Lcom/android/systemui/decor/OverlayWindow;->getView(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    return-object v3

    .line 23
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    return-object v0
.end method

.method public getPhysicalPixelDisplaySizeRatio()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 13
    .line 14
    iget-object v0, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/high16 p0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    return p0

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {v1, v0, v2, p0}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getProviders(Z)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getProviders()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getProviders()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/systemui/decor/DecorProviderFactory;->getProviders()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->getProviders()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    return-object v0
.end method

.method public getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutBaseParams()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 6
    .line 7
    invoke-static {p1, v1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x2

    .line 12
    const/4 v3, -0x1

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eq v1, v5, :cond_1

    .line 16
    .line 17
    if-ne v1, v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v1, v3

    .line 23
    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 24
    .line 25
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 26
    .line 27
    invoke-static {p1, v1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eq v1, v5, :cond_3

    .line 32
    .line 33
    if-ne v1, v4, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v2, v3

    .line 37
    :cond_3
    :goto_2
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 38
    .line 39
    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->getWindowTitleByPos(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 47
    .line 48
    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_7

    .line 53
    .line 54
    if-eq p0, v5, :cond_6

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    if-eq p0, v1, :cond_5

    .line 58
    .line 59
    if-ne p0, v4, :cond_4

    .line 60
    .line 61
    const/16 v4, 0x50

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string/jumbo v0, "unknown bound position: "

    .line 67
    .line 68
    .line 69
    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_5
    const/4 v4, 0x5

    .line 78
    goto :goto_3

    .line 79
    :cond_6
    const/16 v4, 0x30

    .line 80
    .line 81
    :cond_7
    :goto_3
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 82
    .line 83
    return-object v0
.end method

.method public hasCoverOverlay()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public hasOverlays()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    move v0, v1

    .line 8
    :goto_0
    const/4 v2, 0x4

    .line 9
    if-ge v0, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 12
    .line 13
    aget-object v2, v2, v0

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 24
    .line 25
    return v1
.end method

.method public hasSameProviders(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/decor/DecorProvider;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    array-length v2, p0

    .line 12
    move v3, v1

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    .line 15
    aget-object v4, p0, v3

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v4, v4, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    .line 21
    .line 22
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eq p0, v2, :cond_2

    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/android/systemui/decor/DecorProvider;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/systemui/decor/DecorProvider;->getViewId()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    return v1

    .line 80
    :cond_4
    const/4 p0, 0x1

    .line 81
    return p0
.end method

.method public hideCameraProtection()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/FaceScanningOverlay;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lcom/android/systemui/FaceScanningOverlay;->hideOverlayRunnable:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/FaceScanningOverlay;->enableShowProtection(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/android/systemui/ScreenDecorations;->DISPLAY_CUTOUT_IDS:[I

    .line 32
    .line 33
    array-length v2, v0

    .line 34
    move v3, v1

    .line 35
    move v4, v3

    .line 36
    :goto_0
    if-ge v3, v2, :cond_3

    .line 37
    .line 38
    aget v5, v0, v3

    .line 39
    .line 40
    invoke-virtual {p0, v5}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    instance-of v6, v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 45
    .line 46
    if-nez v6, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    check-cast v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 52
    .line 53
    invoke-virtual {v5, v1}, Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V

    .line 54
    .line 55
    .line 56
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    if-nez v4, :cond_4

    .line 60
    .line 61
    const-string p0, "ScreenDecorations"

    .line 62
    .line 63
    const-string v0, "CutoutView not initialized hideCameraProtection"

    .line 64
    .line 65
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_4
    return-void
.end method

.method public final isCoverPrivacyDotEnabled()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f05000d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p0, "ScreenDecorations"

    .line 6
    .line 7
    const-string p1, "ScreenDecorations is disabled"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "ScreenDecorations"

    .line 6
    .line 7
    const-string p1, "ScreenDecorations is disabled"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 14
    .line 15
    new-instance v1, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setSize(Landroid/view/View;Landroid/util/Size;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setupDecorations()V
    .locals 50

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "ScreenDecorations#setupDecorations"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/systemui/decor/DecorProviderFactory;->getHasProviders()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x4

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v8, 0x1

    .line 18
    const/4 v4, 0x2

    .line 19
    if-nez v1, :cond_5

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->getHasProviders()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_5

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getHasProviders()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_5

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getHasProviders()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v1, v7

    .line 52
    :goto_0
    if-ge v1, v2, :cond_3

    .line 53
    .line 54
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 55
    .line 56
    aget-object v5, v5, v1

    .line 57
    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    iget-object v6, v0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 61
    .line 62
    iget-object v5, v5, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 63
    .line 64
    invoke-interface {v6, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 68
    .line 69
    aput-object v3, v5, v1

    .line 70
    .line 71
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iput-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 75
    .line 76
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 77
    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    goto/16 :goto_1b

    .line 81
    .line 82
    :cond_4
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 83
    .line 84
    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    iput-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 88
    .line 89
    iput-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 90
    .line 91
    goto/16 :goto_1b

    .line 92
    .line 93
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 94
    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    move v1, v8

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    move v1, v7

    .line 100
    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations;->getProviders(Z)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 105
    .line 106
    if-nez v5, :cond_7

    .line 107
    .line 108
    goto :goto_7

    .line 109
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    new-instance v6, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda7;

    .line 114
    .line 115
    invoke-direct {v6}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda7;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    iget-object v6, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 127
    .line 128
    array-length v9, v6

    .line 129
    move v10, v7

    .line 130
    :goto_4
    if-ge v10, v9, :cond_c

    .line 131
    .line 132
    aget-object v11, v6, v10

    .line 133
    .line 134
    if-nez v11, :cond_8

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_8
    iget-object v12, v11, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    .line 138
    .line 139
    check-cast v12, Ljava/util/LinkedHashMap;

    .line 140
    .line 141
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    invoke-static {v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    :cond_9
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v13

    .line 157
    if-eqz v13, :cond_b

    .line 158
    .line 159
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    check-cast v13, Ljava/lang/Number;

    .line 164
    .line 165
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    if-eqz v5, :cond_a

    .line 170
    .line 171
    invoke-static {v13, v5}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    if-nez v14, :cond_9

    .line 176
    .line 177
    :cond_a
    invoke-virtual {v11, v13}, Lcom/android/systemui/decor/OverlayWindow;->getView(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v14

    .line 181
    if-eqz v14, :cond_9

    .line 182
    .line 183
    iget-object v15, v11, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 184
    .line 185
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 186
    .line 187
    .line 188
    iget-object v14, v11, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    .line 189
    .line 190
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-interface {v14, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_b
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_c
    :goto_7
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 202
    .line 203
    const/4 v6, -0x1

    .line 204
    if-eqz v5, :cond_f

    .line 205
    .line 206
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-nez v5, :cond_f

    .line 211
    .line 212
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 213
    .line 214
    if-eqz v5, :cond_d

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_d
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    const v10, 0x7f0d0314

    .line 224
    .line 225
    .line 226
    invoke-virtual {v9, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    check-cast v9, Landroid/view/ViewGroup;

    .line 231
    .line 232
    iput-object v9, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 233
    .line 234
    new-instance v9, Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 235
    .line 236
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 237
    .line 238
    invoke-direct {v9, v5, v10}, Lcom/android/systemui/ScreenDecorHwcLayer;-><init>(Landroid/content/Context;Landroid/hardware/graphics/common/DisplayDecorationSupport;)V

    .line 239
    .line 240
    .line 241
    iput-object v9, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 242
    .line 243
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 244
    .line 245
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .line 247
    const v11, 0x800033

    .line 248
    .line 249
    .line 250
    invoke-direct {v10, v6, v6, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    .line 255
    .line 256
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 257
    .line 258
    iget-object v9, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 259
    .line 260
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutBaseParams()Landroid/view/WindowManager$LayoutParams;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    iput v6, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 265
    .line 266
    iput v6, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 267
    .line 268
    const-string v12, "ScreenDecorHwcOverlay"

    .line 269
    .line 270
    invoke-virtual {v10, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 274
    .line 275
    sget-boolean v11, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    .line 276
    .line 277
    if-nez v11, :cond_e

    .line 278
    .line 279
    invoke-virtual {v10, v2}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    .line 280
    .line 281
    .line 282
    :cond_e
    invoke-interface {v5, v9, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ScreenDecorations;->updateHwLayerRoundedCornerExistAndSize()V

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ScreenDecorations;->updateHwLayerRoundedCornerDrawable()V

    .line 289
    .line 290
    .line 291
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 292
    .line 293
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    new-instance v9, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    .line 298
    .line 299
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 300
    .line 301
    invoke-direct {v9, v0, v10}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 305
    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_f
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 309
    .line 310
    if-nez v5, :cond_10

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_10
    iget-object v9, v0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 314
    .line 315
    invoke-interface {v9, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 316
    .line 317
    .line 318
    iput-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 319
    .line 320
    iput-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 321
    .line 322
    :goto_8
    new-array v5, v2, [Z

    .line 323
    .line 324
    :goto_9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 325
    .line 326
    .line 327
    move-result v9

    .line 328
    const/4 v10, 0x3

    .line 329
    if-eqz v9, :cond_11

    .line 330
    .line 331
    move-object v9, v3

    .line 332
    goto/16 :goto_e

    .line 333
    .line 334
    :cond_11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    :cond_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v11

    .line 342
    if-eqz v11, :cond_14

    .line 343
    .line 344
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    move-object v12, v11

    .line 349
    check-cast v12, Lcom/android/systemui/decor/DecorProvider;

    .line 350
    .line 351
    invoke-virtual {v12}, Lcom/android/systemui/decor/DecorProvider;->getAlignedBounds()Ljava/util/List;

    .line 352
    .line 353
    .line 354
    move-result-object v12

    .line 355
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 356
    .line 357
    .line 358
    move-result v12

    .line 359
    if-ne v12, v8, :cond_13

    .line 360
    .line 361
    move v12, v8

    .line 362
    goto :goto_a

    .line 363
    :cond_13
    move v12, v7

    .line 364
    :goto_a
    if-eqz v12, :cond_12

    .line 365
    .line 366
    goto :goto_b

    .line 367
    :cond_14
    move-object v11, v3

    .line 368
    :goto_b
    check-cast v11, Lcom/android/systemui/decor/DecorProvider;

    .line 369
    .line 370
    if-eqz v11, :cond_15

    .line 371
    .line 372
    invoke-virtual {v11}, Lcom/android/systemui/decor/DecorProvider;->getAlignedBounds()Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    check-cast v9, Ljava/lang/Integer;

    .line 381
    .line 382
    goto :goto_e

    .line 383
    :cond_15
    filled-new-array {v7, v7, v7, v7}, [I

    .line 384
    .line 385
    .line 386
    move-result-object v9

    .line 387
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 388
    .line 389
    .line 390
    move-result-object v11

    .line 391
    :cond_16
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 392
    .line 393
    .line 394
    move-result v12

    .line 395
    if-eqz v12, :cond_17

    .line 396
    .line 397
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v12

    .line 401
    check-cast v12, Lcom/android/systemui/decor/DecorProvider;

    .line 402
    .line 403
    invoke-virtual {v12}, Lcom/android/systemui/decor/DecorProvider;->getAlignedBounds()Ljava/util/List;

    .line 404
    .line 405
    .line 406
    move-result-object v12

    .line 407
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object v12

    .line 411
    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    .line 413
    .line 414
    move-result v13

    .line 415
    if-eqz v13, :cond_16

    .line 416
    .line 417
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v13

    .line 421
    check-cast v13, Ljava/lang/Number;

    .line 422
    .line 423
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 424
    .line 425
    .line 426
    move-result v13

    .line 427
    aget v14, v9, v13

    .line 428
    .line 429
    add-int/2addr v14, v8

    .line 430
    aput v14, v9, v13

    .line 431
    .line 432
    goto :goto_c

    .line 433
    :cond_17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 434
    .line 435
    .line 436
    move-result-object v11

    .line 437
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v12

    .line 441
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    move-result-object v13

    .line 445
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v14

    .line 449
    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v11

    .line 453
    move-object v12, v3

    .line 454
    move v13, v7

    .line 455
    move v14, v13

    .line 456
    :goto_d
    if-ge v13, v2, :cond_19

    .line 457
    .line 458
    aget-object v15, v11, v13

    .line 459
    .line 460
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 461
    .line 462
    .line 463
    move-result v15

    .line 464
    aget v6, v9, v15

    .line 465
    .line 466
    if-le v6, v14, :cond_18

    .line 467
    .line 468
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 469
    .line 470
    .line 471
    move-result-object v12

    .line 472
    aget v14, v9, v15

    .line 473
    .line 474
    :cond_18
    add-int/lit8 v13, v13, 0x1

    .line 475
    .line 476
    const/4 v6, -0x1

    .line 477
    goto :goto_d

    .line 478
    :cond_19
    move-object v9, v12

    .line 479
    :goto_e
    if-eqz v9, :cond_2a

    .line 480
    .line 481
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    new-instance v10, Ljava/util/ArrayList;

    .line 486
    .line 487
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .line 489
    .line 490
    new-instance v11, Ljava/util/ArrayList;

    .line 491
    .line 492
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .line 494
    .line 495
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v12

    .line 503
    if-eqz v12, :cond_1b

    .line 504
    .line 505
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    move-object v13, v12

    .line 510
    check-cast v13, Lcom/android/systemui/decor/DecorProvider;

    .line 511
    .line 512
    invoke-virtual {v13}, Lcom/android/systemui/decor/DecorProvider;->getAlignedBounds()Ljava/util/List;

    .line 513
    .line 514
    .line 515
    move-result-object v13

    .line 516
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    .line 518
    .line 519
    move-result-object v14

    .line 520
    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v13

    .line 524
    if-eqz v13, :cond_1a

    .line 525
    .line 526
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    goto :goto_f

    .line 530
    :cond_1a
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    goto :goto_f

    .line 534
    :cond_1b
    new-instance v1, Lkotlin/Pair;

    .line 535
    .line 536
    invoke-direct {v1, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v6

    .line 543
    check-cast v6, Ljava/util/List;

    .line 544
    .line 545
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 546
    .line 547
    .line 548
    move-result v10

    .line 549
    iget-object v11, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 550
    .line 551
    if-nez v11, :cond_1c

    .line 552
    .line 553
    move-object v11, v3

    .line 554
    goto :goto_10

    .line 555
    :cond_1c
    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    .line 556
    .line 557
    .line 558
    move-result-object v11

    .line 559
    :goto_10
    iget v12, v0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 560
    .line 561
    invoke-static {v10, v12}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    .line 562
    .line 563
    .line 564
    move-result v12

    .line 565
    iget-object v13, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 566
    .line 567
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 568
    .line 569
    .line 570
    move-result-object v14

    .line 571
    invoke-virtual {v13}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 572
    .line 573
    .line 574
    move-result-object v13

    .line 575
    invoke-virtual {v13}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v13

    .line 579
    invoke-static {v14, v13}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    .line 580
    .line 581
    .line 582
    move-result v13

    .line 583
    if-eqz v13, :cond_1d

    .line 584
    .line 585
    if-eqz v11, :cond_1d

    .line 586
    .line 587
    aget-object v11, v11, v12

    .line 588
    .line 589
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    .line 590
    .line 591
    .line 592
    move-result v11

    .line 593
    if-eqz v11, :cond_1f

    .line 594
    .line 595
    :cond_1d
    iget-object v11, v0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    .line 596
    .line 597
    iget-boolean v12, v11, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionVisible:Z

    .line 598
    .line 599
    if-nez v12, :cond_1e

    .line 600
    .line 601
    iget-boolean v11, v11, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    .line 602
    .line 603
    if-eqz v11, :cond_20

    .line 604
    .line 605
    :cond_1e
    if-ne v10, v8, :cond_20

    .line 606
    .line 607
    :cond_1f
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 608
    .line 609
    if-nez v10, :cond_20

    .line 610
    .line 611
    move v10, v8

    .line 612
    goto :goto_11

    .line 613
    :cond_20
    move v10, v7

    .line 614
    :goto_11
    if-nez v10, :cond_24

    .line 615
    .line 616
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

    .line 617
    .line 618
    invoke-virtual {v10}, Lcom/android/systemui/decor/DecorProviderFactory;->getHasProviders()Z

    .line 619
    .line 620
    .line 621
    move-result v10

    .line 622
    if-eqz v10, :cond_21

    .line 623
    .line 624
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 625
    .line 626
    if-nez v10, :cond_21

    .line 627
    .line 628
    move v10, v8

    .line 629
    goto :goto_12

    .line 630
    :cond_21
    move v10, v7

    .line 631
    :goto_12
    if-nez v10, :cond_24

    .line 632
    .line 633
    iget-boolean v10, v0, Lcom/android/systemui/ScreenDecorations;->mIsDotViewVisible:Z

    .line 634
    .line 635
    if-eqz v10, :cond_22

    .line 636
    .line 637
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    .line 638
    .line 639
    invoke-virtual {v10}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getHasProviders()Z

    .line 640
    .line 641
    .line 642
    move-result v10

    .line 643
    if-eqz v10, :cond_22

    .line 644
    .line 645
    move v10, v8

    .line 646
    goto :goto_13

    .line 647
    :cond_22
    move v10, v7

    .line 648
    :goto_13
    if-eqz v10, :cond_23

    .line 649
    .line 650
    goto :goto_14

    .line 651
    :cond_23
    move v10, v7

    .line 652
    goto :goto_15

    .line 653
    :cond_24
    :goto_14
    move v10, v8

    .line 654
    :goto_15
    if-eqz v10, :cond_29

    .line 655
    .line 656
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 657
    .line 658
    .line 659
    move-result v10

    .line 660
    aput-boolean v8, v5, v10

    .line 661
    .line 662
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 663
    .line 664
    .line 665
    move-result v9

    .line 666
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    check-cast v1, Ljava/util/List;

    .line 671
    .line 672
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 673
    .line 674
    iget-object v11, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 675
    .line 676
    if-nez v10, :cond_25

    .line 677
    .line 678
    new-array v10, v2, [Lcom/android/systemui/decor/OverlayWindow;

    .line 679
    .line 680
    iput-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 681
    .line 682
    invoke-virtual {v11}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 683
    .line 684
    .line 685
    move-result-object v10

    .line 686
    iget-object v12, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 687
    .line 688
    invoke-virtual {v10, v12}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 689
    .line 690
    .line 691
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 692
    .line 693
    iget v12, v10, Landroid/view/DisplayInfo;->rotation:I

    .line 694
    .line 695
    iput v12, v0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 696
    .line 697
    invoke-virtual {v10}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    .line 698
    .line 699
    .line 700
    move-result-object v10

    .line 701
    iput-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayMode:Landroid/view/Display$Mode;

    .line 702
    .line 703
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 704
    .line 705
    iget-object v10, v10, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 706
    .line 707
    iput-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 708
    .line 709
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 710
    .line 711
    iget v12, v0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 712
    .line 713
    invoke-virtual {v10, v12}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNewRotation(I)V

    .line 714
    .line 715
    .line 716
    :cond_25
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 717
    .line 718
    aget-object v12, v10, v9

    .line 719
    .line 720
    if-eqz v12, :cond_27

    .line 721
    .line 722
    invoke-virtual {v12, v1}, Lcom/android/systemui/decor/OverlayWindow;->hasSameProviders(Ljava/util/List;)Z

    .line 723
    .line 724
    .line 725
    move-result v9

    .line 726
    if-nez v9, :cond_26

    .line 727
    .line 728
    new-instance v9, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda6;

    .line 729
    .line 730
    invoke-direct {v9, v0, v12}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/decor/OverlayWindow;)V

    .line 731
    .line 732
    .line 733
    invoke-interface {v1, v9}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 734
    .line 735
    .line 736
    :cond_26
    iget-object v1, v12, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 737
    .line 738
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 739
    .line 740
    .line 741
    goto :goto_16

    .line 742
    :cond_27
    new-instance v12, Lcom/android/systemui/decor/OverlayWindow;

    .line 743
    .line 744
    invoke-direct {v12, v11}, Lcom/android/systemui/decor/OverlayWindow;-><init>(Landroid/content/Context;)V

    .line 745
    .line 746
    .line 747
    aput-object v12, v10, v9

    .line 748
    .line 749
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 750
    .line 751
    aget-object v10, v10, v9

    .line 752
    .line 753
    invoke-virtual {v10, v1}, Lcom/android/systemui/decor/OverlayWindow;->hasSameProviders(Ljava/util/List;)Z

    .line 754
    .line 755
    .line 756
    move-result v11

    .line 757
    if-nez v11, :cond_28

    .line 758
    .line 759
    new-instance v11, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda6;

    .line 760
    .line 761
    invoke-direct {v11, v0, v10}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/decor/OverlayWindow;)V

    .line 762
    .line 763
    .line 764
    invoke-interface {v1, v11}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 765
    .line 766
    .line 767
    :cond_28
    iget-object v1, v10, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 768
    .line 769
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 770
    .line 771
    .line 772
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 773
    .line 774
    aget-object v1, v1, v9

    .line 775
    .line 776
    iget-object v1, v1, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 777
    .line 778
    const/16 v10, 0x100

    .line 779
    .line 780
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setForceDarkAllowed(Z)V

    .line 784
    .line 785
    .line 786
    iget-object v10, v0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 787
    .line 788
    invoke-virtual {v0, v9}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    .line 789
    .line 790
    .line 791
    move-result-object v9

    .line 792
    invoke-interface {v10, v1, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 796
    .line 797
    .line 798
    move-result-object v9

    .line 799
    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 800
    .line 801
    .line 802
    move-result-object v9

    .line 803
    new-instance v10, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    .line 804
    .line 805
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    invoke-direct {v10, v0, v1}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v9, v10}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 813
    .line 814
    .line 815
    :cond_29
    :goto_16
    move-object v1, v6

    .line 816
    const/4 v6, -0x1

    .line 817
    goto/16 :goto_9

    .line 818
    .line 819
    :cond_2a
    move v1, v7

    .line 820
    :goto_17
    if-ge v1, v2, :cond_2d

    .line 821
    .line 822
    aget-boolean v6, v5, v1

    .line 823
    .line 824
    if-nez v6, :cond_2c

    .line 825
    .line 826
    iget-object v6, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 827
    .line 828
    if-eqz v6, :cond_2c

    .line 829
    .line 830
    aget-object v6, v6, v1

    .line 831
    .line 832
    if-nez v6, :cond_2b

    .line 833
    .line 834
    goto :goto_18

    .line 835
    :cond_2b
    iget-object v9, v0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 836
    .line 837
    iget-object v6, v6, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 838
    .line 839
    invoke-interface {v9, v6}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 840
    .line 841
    .line 842
    iget-object v6, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 843
    .line 844
    aput-object v3, v6, v1

    .line 845
    .line 846
    :cond_2c
    :goto_18
    add-int/lit8 v1, v1, 0x1

    .line 847
    .line 848
    goto :goto_17

    .line 849
    :cond_2d
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 850
    .line 851
    iput-object v3, v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    .line 852
    .line 853
    const v1, 0x7f0a0826

    .line 854
    .line 855
    .line 856
    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    if-eqz v1, :cond_33

    .line 861
    .line 862
    const v2, 0x7f0a0827

    .line 863
    .line 864
    .line 865
    invoke-virtual {v0, v2}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    .line 866
    .line 867
    .line 868
    move-result-object v2

    .line 869
    if-eqz v2, :cond_33

    .line 870
    .line 871
    const v5, 0x7f0a0824

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0, v5}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    .line 875
    .line 876
    .line 877
    move-result-object v5

    .line 878
    if-eqz v5, :cond_33

    .line 879
    .line 880
    const v6, 0x7f0a0825

    .line 881
    .line 882
    .line 883
    invoke-virtual {v0, v6}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    .line 884
    .line 885
    .line 886
    move-result-object v6

    .line 887
    if-eqz v6, :cond_33

    .line 888
    .line 889
    iget-object v9, v0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 890
    .line 891
    iget-object v11, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 892
    .line 893
    if-eqz v11, :cond_31

    .line 894
    .line 895
    iget-object v12, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    .line 896
    .line 897
    if-eqz v12, :cond_31

    .line 898
    .line 899
    iget-object v12, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    .line 900
    .line 901
    if-eqz v12, :cond_31

    .line 902
    .line 903
    iget-object v12, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    .line 904
    .line 905
    if-eqz v12, :cond_31

    .line 906
    .line 907
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 908
    .line 909
    .line 910
    move-result v11

    .line 911
    if-eqz v11, :cond_31

    .line 912
    .line 913
    iget-object v11, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    .line 914
    .line 915
    if-nez v11, :cond_2e

    .line 916
    .line 917
    move-object v11, v3

    .line 918
    :cond_2e
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    move-result v11

    .line 922
    if-eqz v11, :cond_31

    .line 923
    .line 924
    iget-object v11, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    .line 925
    .line 926
    if-nez v11, :cond_2f

    .line 927
    .line 928
    move-object v11, v3

    .line 929
    :cond_2f
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    move-result v11

    .line 933
    if-eqz v11, :cond_31

    .line 934
    .line 935
    iget-object v11, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    .line 936
    .line 937
    if-nez v11, :cond_30

    .line 938
    .line 939
    goto :goto_19

    .line 940
    :cond_30
    move-object v3, v11

    .line 941
    :goto_19
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 942
    .line 943
    .line 944
    move-result v3

    .line 945
    if-eqz v3, :cond_31

    .line 946
    .line 947
    goto/16 :goto_1b

    .line 948
    .line 949
    :cond_31
    iput-object v1, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 950
    .line 951
    iput-object v2, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    .line 952
    .line 953
    iput-object v5, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    .line 954
    .line 955
    iput-object v6, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    .line 956
    .line 957
    iget-object v1, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 958
    .line 959
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 960
    .line 961
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->isLayoutRtl()Z

    .line 962
    .line 963
    .line 964
    move-result v1

    .line 965
    iget-object v2, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 966
    .line 967
    iget v2, v2, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    .line 968
    .line 969
    invoke-virtual {v9, v2, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    if-eqz v2, :cond_32

    .line 974
    .line 975
    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    .line 976
    .line 977
    .line 978
    move-result v6

    .line 979
    move/from16 v28, v6

    .line 980
    .line 981
    goto :goto_1a

    .line 982
    :cond_32
    const/16 v28, -0x1

    .line 983
    .line 984
    :goto_1a
    iget-object v3, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 985
    .line 986
    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    .line 987
    .line 988
    .line 989
    move-result-object v24

    .line 990
    iget-object v3, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 991
    .line 992
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    .line 993
    .line 994
    .line 995
    move-result-object v21

    .line 996
    iget-object v3, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 997
    .line 998
    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    .line 999
    .line 1000
    .line 1001
    move-result-object v22

    .line 1002
    iget-object v3, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 1003
    .line 1004
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v23

    .line 1008
    iget-object v3, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 1009
    .line 1010
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarPaddingTop()I

    .line 1011
    .line 1012
    .line 1013
    move-result v27

    .line 1014
    iget-object v3, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 1015
    .line 1016
    monitor-enter v3

    .line 1017
    :try_start_0
    new-instance v5, Lcom/android/systemui/statusbar/events/ViewState;

    .line 1018
    .line 1019
    const/16 v30, 0x0

    .line 1020
    .line 1021
    const/16 v31, 0x0

    .line 1022
    .line 1023
    const/16 v32, 0x0

    .line 1024
    .line 1025
    const/16 v33, 0x0

    .line 1026
    .line 1027
    const/16 v34, 0x0

    .line 1028
    .line 1029
    const/16 v35, 0x0

    .line 1030
    .line 1031
    const/16 v36, 0x0

    .line 1032
    .line 1033
    const/16 v37, 0x0

    .line 1034
    .line 1035
    const/16 v38, 0x0

    .line 1036
    .line 1037
    const/16 v39, 0x0

    .line 1038
    .line 1039
    const/16 v40, 0x0

    .line 1040
    .line 1041
    const/16 v41, 0x0

    .line 1042
    .line 1043
    const/16 v42, 0x0

    .line 1044
    .line 1045
    const/16 v43, 0x0

    .line 1046
    .line 1047
    const/16 v44, 0x0

    .line 1048
    .line 1049
    const/16 v45, 0x0

    .line 1050
    .line 1051
    const/16 v46, 0x0

    .line 1052
    .line 1053
    const/16 v47, 0x0

    .line 1054
    .line 1055
    const v48, 0x3ffff

    .line 1056
    .line 1057
    .line 1058
    const/16 v49, 0x0

    .line 1059
    .line 1060
    move-object/from16 v29, v5

    .line 1061
    .line 1062
    invoke-direct/range {v29 .. v49}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1063
    .line 1064
    .line 1065
    iput-object v5, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 1066
    .line 1067
    iget-object v5, v9, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 1068
    .line 1069
    const/16 v17, 0x1

    .line 1070
    .line 1071
    const/16 v18, 0x0

    .line 1072
    .line 1073
    const/16 v19, 0x0

    .line 1074
    .line 1075
    const/16 v20, 0x0

    .line 1076
    .line 1077
    const/16 v26, 0x0

    .line 1078
    .line 1079
    const/16 v30, 0x0

    .line 1080
    .line 1081
    const/16 v31, 0x0

    .line 1082
    .line 1083
    const/16 v32, 0x0

    .line 1084
    .line 1085
    const/16 v33, 0x0

    .line 1086
    .line 1087
    const/16 v34, 0x0

    .line 1088
    .line 1089
    const v35, 0x3e20e

    .line 1090
    .line 1091
    .line 1092
    move-object/from16 v16, v5

    .line 1093
    .line 1094
    move/from16 v25, v1

    .line 1095
    .line 1096
    move-object/from16 v29, v2

    .line 1097
    .line 1098
    invoke-static/range {v16 .. v35}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIII)Lcom/android/systemui/statusbar/events/ViewState;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v1

    .line 1102
    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 1103
    .line 1104
    .line 1105
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    .line 1107
    monitor-exit v3

    .line 1108
    goto :goto_1b

    .line 1109
    :catchall_0
    move-exception v0

    .line 1110
    monitor-exit v3

    .line 1111
    throw v0

    .line 1112
    :cond_33
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ScreenDecorations;->hasOverlays()Z

    .line 1113
    .line 1114
    .line 1115
    move-result v1

    .line 1116
    if-nez v1, :cond_37

    .line 1117
    .line 1118
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 1119
    .line 1120
    if-eqz v1, :cond_34

    .line 1121
    .line 1122
    move v1, v8

    .line 1123
    goto :goto_1c

    .line 1124
    :cond_34
    move v1, v7

    .line 1125
    :goto_1c
    if-eqz v1, :cond_35

    .line 1126
    .line 1127
    goto :goto_1d

    .line 1128
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ScreenDecorations;->hasCoverOverlay()Z

    .line 1129
    .line 1130
    .line 1131
    move-result v1

    .line 1132
    if-nez v1, :cond_3b

    .line 1133
    .line 1134
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 1135
    .line 1136
    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;

    .line 1137
    .line 1138
    invoke-direct {v2, v0, v4}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    .line 1139
    .line 1140
    .line 1141
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1142
    .line 1143
    .line 1144
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 1145
    .line 1146
    if-eqz v1, :cond_36

    .line 1147
    .line 1148
    invoke-virtual {v1, v7}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 1149
    .line 1150
    .line 1151
    :cond_36
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 1152
    .line 1153
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 1154
    .line 1155
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 1156
    .line 1157
    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 1158
    .line 1159
    .line 1160
    iput-boolean v7, v0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    .line 1161
    .line 1162
    goto :goto_1f

    .line 1163
    :cond_37
    :goto_1d
    iget-boolean v1, v0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    .line 1164
    .line 1165
    if-eqz v1, :cond_38

    .line 1166
    .line 1167
    goto :goto_1f

    .line 1168
    :cond_38
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 1169
    .line 1170
    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;

    .line 1171
    .line 1172
    invoke-direct {v2, v0, v8}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    .line 1173
    .line 1174
    .line 1175
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1176
    .line 1177
    .line 1178
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 1179
    .line 1180
    if-nez v1, :cond_39

    .line 1181
    .line 1182
    new-instance v9, Lcom/android/systemui/ScreenDecorations$8;

    .line 1183
    .line 1184
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 1185
    .line 1186
    iget-object v4, v0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 1187
    .line 1188
    const-string v5, "accessibility_display_inversion_enabled"

    .line 1189
    .line 1190
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 1191
    .line 1192
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 1193
    .line 1194
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 1195
    .line 1196
    .line 1197
    move-result v6

    .line 1198
    move-object v1, v9

    .line 1199
    move-object/from16 v2, p0

    .line 1200
    .line 1201
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/ScreenDecorations$8;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1202
    .line 1203
    .line 1204
    iput-object v9, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 1205
    .line 1206
    goto :goto_1e

    .line 1207
    :cond_39
    iget v1, v1, Lcom/android/systemui/qs/SettingObserver;->mUserId:I

    .line 1208
    .line 1209
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 1210
    .line 1211
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 1212
    .line 1213
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 1214
    .line 1215
    .line 1216
    move-result v2

    .line 1217
    if-eq v1, v2, :cond_3a

    .line 1218
    .line 1219
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 1220
    .line 1221
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 1222
    .line 1223
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 1224
    .line 1225
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 1226
    .line 1227
    .line 1228
    move-result v2

    .line 1229
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SettingObserver;->setUserId(I)V

    .line 1230
    .line 1231
    .line 1232
    :cond_3a
    :goto_1e
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 1233
    .line 1234
    invoke-virtual {v1, v8}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 1235
    .line 1236
    .line 1237
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 1238
    .line 1239
    invoke-virtual {v1, v7}, Lcom/android/systemui/qs/SettingObserver;->onChange(Z)V

    .line 1240
    .line 1241
    .line 1242
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 1243
    .line 1244
    invoke-virtual {v1}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    .line 1245
    .line 1246
    .line 1247
    move-result v1

    .line 1248
    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    .line 1249
    .line 1250
    .line 1251
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 1252
    .line 1253
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 1254
    .line 1255
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 1256
    .line 1257
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 1258
    .line 1259
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 1260
    .line 1261
    .line 1262
    iput-boolean v8, v0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    .line 1263
    .line 1264
    :cond_3b
    :goto_1f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1265
    .line 1266
    .line 1267
    return-void
.end method

.method public showCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getHasProviders()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v4, v0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceEnrolled:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->isShowing()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    :cond_1
    move v0, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v0, v2

    .line 39
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {v1, p2}, Lcom/android/systemui/log/ScreenDecorationsLogger;->cameraProtectionBoundsForScanningOverlay(Landroid/graphics/Rect;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p1, p2}, Lcom/android/systemui/DisplayCutoutBaseView;->setProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v3}, Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateOverlayWindowVisibilityIfViewExists(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v1, p2}, Lcom/android/systemui/log/ScreenDecorationsLogger;->hwcLayerCameraProtectionBounds(Landroid/graphics/Rect;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 78
    .line 79
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/DisplayCutoutBaseView;->setProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 83
    .line 84
    invoke-virtual {p0, v3}, Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    sget-object p1, Lcom/android/systemui/ScreenDecorations;->DISPLAY_CUTOUT_IDS:[I

    .line 89
    .line 90
    array-length v0, p1

    .line 91
    move v4, v2

    .line 92
    :goto_2
    if-ge v2, v0, :cond_6

    .line 93
    .line 94
    aget v5, p1, v2

    .line 95
    .line 96
    invoke-virtual {p0, v5}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    instance-of v7, v6, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 101
    .line 102
    if-nez v7, :cond_5

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    check-cast v6, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 108
    .line 109
    invoke-virtual {v1, v5, p2}, Lcom/android/systemui/log/ScreenDecorationsLogger;->dcvCameraBounds(ILandroid/graphics/Rect;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v3}, Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V

    .line 113
    .line 114
    .line 115
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    if-nez v4, :cond_7

    .line 119
    .line 120
    iget-object v5, v1, Lcom/android/systemui/log/ScreenDecorationsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 121
    .line 122
    const-string v6, "ScreenDecorationsLog"

    .line 123
    .line 124
    sget-object v7, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 125
    .line 126
    const-string v8, "CutoutView not initialized showCameraProtection"

    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    const/16 v10, 0x8

    .line 130
    .line 131
    const/4 v11, 0x0

    .line 132
    invoke-static/range {v5 .. v11}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_7
    return-void
.end method

.method public final start()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    .line 2
    .line 3
    const-string v1, "ScreenDecorations"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "ScreenDecorations is disabled"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mThreadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v3, Landroid/os/HandlerThread;

    .line 23
    .line 24
    invoke-direct {v3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 52
    .line 53
    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 65
    .line 66
    iput-object v0, v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mCoverDotViewController:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 71
    .line 72
    iput-object v0, v2, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 73
    .line 74
    iput-object v1, v2, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->handler:Landroid/os/Handler;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mAuthControllerCallback:Lcom/android/systemui/ScreenDecorations$4;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthController;->addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final updateColorInversion(I)V
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/high16 p1, -0x1000000

    .line 6
    .line 7
    :goto_0
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    .line 8
    .line 9
    sget-boolean p1, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/high16 p1, -0x10000

    .line 14
    .line 15
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    .line 16
    .line 17
    :cond_1
    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const p1, 0x7f0a0348

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const p1, 0x7f0a034a

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const p1, 0x7f0a034b

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const p1, 0x7f0a0349

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const p1, 0x7f0a08f0

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const p1, 0x7f0a08f1

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const p1, 0x7f0a08ed

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    const p1, 0x7f0a08ee

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    filled-new-array/range {v0 .. v8}, [Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateOverlayProviderViews([Ljava/lang/Integer;)V

    .line 84
    .line 85
    .line 86
    const p1, 0x7f0a08ef

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    filled-new-array {p1}, [Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasCoverOverlay()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mCoverRotation:I

    .line 108
    .line 109
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCoverDisplayInfo:Landroid/view/DisplayInfo;

    .line 112
    .line 113
    iget-object v5, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/decor/OverlayWindow;->onReloadResAndMeasure([Ljava/lang/Integer;IIILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_1
    return-void
.end method

.method public updateConfiguration()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v3

    .line 22
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v4, "must call on "

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, ", but was "

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 74
    .line 75
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 76
    .line 77
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 78
    .line 79
    if-eq v1, v0, :cond_1

    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNewRotation(I)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 93
    .line 94
    iget-object v4, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 95
    .line 96
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 97
    .line 98
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    .line 99
    .line 100
    if-eqz v6, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateFillUDCDisplayCutout()V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/ScreenDecorations;->mPendingConfigChange:Z

    .line 106
    .line 107
    if-nez v6, :cond_8

    .line 108
    .line 109
    iget v6, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 110
    .line 111
    if-ne v0, v6, :cond_3

    .line 112
    .line 113
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayMode:Landroid/view/Display$Mode;

    .line 114
    .line 115
    invoke-static {v6, v1}, Lcom/android/systemui/ScreenDecorations;->displayModeChanged(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-nez v6, :cond_3

    .line 120
    .line 121
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 122
    .line 123
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_8

    .line 128
    .line 129
    :cond_3
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 130
    .line 131
    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayMode:Landroid/view/Display$Mode;

    .line 132
    .line 133
    iput-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getPhysicalPixelDisplaySizeRatio()F

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    iget v4, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    .line 142
    .line 143
    cmpg-float v4, v4, v1

    .line 144
    .line 145
    if-nez v4, :cond_4

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    move v2, v3

    .line 149
    :goto_1
    if-eqz v2, :cond_5

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    iput v1, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V

    .line 155
    .line 156
    .line 157
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getDisplayAspectRatioChanged()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    iget-boolean v2, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayAspectRatioChanged:Z

    .line 164
    .line 165
    if-ne v2, v1, :cond_6

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_6
    iput-boolean v1, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayAspectRatioChanged:Z

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V

    .line 171
    .line 172
    .line 173
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 174
    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    iput-boolean v3, v0, Lcom/android/systemui/DisplayCutoutBaseView;->pendingConfigChange:Z

    .line 178
    .line 179
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Lcom/android/systemui/DisplayCutoutBaseView;->updateConfiguration(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateHwLayerRoundedCornerExistAndSize()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateHwLayerRoundedCornerDrawable()V

    .line 188
    .line 189
    .line 190
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    .line 191
    .line 192
    .line 193
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateOverlayProviderViews([Ljava/lang/Integer;)V

    .line 195
    .line 196
    .line 197
    :cond_8
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    .line 198
    .line 199
    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lcom/android/systemui/FaceScanningOverlay;

    .line 204
    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const v2, 0x7f04074f

    .line 212
    .line 213
    .line 214
    invoke-static {v2, v1, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(ILandroid/content/Context;I)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    iput v1, v0, Lcom/android/systemui/FaceScanningOverlay;->faceScanningAnimColor:I

    .line 219
    .line 220
    :cond_9
    iget-boolean v0, v5, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    .line 221
    .line 222
    if-eqz v0, :cond_a

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateFillUDCDisplayCutout()V

    .line 225
    .line 226
    .line 227
    :cond_a
    return-void
.end method

.method public final updateFillUDCDisplayCutout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCMainDisplay()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 14
    .line 15
    const-string v3, "fill_udc_display_cutout"

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v2

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    move v0, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v2

    .line 35
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    .line 36
    .line 37
    iget-boolean v4, v3, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    .line 38
    .line 39
    if-eq v0, v4, :cond_2

    .line 40
    .line 41
    iput-boolean v0, v3, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v4, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;

    .line 46
    .line 47
    invoke-direct {v4, p0, v0, v2}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/ScreenDecorations;ZI)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->blockUpdateStatusIconContainerLayout:Z

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    .line 62
    .line 63
    iget-boolean v0, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    .line 64
    .line 65
    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;

    .line 66
    .line 67
    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/ScreenDecorations;ZI)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method public final updateHwLayerRoundedCornerDrawable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    iput-object p0, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    iget p0, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2, v2, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    .line 26
    .line 27
    iget-object p0, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    iget v1, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    .line 32
    .line 33
    invoke-virtual {p0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_0
    return-void
.end method

.method public final updateHwLayerRoundedCornerExistAndSize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 7
    .line 8
    iget-boolean v2, v1, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasTop:Z

    .line 9
    .line 10
    iget-boolean v3, v1, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasBottom:Z

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    iget-boolean v4, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasTopRoundedCorner:Z

    .line 27
    .line 28
    if-ne v4, v2, :cond_1

    .line 29
    .line 30
    iget-boolean v4, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasBottomRoundedCorner:Z

    .line 31
    .line 32
    if-ne v4, v3, :cond_1

    .line 33
    .line 34
    iget v4, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    .line 35
    .line 36
    if-ne v4, v1, :cond_1

    .line 37
    .line 38
    iget v4, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    .line 39
    .line 40
    if-ne v4, p0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iput-boolean v2, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasTopRoundedCorner:Z

    .line 44
    .line 45
    iput-boolean v3, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasBottomRoundedCorner:Z

    .line 46
    .line 47
    iput v1, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    .line 48
    .line 49
    iput p0, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    .line 50
    .line 51
    iget-object p0, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object p0, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    iget v1, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    .line 64
    .line 65
    invoke-virtual {p0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public final updateLayoutParams()V
    .locals 5

    .line 1
    const-string v0, "ScreenDecorations#updateLayoutParams"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutBaseParams()Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, -0x1

    .line 18
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 19
    .line 20
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 21
    .line 22
    const-string v4, "ScreenDecorHwcOverlay"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    const v4, 0x800033

    .line 28
    .line 29
    .line 30
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 31
    .line 32
    sget-boolean v4, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {v2, v0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    if-ge v0, v1, :cond_3

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 50
    .line 51
    aget-object v2, v2, v0

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v3, v2, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public updateOverlayProviderViews([Ljava/lang/Integer;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mProviderRefreshToken:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mProviderRefreshToken:I

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mProviderRefreshToken:I

    .line 22
    .line 23
    iget v6, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 24
    .line 25
    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    .line 26
    .line 27
    iget-object v8, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    .line 28
    .line 29
    move-object v4, p1

    .line 30
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/decor/OverlayWindow;->onReloadResAndMeasure([Ljava/lang/Integer;IIILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method public updateOverlayWindowVisibilityIfViewExists(Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
