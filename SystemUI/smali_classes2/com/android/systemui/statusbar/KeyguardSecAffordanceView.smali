.class public Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/animation/LaunchableView;


# static fields
.field public static final ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static mIsShowBouncerAnimation:Z

.field public static mWaitForReset:Z


# instance fields
.field public final delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

.field public mAffordancePivotY:I

.field public mAnimatorSet:Ljava/util/List;

.field public mBlurPanelRadius:I

.field public mBlurPanelRoot:Landroid/widget/FrameLayout;

.field public mBlurPanelView:Landroid/view/View;

.field public mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mBottomIconAlphaEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$4;

.field public mBottomIconScaleAnimator:Landroid/animation/ValueAnimator;

.field public final mBottomIconScaleEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$13;

.field public mCanDismissLockScreen:Z

.field public mCenterX:I

.field public mCenterXOnScreen:I

.field public mCenterY:I

.field public mCenterYOnScreen:I

.field public mClockView:Landroid/view/View;

.field public mDeviceInteractive:Z

.field public final mDisplayObserver:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;

.field public mFakeWallpaperView:Landroid/widget/ImageView;

.field protected mFling:Z

.field public final mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

.field public mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

.field public mImageScale:F

.field public mInitialPeekAnimator:Landroid/animation/Animator;

.field public final mInitialPeekAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$12;

.field public mInitialPeekDistance:F

.field public mInitialPeekShowing:Z

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mIsDown:Z

.field public mIsLandScape:Z

.field public mIsNoUnlockNeeded:Z

.field public mIsSecure:Z

.field public mIsShortcutForPhone:Z

.field public mIsShortcutLaunching:Z

.field public mIsTargetView:Z

.field public mIsTaskTypeShortcut:Z

.field public mIsTaskTypeShortcutEnabled:Z

.field public mIsTransitIconNeeded:Z

.field public mIsUp:Z

.field public mJustClicked:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLaunchThresoldAcheived:Z

.field public mLockIconContainerView:Landroid/view/View;

.field public mLockStarContainer:Landroid/view/View;

.field public mLockWallpaperContainer:Landroid/view/View;

.field public mMusicContainer:Landroid/view/View;

.field public mNotificationPanelIconOnlyContainer:Landroid/view/View;

.field public mNotificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

.field public mNotificationStackScrollerView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public mOldPanelBackgroundAlpha:I

.field public mPanelBackground:Landroid/view/View;

.field public mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

.field public mPanelDimView:Landroid/view/View;

.field public mPanelIcon:Landroid/widget/ImageView;

.field public mQsExpanded:Z

.field public mRectangleAlphaAnimator:Landroid/animation/Animator;

.field public final mRectangleAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$11;

.field public final mRectangleBounds:Landroid/graphics/Rect;

.field public mRectangleColor:I

.field public mRectangleCornerRadius:I

.field public mRectangleDistanceCovered:F

.field public mRectangleIconAlpha:I

.field public final mRectangleIconBounds:Landroid/graphics/Rect;

.field public mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mRectangleIconMargin:I

.field public mRectangleIconScale:F

.field public mRectangleIconScaleAnimator:Landroid/animation/Animator;

.field public final mRectangleIconScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$10;

.field public mRectangleIconScaleStart:F

.field public mRectangleIconSize:I

.field public final mRectanglePaint:Landroid/graphics/Paint;

.field public mRectangleScaleAnimator:Landroid/animation/Animator;

.field public final mRectangleScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$9;

.field public mRectangleScaleStart:F

.field public mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

.field public final mRectangleShrinkAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;

.field public mRectangleShrinkeAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mRectangleShrinkeAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$6;

.field public mRight:Z

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mShortcutCallback:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;

.field public mShortcutForCamera:Z

.field public mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

.field public final mShortcutLaunchAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;

.field public mShortcutLaunchAnimator:Landroid/animation/Animator;

.field public final mShortcutLaunchAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;

.field public mShortcutLaunchDistance:F

.field public mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public mTouchCancelled:Z

.field protected mTouchHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$TouchHandlePolicy;

.field public final mTouchSlop:I

.field public mTrusted:Z

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mVerticalScale:F

.field public mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

.field public final mVisibilityListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda1;

.field public mWallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;


# direct methods
.method public static synthetic $r8$lambda$4vd0Zn5d63IMpqv1U9KSTb-BDHI(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const v1, 0x3e6147ae    # 0.22f

    .line 4
    .line 5
    .line 6
    const/high16 v2, 0x3e800000    # 0.25f

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/high16 v4, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 15
    .line 16
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 17
    .line 18
    const v1, 0x3ea8f5c3    # 0.33f

    .line 19
    .line 20
    .line 21
    const v2, 0x3f2e147b    # 0.68f

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v4, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    .line 31
    .line 32
    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    .line 6
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    const/4 p3, 0x0

    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchCancelled:Z

    .line 9
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 10
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    .line 11
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    .line 12
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutForPhone:Z

    .line 13
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresoldAcheived:Z

    .line 14
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mQsExpanded:Z

    .line 15
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsUp:Z

    .line 16
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekShowing:Z

    .line 17
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    .line 18
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 19
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    .line 20
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTransitIconNeeded:Z

    .line 21
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    const/4 p4, 0x5

    .line 22
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchSlop:I

    const/16 p4, 0xff

    .line 23
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    .line 24
    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mOldPanelBackgroundAlpha:I

    .line 25
    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRadius:I

    const/16 p4, 0x64

    .line 26
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleCornerRadius:I

    const/4 p4, 0x0

    .line 27
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    const/high16 p4, 0x3f800000    # 1.0f

    .line 28
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mImageScale:F

    const v0, 0x3e19999a    # 0.15f

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVerticalScale:F

    .line 30
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScale:F

    .line 31
    new-instance p4, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVisibilityListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda1;

    .line 32
    new-instance p4, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutCallback:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDisplayObserver:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$4;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconAlphaEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$4;

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$6;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkeAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$6;

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$9;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$9;

    .line 41
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$10;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$10;

    .line 42
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$11;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$11;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$12;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$12;

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$13;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconScaleEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$13;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    .line 46
    new-instance v0, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    .line 47
    sget-object v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->Companion:Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    sget-object v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    .line 49
    invoke-virtual {v0}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    .line 50
    iput-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    .line 52
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 53
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 54
    const-class v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 55
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 56
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 57
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsSecure:Z

    .line 59
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTrusted:Z

    .line 61
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCanDismissLockScreen:Z

    const-string/jumbo p1, "white_lockscreen_wallpaper"

    .line 63
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    filled-new-array {p1}, [Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 64
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setRectangleColor()V

    .line 66
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p4, 0x2

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLandScape:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateDisplayParameters()V

    .line 68
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method

.method public static cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelAllAnimators()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final cancelAnimatorSet()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAnimatorSet:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/animation/AnimatorSet;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAnimatorSet:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method

.method public final init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$GeneralTouchHandler;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$TouchHandlePolicy;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final isSecure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsSecure:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTrusted:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCanDismissLockScreen:Z

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final launchShortcut(FF)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v2, 0x3e8

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchX:F

    .line 26
    .line 27
    sub-float/2addr p1, v3

    .line 28
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchY:F

    .line 29
    .line 30
    sub-float/2addr p2, v3

    .line 31
    float-to-double v3, p1

    .line 32
    float-to-double v5, p2

    .line 33
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    double-to-float v3, v3

    .line 38
    mul-float/2addr v0, p1

    .line 39
    mul-float/2addr v2, p2

    .line 40
    add-float/2addr v2, v0

    .line 41
    div-float/2addr v2, v3

    .line 42
    :goto_0
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    .line 44
    .line 45
    const/high16 p2, -0x3a860000    # -4000.0f

    .line 46
    .line 47
    cmpl-float p2, v2, p2

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    if-lez p2, :cond_a

    .line 51
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->isSecure()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    .line 61
    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 65
    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    move v2, p1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v2, v0

    .line 71
    :goto_1
    sput-boolean v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    .line 72
    .line 73
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    .line 74
    .line 75
    if-nez v3, :cond_2

    .line 76
    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    :cond_2
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    .line 80
    .line 81
    if-eqz p2, :cond_3

    .line 82
    .line 83
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 84
    .line 85
    if-nez p2, :cond_3

    .line 86
    .line 87
    move p2, p1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move p2, v0

    .line 90
    :goto_2
    sput-boolean p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    .line 91
    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutForPhone:Z

    .line 95
    .line 96
    if-eqz p2, :cond_4

    .line 97
    .line 98
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    xor-int/2addr p2, p1

    .line 105
    sput-boolean p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    .line 106
    .line 107
    :cond_4
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo p2, "startShortcutLaunchAnimation"

    .line 111
    .line 112
    .line 113
    const-string v2, "KeyguardSecAffordanceView"

    .line 114
    .line 115
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    const/4 p2, 0x2

    .line 119
    new-array v3, p2, [F

    .line 120
    .line 121
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    .line 122
    .line 123
    aput v4, v3, v0

    .line 124
    .line 125
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    .line 126
    .line 127
    int-to-float v4, v4

    .line 128
    aput v4, v3, p1

    .line 129
    .line 130
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    .line 135
    .line 136
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutForCamera:Z

    .line 137
    .line 138
    const-wide/16 v5, 0x12c

    .line 139
    .line 140
    const-wide/16 v7, 0x1c2

    .line 141
    .line 142
    if-eqz v4, :cond_5

    .line 143
    .line 144
    move-wide v9, v5

    .line 145
    goto :goto_3

    .line 146
    :cond_5
    move-wide v9, v7

    .line 147
    :goto_3
    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    .line 149
    .line 150
    sget-object v4, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 151
    .line 152
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    .line 154
    .line 155
    new-instance v4, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    .line 156
    .line 157
    const/4 v9, 0x6

    .line 158
    invoke-direct {v4, p0, v9}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    .line 163
    .line 164
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;

    .line 165
    .line 166
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    .line 168
    .line 169
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    .line 170
    .line 171
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 172
    .line 173
    .line 174
    const-string/jumbo v3, "startShortcutLaunchAlphaAnimation"

    .line 175
    .line 176
    .line 177
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    .line 181
    .line 182
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    sget-boolean v3, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    .line 187
    .line 188
    if-nez v3, :cond_7

    .line 189
    .line 190
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 191
    .line 192
    if-eqz v3, :cond_6

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_6
    move v3, v0

    .line 196
    goto :goto_5

    .line 197
    :cond_7
    :goto_4
    move v3, p1

    .line 198
    :goto_5
    new-array p2, p2, [I

    .line 199
    .line 200
    aput v2, p2, v0

    .line 201
    .line 202
    if-eqz v3, :cond_8

    .line 203
    .line 204
    move v2, v0

    .line 205
    goto :goto_6

    .line 206
    :cond_8
    const/16 v2, 0xff

    .line 207
    .line 208
    :goto_6
    aput v2, p2, p1

    .line 209
    .line 210
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

    .line 215
    .line 216
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutForCamera:Z

    .line 217
    .line 218
    if-eqz p2, :cond_9

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_9
    move-wide v5, v7

    .line 222
    :goto_7
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 223
    .line 224
    .line 225
    sget-object p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 226
    .line 227
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    .line 229
    .line 230
    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    .line 231
    .line 232
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    .line 237
    .line 238
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;

    .line 239
    .line 240
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleScaleAnimation(F)V

    .line 249
    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_a
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAllAnimators()V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 258
    .line 259
    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setShortcutLaunchInProgress(Z)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleShrinkAnimation()V

    .line 263
    .line 264
    .line 265
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    .line 266
    .line 267
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 268
    .line 269
    .line 270
    :goto_8
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIImageView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const-string v0, "bottom"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 11
    .line 12
    .line 13
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDisplayObserver:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVisibilityListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->reset()V

    .line 5
    .line 6
    .line 7
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLandScape:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateDisplayParameters()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIImageView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 5
    .line 6
    .line 7
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDisplayObserver:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVisibilityListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    .line 31
    .line 32
    check-cast v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mOldPanelBackgroundAlpha:I

    .line 16
    .line 17
    if-eq v1, v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 26
    .line 27
    .line 28
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mOldPanelBackgroundAlpha:I

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

    .line 31
    .line 32
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleCornerRadius:I

    .line 33
    .line 34
    int-to-float v1, v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackground:Landroid/view/View;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    .line 41
    .line 42
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 47
    .line 48
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    .line 54
    .line 55
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    .line 63
    .line 64
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 65
    .line 66
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 67
    .line 68
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 69
    .line 70
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 71
    .line 72
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ImageView;->setLeftTopRightBottom(IIII)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    .line 76
    .line 77
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRadius:I

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->semSetBlurRadius(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 84
    .line 85
    .line 86
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterXOnScreen:I

    .line 87
    .line 88
    neg-int v0, v0

    .line 89
    int-to-float v0, v0

    .line 90
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterYOnScreen:I

    .line 91
    .line 92
    neg-int v1, v1

    .line 93
    int-to-float v1, v1

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    .line 98
    .line 99
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    int-to-float v3, v1

    .line 102
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 103
    .line 104
    int-to-float v4, v1

    .line 105
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 106
    .line 107
    int-to-float v5, v1

    .line 108
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 109
    .line 110
    int-to-float v6, v0

    .line 111
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleCornerRadius:I

    .line 112
    .line 113
    int-to-float v8, v0

    .line 114
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    .line 115
    .line 116
    move-object v2, p1

    .line 117
    move v7, v8

    .line 118
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 144
    .line 145
    .line 146
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 147
    .line 148
    .line 149
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    .line 151
    .line 152
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mImageScale:F

    .line 153
    .line 154
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterX:I

    .line 155
    .line 156
    int-to-float v1, v1

    .line 157
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterY:I

    .line 158
    .line 159
    int-to-float v2, v2

    .line 160
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 161
    .line 162
    .line 163
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x2

    .line 9
    div-int/2addr p1, p2

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterX:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    div-int/2addr p1, p2

    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterY:I

    .line 18
    .line 19
    new-array p1, p2, [I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    aget p2, p1, p2

    .line 26
    .line 27
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterXOnScreen:I

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    aget p1, p1, p2

    .line 31
    .line 32
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterYOnScreen:I

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_35

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    cmpl-float v0, v0, v1

    .line 17
    .line 18
    if-eqz v0, :cond_35

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_13

    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$TouchHandlePolicy;

    .line 29
    .line 30
    if-eqz p0, :cond_35

    .line 31
    .line 32
    check-cast p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$GeneralTouchHandler;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    if-eq v0, v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 47
    .line 48
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsUp:Z

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/4 v6, 0x1

    .line 63
    const/4 v7, 0x0

    .line 64
    if-eqz v0, :cond_17

    .line 65
    .line 66
    if-eq v0, v6, :cond_b

    .line 67
    .line 68
    if-eq v0, v3, :cond_3

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    if-eq v0, v1, :cond_11

    .line 72
    .line 73
    const/4 v3, 0x5

    .line 74
    if-eq v0, v3, :cond_2

    .line 75
    .line 76
    goto/16 :goto_12

    .line 77
    .line 78
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    .line 79
    .line 80
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 94
    .line 95
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    .line 105
    .line 106
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    .line 107
    .line 108
    goto/16 :goto_12

    .line 109
    .line 110
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchCancelled:Z

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    goto/16 :goto_12

    .line 115
    .line 116
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 117
    .line 118
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 123
    .line 124
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->userActivity()V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 130
    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 134
    .line 135
    .line 136
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 137
    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchX:F

    .line 141
    .line 142
    sub-float/2addr p1, v4

    .line 143
    goto :goto_0

    .line 144
    :cond_6
    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchX:F

    .line 145
    .line 146
    sub-float p1, v4, p1

    .line 147
    .line 148
    :goto_0
    cmpg-float v0, p1, v1

    .line 149
    .line 150
    if-gez v0, :cond_7

    .line 151
    .line 152
    move p1, v1

    .line 153
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchY:F

    .line 154
    .line 155
    sub-float/2addr v0, v5

    .line 156
    cmpg-float v3, v0, v1

    .line 157
    .line 158
    if-gez v3, :cond_8

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_8
    move v1, v0

    .line 162
    :goto_1
    float-to-double v3, p1

    .line 163
    float-to-double v0, v1

    .line 164
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 165
    .line 166
    .line 167
    move-result-wide v0

    .line 168
    double-to-float p1, v0

    .line 169
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchSlop:I

    .line 170
    .line 171
    int-to-float v0, v0

    .line 172
    cmpl-float v0, p1, v0

    .line 173
    .line 174
    if-ltz v0, :cond_34

    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    .line 177
    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimatorSet()V

    .line 184
    .line 185
    .line 186
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekDistance:F

    .line 187
    .line 188
    add-float/2addr p1, v0

    .line 189
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    .line 190
    .line 191
    cmpl-float v1, p1, v0

    .line 192
    .line 193
    if-ltz v1, :cond_a

    .line 194
    .line 195
    const v1, 0x3e4ccccd    # 0.2f

    .line 196
    .line 197
    .line 198
    invoke-static {p1, v0, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchSlop:I

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchSlop:I

    .line 206
    .line 207
    :goto_2
    int-to-float v0, v0

    .line 208
    sub-float/2addr p1, v0

    .line 209
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekShowing:Z

    .line 210
    .line 211
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    .line 212
    .line 213
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updatePanelViews(F)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_12

    .line 222
    .line 223
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchCancelled:Z

    .line 224
    .line 225
    if-eqz v0, :cond_c

    .line 226
    .line 227
    goto/16 :goto_12

    .line 228
    .line 229
    :cond_c
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsUp:Z

    .line 230
    .line 231
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    .line 232
    .line 233
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    .line 234
    .line 235
    cmpl-float v0, v0, v1

    .line 236
    .line 237
    if-ltz v0, :cond_d

    .line 238
    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    .line 240
    .line 241
    if-eqz v0, :cond_d

    .line 242
    .line 243
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->launchShortcut(FF)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 248
    .line 249
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 250
    .line 251
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 252
    .line 253
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    .line 259
    .line 260
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAllAnimators()V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 266
    .line 267
    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setShortcutLaunchInProgress(Z)V

    .line 268
    .line 269
    .line 270
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 271
    .line 272
    if-eqz v0, :cond_e

    .line 273
    .line 274
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 275
    .line 276
    .line 277
    iput-object v7, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 278
    .line 279
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    .line 280
    .line 281
    if-eqz v0, :cond_11

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 284
    .line 285
    .line 286
    move-result-wide v0

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 288
    .line 289
    .line 290
    move-result-wide v3

    .line 291
    sub-long/2addr v0, v3

    .line 292
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    int-to-long v3, v3

    .line 297
    const-wide/16 v7, 0x2

    .line 298
    .line 299
    mul-long/2addr v3, v7

    .line 300
    cmp-long v0, v0, v3

    .line 301
    .line 302
    if-lez v0, :cond_f

    .line 303
    .line 304
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_f
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    .line 308
    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    .line 310
    .line 311
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 312
    .line 313
    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    .line 315
    .line 316
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->resetBlurRectangleView()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->resetFakeWallpaperView()V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 329
    .line 330
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 331
    .line 332
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 333
    .line 334
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 335
    .line 336
    if-eqz v1, :cond_10

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_10
    iput-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 340
    .line 341
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 347
    .line 348
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    .line 349
    .line 350
    .line 351
    :cond_11
    :goto_4
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchCancelled:Z

    .line 352
    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 354
    .line 355
    if-eqz v0, :cond_12

    .line 356
    .line 357
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 358
    .line 359
    .line 360
    :cond_12
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    .line 361
    .line 362
    if-eqz p1, :cond_13

    .line 363
    .line 364
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 365
    .line 366
    if-nez p1, :cond_13

    .line 367
    .line 368
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    .line 369
    .line 370
    const/16 v0, 0x3e9

    .line 371
    .line 372
    const-wide/16 v3, 0x5dc

    .line 373
    .line 374
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 375
    .line 376
    .line 377
    :cond_13
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    .line 378
    .line 379
    if-eqz p1, :cond_14

    .line 380
    .line 381
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsUp:Z

    .line 382
    .line 383
    if-nez p1, :cond_15

    .line 384
    .line 385
    :cond_14
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    .line 386
    .line 387
    if-nez p1, :cond_15

    .line 388
    .line 389
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    .line 390
    .line 391
    if-nez p1, :cond_15

    .line 392
    .line 393
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAllAnimators()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleShrinkAnimation()V

    .line 397
    .line 398
    .line 399
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    .line 400
    .line 401
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    filled-new-array {p1, v2}, [I

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 414
    .line 415
    const-wide/16 v0, 0xc8

    .line 416
    .line 417
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 418
    .line 419
    .line 420
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 421
    .line 422
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 423
    .line 424
    .line 425
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    .line 426
    .line 427
    const/16 v1, 0x8

    .line 428
    .line 429
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 433
    .line 434
    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkeAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$6;

    .line 436
    .line 437
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    .line 439
    .line 440
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 441
    .line 442
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 443
    .line 444
    .line 445
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 446
    .line 447
    invoke-interface {p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setShortcutLaunchInProgress(Z)V

    .line 448
    .line 449
    .line 450
    :cond_15
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    .line 451
    .line 452
    if-eqz p1, :cond_16

    .line 453
    .line 454
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 455
    .line 456
    if-eqz p1, :cond_34

    .line 457
    .line 458
    :cond_16
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 459
    .line 460
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 461
    .line 462
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 463
    .line 464
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 465
    .line 466
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 467
    .line 468
    if-eqz p0, :cond_34

    .line 469
    .line 470
    invoke-interface {p0, v6}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 471
    .line 472
    .line 473
    goto/16 :goto_12

    .line 474
    .line 475
    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAllAnimators()V

    .line 476
    .line 477
    .line 478
    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchX:F

    .line 479
    .line 480
    iput v5, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialTouchY:F

    .line 481
    .line 482
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTouchCancelled:Z

    .line 483
    .line 484
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mJustClicked:Z

    .line 485
    .line 486
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    .line 487
    .line 488
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresoldAcheived:Z

    .line 489
    .line 490
    sput-boolean v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    .line 491
    .line 492
    sput-boolean v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    .line 493
    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 495
    .line 496
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 497
    .line 498
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    if-ltz v4, :cond_19

    .line 502
    .line 503
    if-lt v4, v3, :cond_18

    .line 504
    .line 505
    goto :goto_5

    .line 506
    :cond_18
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 507
    .line 508
    aget-object v0, v0, v4

    .line 509
    .line 510
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    iget v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->shortcutProperty:I

    .line 514
    .line 515
    goto :goto_6

    .line 516
    :cond_19
    :goto_5
    const-string v0, "getShortcutProperty wrong param: "

    .line 517
    .line 518
    const-string v5, "KeyguardShortcutManager"

    .line 519
    .line 520
    invoke-static {v0, v4, v5}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 521
    .line 522
    .line 523
    move v0, v3

    .line 524
    :goto_6
    if-ne v0, v6, :cond_1a

    .line 525
    .line 526
    move v0, v6

    .line 527
    goto :goto_7

    .line 528
    :cond_1a
    move v0, v2

    .line 529
    :goto_7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 530
    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 532
    .line 533
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 534
    .line 535
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNoUnlockNeeded(I)Z

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    .line 540
    .line 541
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLandScape:Z

    .line 542
    .line 543
    if-eqz v0, :cond_1b

    .line 544
    .line 545
    const v0, 0x3dcccccd    # 0.1f

    .line 546
    .line 547
    .line 548
    goto :goto_8

    .line 549
    :cond_1b
    const v0, 0x3e19999a    # 0.15f

    .line 550
    .line 551
    .line 552
    :goto_8
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVerticalScale:F

    .line 553
    .line 554
    const/16 v0, 0x66

    .line 555
    .line 556
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    .line 557
    .line 558
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 559
    .line 560
    if-eqz v4, :cond_1e

    .line 561
    .line 562
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 563
    .line 564
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 565
    .line 566
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskTypeEnabled(I)Z

    .line 567
    .line 568
    .line 569
    move-result v4

    .line 570
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    .line 571
    .line 572
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 573
    .line 574
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 575
    .line 576
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isPanelIconTransitionNeeded(I)Z

    .line 577
    .line 578
    .line 579
    move-result v4

    .line 580
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTransitIconNeeded:Z

    .line 581
    .line 582
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    .line 583
    .line 584
    if-eqz v4, :cond_1c

    .line 585
    .line 586
    const/16 v5, 0xcc

    .line 587
    .line 588
    goto :goto_9

    .line 589
    :cond_1c
    move v5, v0

    .line 590
    :goto_9
    if-eqz v4, :cond_1d

    .line 591
    .line 592
    const/16 v0, 0xff

    .line 593
    .line 594
    :cond_1d
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    .line 595
    .line 596
    move v0, v5

    .line 597
    :cond_1e
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    .line 598
    .line 599
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 600
    .line 601
    .line 602
    const/high16 v0, 0x3f800000    # 1.0f

    .line 603
    .line 604
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScale:F

    .line 605
    .line 606
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekShowing:Z

    .line 607
    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    .line 609
    .line 610
    if-nez v0, :cond_1f

    .line 611
    .line 612
    goto :goto_a

    .line 613
    :cond_1f
    invoke-virtual {v0, v6}, Landroid/view/View;->semSetBlurEnabled(Z)V

    .line 614
    .line 615
    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackground:Landroid/view/View;

    .line 617
    .line 618
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

    .line 619
    .line 620
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 621
    .line 622
    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRoot:Landroid/widget/FrameLayout;

    .line 624
    .line 625
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 626
    .line 627
    .line 628
    :goto_a
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateRectangleIconDrawable(Z)V

    .line 629
    .line 630
    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mClockView:Landroid/view/View;

    .line 632
    .line 633
    if-nez v0, :cond_22

    .line 634
    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 636
    .line 637
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 638
    .line 639
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 640
    .line 641
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 642
    .line 643
    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 644
    .line 645
    if-nez v0, :cond_20

    .line 646
    .line 647
    move-object v4, v7

    .line 648
    goto :goto_b

    .line 649
    :cond_20
    iget-object v4, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mClockContainer:Landroid/view/View;

    .line 650
    .line 651
    if-eqz v4, :cond_21

    .line 652
    .line 653
    goto :goto_b

    .line 654
    :cond_21
    iget-object v4, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    .line 655
    .line 656
    :goto_b
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mClockView:Landroid/view/View;

    .line 657
    .line 658
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationStackScrollerView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 659
    .line 660
    if-nez v0, :cond_23

    .line 661
    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 663
    .line 664
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 665
    .line 666
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 667
    .line 668
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 669
    .line 670
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 671
    .line 672
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationStackScrollerView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 673
    .line 674
    :cond_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    .line 675
    .line 676
    if-nez v0, :cond_25

    .line 677
    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 679
    .line 680
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 681
    .line 682
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 683
    .line 684
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    .line 685
    .line 686
    iget-object v0, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 687
    .line 688
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 689
    .line 690
    if-eqz v0, :cond_24

    .line 691
    .line 692
    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->getIconContainer()Landroid/view/View;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    goto :goto_c

    .line 697
    :cond_24
    move-object v0, v7

    .line 698
    :goto_c
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    .line 699
    .line 700
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockIconContainerView:Landroid/view/View;

    .line 701
    .line 702
    if-nez v0, :cond_26

    .line 703
    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 705
    .line 706
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 707
    .line 708
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 709
    .line 710
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 711
    .line 712
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecViewController;->getLockIconContainer()Landroid/view/ViewGroup;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockIconContainerView:Landroid/view/View;

    .line 717
    .line 718
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMusicContainer:Landroid/view/View;

    .line 719
    .line 720
    if-nez v0, :cond_2a

    .line 721
    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 723
    .line 724
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 725
    .line 726
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 727
    .line 728
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 729
    .line 730
    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 731
    .line 732
    if-nez v0, :cond_27

    .line 733
    .line 734
    move-object v0, v7

    .line 735
    goto :goto_d

    .line 736
    :cond_27
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    .line 737
    .line 738
    :goto_d
    if-eqz v0, :cond_29

    .line 739
    .line 740
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 741
    .line 742
    .line 743
    move-result v4

    .line 744
    if-eqz v4, :cond_28

    .line 745
    .line 746
    goto :goto_e

    .line 747
    :cond_28
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    check-cast v0, Landroid/view/View;

    .line 752
    .line 753
    goto :goto_f

    .line 754
    :cond_29
    :goto_e
    move-object v0, v7

    .line 755
    :goto_f
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMusicContainer:Landroid/view/View;

    .line 756
    .line 757
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockStarContainer:Landroid/view/View;

    .line 758
    .line 759
    if-nez v0, :cond_2b

    .line 760
    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 762
    .line 763
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 764
    .line 765
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 766
    .line 767
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    .line 768
    .line 769
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockStarContainer:Landroid/view/View;

    .line 770
    .line 771
    :cond_2b
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockWallpaperContainer:Landroid/view/View;

    .line 772
    .line 773
    if-nez v0, :cond_2c

    .line 774
    .line 775
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 776
    .line 777
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 778
    .line 779
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 780
    .line 781
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 782
    .line 783
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 784
    .line 785
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockWallpaperContainer:Landroid/view/View;

    .line 786
    .line 787
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFakeWallpaperView:Landroid/widget/ImageView;

    .line 788
    .line 789
    if-nez v0, :cond_2d

    .line 790
    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 792
    .line 793
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 794
    .line 795
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 796
    .line 797
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 798
    .line 799
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 800
    .line 801
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 802
    .line 803
    const v4, 0x7f0a03e6

    .line 804
    .line 805
    .line 806
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    check-cast v0, Landroid/widget/ImageView;

    .line 811
    .line 812
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFakeWallpaperView:Landroid/widget/ImageView;

    .line 813
    .line 814
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 815
    .line 816
    if-nez v0, :cond_2e

    .line 817
    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 819
    .line 820
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 821
    .line 822
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 823
    .line 824
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 825
    .line 826
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 827
    .line 828
    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;

    .line 829
    .line 830
    if-nez v0, :cond_2f

    .line 831
    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 833
    .line 834
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 835
    .line 836
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 837
    .line 838
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;

    .line 839
    .line 840
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;

    .line 841
    .line 842
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFakeWallpaperView:Landroid/widget/ImageView;

    .line 843
    .line 844
    const/4 v4, 0x7

    .line 845
    if-eqz v0, :cond_32

    .line 846
    .line 847
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled()Z

    .line 848
    .line 849
    .line 850
    move-result v0

    .line 851
    if-nez v0, :cond_32

    .line 852
    .line 853
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 854
    .line 855
    .line 856
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 857
    .line 858
    .line 859
    move-result v0

    .line 860
    sget-object v5, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    .line 861
    .line 862
    aget v0, v5, v0

    .line 863
    .line 864
    if-ne v0, v4, :cond_30

    .line 865
    .line 866
    move v0, v6

    .line 867
    goto :goto_10

    .line 868
    :cond_30
    move v0, v2

    .line 869
    :goto_10
    if-eqz v0, :cond_31

    .line 870
    .line 871
    goto :goto_11

    .line 872
    :cond_31
    new-instance v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    .line 873
    .line 874
    invoke-direct {v0}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;-><init>()V

    .line 875
    .line 876
    .line 877
    const-class v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 878
    .line 879
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v5

    .line 883
    check-cast v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 884
    .line 885
    invoke-virtual {v5}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    iget v8, v5, Landroid/graphics/Point;->x:I

    .line 890
    .line 891
    iput v8, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 892
    .line 893
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 894
    .line 895
    iput v5, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 896
    .line 897
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;

    .line 898
    .line 899
    invoke-virtual {v5, v0, v7}, Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFakeWallpaperView:Landroid/widget/ImageView;

    .line 904
    .line 905
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 906
    .line 907
    .line 908
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFakeWallpaperView:Landroid/widget/ImageView;

    .line 909
    .line 910
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    .line 912
    .line 913
    :cond_32
    :goto_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 914
    .line 915
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 916
    .line 917
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 918
    .line 919
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 920
    .line 921
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 922
    .line 923
    .line 924
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 925
    .line 926
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    .line 927
    .line 928
    .line 929
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 930
    .line 931
    .line 932
    iput-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    .line 933
    .line 934
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    .line 935
    .line 936
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    .line 937
    .line 938
    const-string v0, "KeyguardSecAffordanceView"

    .line 939
    .line 940
    const-string/jumbo v5, "startInitialPeekAnimation"

    .line 941
    .line 942
    .line 943
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .line 945
    .line 946
    new-array v0, v3, [F

    .line 947
    .line 948
    aput v1, v0, v2

    .line 949
    .line 950
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekDistance:F

    .line 951
    .line 952
    aput v2, v0, v6

    .line 953
    .line 954
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    .line 959
    .line 960
    const-wide/16 v2, 0x12c

    .line 961
    .line 962
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 963
    .line 964
    .line 965
    sget-object v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 966
    .line 967
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 968
    .line 969
    .line 970
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    .line 971
    .line 972
    invoke-direct {v2, p0, v4}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 976
    .line 977
    .line 978
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$12;

    .line 979
    .line 980
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 981
    .line 982
    .line 983
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    .line 984
    .line 985
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 986
    .line 987
    .line 988
    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    .line 989
    .line 990
    .line 991
    const v0, 0x3f666666    # 0.9f

    .line 992
    .line 993
    .line 994
    invoke-virtual {p0, v0, v6}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageScale(FZ)V

    .line 995
    .line 996
    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 998
    .line 999
    if-eqz v0, :cond_33

    .line 1000
    .line 1001
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1002
    .line 1003
    .line 1004
    :cond_33
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1009
    .line 1010
    if-eqz v0, :cond_34

    .line 1011
    .line 1012
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1013
    .line 1014
    .line 1015
    :cond_34
    :goto_12
    return v6

    .line 1016
    :cond_35
    :goto_13
    return v2
.end method

.method public final onUnlockedChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsSecure:Z

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 12
    .line 13
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTrusted:Z

    .line 16
    .line 17
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 18
    .line 19
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCanDismissLockScreen:Z

    .line 22
    .line 23
    return-void
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    .line 21
    int-to-float p2, p2

    .line 22
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 23
    .line 24
    int-to-float p1, p1

    .line 25
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->launchShortcut(FF)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/widget/SystemUIImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final performClick()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->performClick()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final reset()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    .line 2
    .line 3
    const-string v1, "KeyguardSecAffordanceView"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "WaitForReset right:"

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 23
    .line 24
    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    .line 29
    .line 30
    const/16 v2, 0x3e9

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    .line 42
    .line 43
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v2, "reset right:"

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 52
    .line 53
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTransitIconNeeded:Z

    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 64
    .line 65
    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    .line 75
    .line 76
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    .line 80
    .line 81
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAllAnimators()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimatorSet()V

    .line 88
    .line 89
    .line 90
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mQsExpanded:Z

    .line 91
    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 95
    .line 96
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 99
    .line 100
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    .line 101
    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updatePanelViews(F)V

    .line 106
    .line 107
    .line 108
    :cond_4
    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setRectangleColor()V

    .line 112
    .line 113
    .line 114
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    .line 117
    .line 118
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    .line 122
    .line 123
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->resetBlurRectangleView()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->resetFakeWallpaperView()V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final resetBlurRectangleView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->semSetBlurEnabled(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackground:Landroid/view/View;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRoot:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    const/16 v0, 0x8

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final resetFakeWallpaperView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFakeWallpaperView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFakeWallpaperView:Landroid/widget/ImageView;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setImageAlpha(FZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 9
    .line 10
    .line 11
    const/high16 v0, 0x437f0000    # 255.0f

    .line 12
    .line 13
    mul-float/2addr p1, v0

    .line 14
    float-to-int p1, p1

    .line 15
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez p2, :cond_4

    .line 27
    .line 28
    if-gtz p1, :cond_2

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    :cond_2
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    filled-new-array {p2, p1}, [I

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda3;

    .line 59
    .line 60
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconAlphaEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$4;

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v0, 0x12c

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method public final setImageScale(FZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconScaleAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mImageScale:F

    .line 7
    .line 8
    cmpl-float v1, p1, v0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mImageScale:F

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p2, 0x2

    .line 22
    new-array v1, p2, [F

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput v0, v1, v2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    aput p1, v1, v0

    .line 29
    .line 30
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconScaleAnimator:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBottomIconScaleEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$13;

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    .line 48
    .line 49
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v0, 0x12c

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public final setRectangleBounds(F)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVerticalScale:F

    .line 7
    .line 8
    mul-float v3, v1, v2

    .line 9
    .line 10
    const/high16 v4, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr v3, v4

    .line 13
    sub-float v5, v1, v3

    .line 14
    .line 15
    iget v6, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScale:F

    .line 16
    .line 17
    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconSize:I

    .line 18
    .line 19
    int-to-float v8, v7

    .line 20
    mul-float/2addr v8, v6

    .line 21
    float-to-int v8, v8

    .line 22
    iget v9, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconMargin:I

    .line 23
    .line 24
    sub-int v10, v8, v7

    .line 25
    .line 26
    div-int/lit8 v10, v10, 0x2

    .line 27
    .line 28
    sub-int v10, v9, v10

    .line 29
    .line 30
    mul-int/lit8 v9, v9, 0x2

    .line 31
    .line 32
    add-int/2addr v9, v8

    .line 33
    iget v11, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    .line 34
    .line 35
    int-to-float v12, v9

    .line 36
    cmpl-float v12, v11, v12

    .line 37
    .line 38
    if-lez v12, :cond_0

    .line 39
    .line 40
    float-to-int v11, v11

    .line 41
    const/4 v12, 0x2

    .line 42
    invoke-static {v11, v9, v12, v10}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    :cond_0
    sub-float v9, v5, v3

    .line 47
    .line 48
    div-float/2addr v9, v4

    .line 49
    add-float/2addr v9, v3

    .line 50
    div-int/lit8 v4, v8, 0x2

    .line 51
    .line 52
    int-to-float v11, v4

    .line 53
    sub-float/2addr v9, v11

    .line 54
    float-to-int v9, v9

    .line 55
    add-int v11, v9, v8

    .line 56
    .line 57
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 58
    .line 59
    const/4 v13, 0x0

    .line 60
    if-eqz v12, :cond_4

    .line 61
    .line 62
    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    .line 63
    .line 64
    int-to-float v14, v7

    .line 65
    sub-float v15, v14, p1

    .line 66
    .line 67
    cmpg-float v16, v15, v13

    .line 68
    .line 69
    if-gez v16, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move v13, v15

    .line 73
    :goto_0
    add-float v15, v14, v13

    .line 74
    .line 75
    cmpl-float v14, v15, v14

    .line 76
    .line 77
    if-lez v14, :cond_2

    .line 78
    .line 79
    iget v14, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleCornerRadius:I

    .line 80
    .line 81
    add-int/2addr v14, v7

    .line 82
    int-to-float v15, v14

    .line 83
    :cond_2
    float-to-int v14, v13

    .line 84
    add-int/2addr v14, v10

    .line 85
    div-int/lit8 v10, v7, 0x2

    .line 86
    .line 87
    sub-int/2addr v10, v4

    .line 88
    if-ge v14, v10, :cond_3

    .line 89
    .line 90
    move v14, v10

    .line 91
    :cond_3
    add-int v4, v14, v8

    .line 92
    .line 93
    add-int/2addr v7, v8

    .line 94
    if-le v4, v7, :cond_8

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    iget v4, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    .line 98
    .line 99
    int-to-float v14, v4

    .line 100
    cmpl-float v15, p1, v14

    .line 101
    .line 102
    if-lez v15, :cond_5

    .line 103
    .line 104
    move v15, v14

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    move/from16 v15, p1

    .line 107
    .line 108
    :goto_1
    sub-float v14, v15, v14

    .line 109
    .line 110
    cmpg-float v13, v14, v13

    .line 111
    .line 112
    if-gez v13, :cond_6

    .line 113
    .line 114
    iget v13, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleCornerRadius:I

    .line 115
    .line 116
    neg-int v13, v13

    .line 117
    int-to-float v13, v13

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    move v13, v14

    .line 120
    :goto_2
    float-to-int v14, v15

    .line 121
    sub-int/2addr v14, v10

    .line 122
    div-int/lit8 v4, v4, 0x2

    .line 123
    .line 124
    div-int/lit8 v10, v7, 0x2

    .line 125
    .line 126
    add-int/2addr v10, v4

    .line 127
    if-le v14, v10, :cond_7

    .line 128
    .line 129
    move v4, v10

    .line 130
    goto :goto_3

    .line 131
    :cond_7
    move v4, v14

    .line 132
    :goto_3
    sub-int v14, v4, v8

    .line 133
    .line 134
    mul-int/lit8 v7, v7, -0x1

    .line 135
    .line 136
    if-ge v14, v7, :cond_8

    .line 137
    .line 138
    :goto_4
    const/4 v4, 0x0

    .line 139
    const/4 v9, 0x0

    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v14, 0x0

    .line 142
    :cond_8
    if-eqz v12, :cond_9

    .line 143
    .line 144
    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    .line 145
    .line 146
    int-to-float v7, v7

    .line 147
    sub-float/2addr v7, v13

    .line 148
    goto :goto_5

    .line 149
    :cond_9
    move v7, v15

    .line 150
    :goto_5
    iput v7, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    .line 151
    .line 152
    iget v8, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    .line 153
    .line 154
    int-to-float v8, v8

    .line 155
    cmpl-float v8, v7, v8

    .line 156
    .line 157
    if-ltz v8, :cond_a

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_a
    move v1, v5

    .line 161
    :goto_6
    iput v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleStart:F

    .line 162
    .line 163
    iput v6, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleStart:F

    .line 164
    .line 165
    iget v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    .line 166
    .line 167
    cmpl-float v5, v7, v2

    .line 168
    .line 169
    const v6, 0x3dcccccd    # 0.1f

    .line 170
    .line 171
    .line 172
    const/16 v8, 0xcc

    .line 173
    .line 174
    const/16 v10, 0xff

    .line 175
    .line 176
    const/16 v12, 0x66

    .line 177
    .line 178
    if-ltz v5, :cond_f

    .line 179
    .line 180
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresoldAcheived:Z

    .line 181
    .line 182
    if-nez v5, :cond_f

    .line 183
    .line 184
    const/4 v2, 0x1

    .line 185
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresoldAcheived:Z

    .line 186
    .line 187
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLandScape:Z

    .line 188
    .line 189
    if-eqz v2, :cond_b

    .line 190
    .line 191
    const v6, 0x3d4ccccd    # 0.05f

    .line 192
    .line 193
    .line 194
    :cond_b
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleScaleAnimation(F)V

    .line 195
    .line 196
    .line 197
    const v2, 0x3f99999a    # 1.2f

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleIconScaleAnimation(F)V

    .line 201
    .line 202
    .line 203
    iput v10, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    .line 204
    .line 205
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 206
    .line 207
    if-eqz v2, :cond_e

    .line 208
    .line 209
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    .line 210
    .line 211
    if-eqz v2, :cond_c

    .line 212
    .line 213
    move v10, v12

    .line 214
    :cond_c
    iput v10, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    .line 215
    .line 216
    if-eqz v2, :cond_d

    .line 217
    .line 218
    move v8, v12

    .line 219
    :cond_d
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTransitIconNeeded:Z

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateRectangleIconDrawable(Z)V

    .line 222
    .line 223
    .line 224
    :cond_e
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleAlphaAnimation(I)V

    .line 225
    .line 226
    .line 227
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 228
    .line 229
    const/16 v5, 0x6c

    .line 230
    .line 231
    invoke-virtual {v2, v5}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_a

    .line 235
    :cond_f
    cmpg-float v2, v7, v2

    .line 236
    .line 237
    if-gez v2, :cond_14

    .line 238
    .line 239
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresoldAcheived:Z

    .line 240
    .line 241
    if-eqz v2, :cond_14

    .line 242
    .line 243
    const/4 v2, 0x0

    .line 244
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLaunchThresoldAcheived:Z

    .line 245
    .line 246
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLandScape:Z

    .line 247
    .line 248
    if-eqz v2, :cond_10

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_10
    const v6, 0x3e19999a    # 0.15f

    .line 252
    .line 253
    .line 254
    :goto_7
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleScaleAnimation(F)V

    .line 255
    .line 256
    .line 257
    const/high16 v2, 0x3f800000    # 1.0f

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleIconScaleAnimation(F)V

    .line 260
    .line 261
    .line 262
    iput v12, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    .line 263
    .line 264
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 265
    .line 266
    if-eqz v2, :cond_13

    .line 267
    .line 268
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    .line 269
    .line 270
    if-eqz v2, :cond_11

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :cond_11
    move v10, v12

    .line 274
    :goto_8
    iput v10, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconAlpha:I

    .line 275
    .line 276
    if-eqz v2, :cond_12

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_12
    move v8, v12

    .line 280
    :goto_9
    const/4 v2, 0x0

    .line 281
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateRectangleIconDrawable(Z)V

    .line 282
    .line 283
    .line 284
    move v12, v8

    .line 285
    :cond_13
    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->startRectangleAlphaAnimation(I)V

    .line 286
    .line 287
    .line 288
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 289
    .line 290
    const/16 v5, 0x6d

    .line 291
    .line 292
    invoke-virtual {v2, v5}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 293
    .line 294
    .line 295
    :cond_14
    :goto_a
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    .line 296
    .line 297
    float-to-int v5, v13

    .line 298
    float-to-int v3, v3

    .line 299
    float-to-int v6, v15

    .line 300
    float-to-int v1, v1

    .line 301
    invoke-virtual {v2, v5, v3, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 302
    .line 303
    .line 304
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    .line 305
    .line 306
    invoke-virtual {v0, v14, v9, v4, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 307
    .line 308
    .line 309
    return-void
.end method

.method public final setRectangleColor()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutForCamera:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 8
    .line 9
    const-string v1, "display_night_theme"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleColor:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    const/high16 v0, -0x1000000

    .line 32
    .line 33
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleColor:I

    .line 34
    .line 35
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    .line 36
    .line 37
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleColor:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleColor:I

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUScaleAnimator(Landroid/view/View;FF)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    float-to-int v0, v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mClockView:Landroid/view/View;

    .line 10
    .line 11
    const/high16 v2, 0x40000000    # 2.0f

    .line 12
    .line 13
    if-ne p1, v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    div-float/2addr v1, v2

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 22
    .line 23
    .line 24
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAffordancePivotY:I

    .line 25
    .line 26
    if-ge v0, p0, :cond_1

    .line 27
    .line 28
    int-to-float p0, p0

    .line 29
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    mul-int/lit8 p0, p0, -0x1

    .line 34
    .line 35
    int-to-float p0, p0

    .line 36
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationStackScrollerView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 41
    .line 42
    if-ne p1, v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    div-float/2addr v0, v2

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 51
    .line 52
    .line 53
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAffordancePivotY:I

    .line 54
    .line 55
    int-to-float p0, p0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    .line 61
    .line 62
    if-ne p1, v0, :cond_5

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/4 v0, 0x0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    int-to-float v1, v1

    .line 79
    div-float/2addr v1, v2

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 81
    .line 82
    .line 83
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAffordancePivotY:I

    .line 84
    .line 85
    sub-int/2addr p0, v0

    .line 86
    int-to-float p0, p0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startRectangleAlphaAnimation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    filled-new-array {v0, p1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    .line 21
    .line 22
    const-wide/16 v0, 0xc8

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$11;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final startRectangleIconScaleAnimation(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleStart:F

    .line 11
    .line 12
    aput v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    aput p1, v0, v1

    .line 16
    .line 17
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutForCamera:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-wide/16 v0, 0x12c

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-wide/16 v0, 0x1c2

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$10;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final startRectangleScaleAnimation(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleStart:F

    .line 11
    .line 12
    aput v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    aput p1, v0, v1

    .line 16
    .line 17
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutForCamera:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-wide/16 v0, 0x12c

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-wide/16 v0, 0x1c2

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$9;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final startRectangleShrinkAnimation()V
    .locals 4

    .line 1
    const-string v0, "KeyguardSecAffordanceView"

    .line 2
    .line 3
    const-string/jumbo v1, "startRectangleShrinkAnimation"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageScale(FZ)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [F

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleDistanceCovered:F

    .line 23
    .line 24
    aput v3, v0, v2

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    aput v2, v0, v1

    .line 28
    .line 29
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekShowing:Z

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const-wide/16 v2, 0xc8

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-wide/16 v2, 0x1c2

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    .line 47
    sget-object v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimatorEndListener:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final updateDisplayParameters()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const v2, 0x105025a

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0x7f07124b

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsLandScape:Z

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 30
    .line 31
    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    .line 32
    .line 33
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 34
    .line 35
    add-int/2addr v1, v2

    .line 36
    add-int/2addr v1, v3

    .line 37
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    .line 38
    .line 39
    const v1, 0x3e19999a    # 0.15f

    .line 40
    .line 41
    .line 42
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVerticalScale:F

    .line 43
    .line 44
    const v1, 0x7f0703fb

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    int-to-float v1, v1

    .line 52
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekDistance:F

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 56
    .line 57
    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    .line 58
    .line 59
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    .line 61
    add-int/2addr v1, v2

    .line 62
    add-int/2addr v1, v3

    .line 63
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    .line 64
    .line 65
    const v1, 0x3dcccccd    # 0.1f

    .line 66
    .line 67
    .line 68
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mVerticalScale:F

    .line 69
    .line 70
    const v1, 0x7f0703fc

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    int-to-float v1, v1

    .line 78
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekDistance:F

    .line 79
    .line 80
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    .line 105
    .line 106
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenHeight:I

    .line 107
    .line 108
    div-int/lit8 v1, v1, 0x2

    .line 109
    .line 110
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAffordancePivotY:I

    .line 111
    .line 112
    const v1, 0x7f0711b6

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    int-to-float v1, v1

    .line 120
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    .line 121
    .line 122
    const/high16 v2, 0x40000000    # 2.0f

    .line 123
    .line 124
    div-float/2addr v1, v2

    .line 125
    float-to-int v1, v1

    .line 126
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconMargin:I

    .line 127
    .line 128
    const v1, 0x7f0703f2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    int-to-float v0, v0

    .line 136
    const v1, 0x3f733333    # 0.95f

    .line 137
    .line 138
    .line 139
    mul-float/2addr v0, v1

    .line 140
    float-to-int v0, v0

    .line 141
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconSize:I

    .line 142
    .line 143
    return-void
.end method

.method public final updatePanelViews(F)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mInitialPeekDistance:F

    .line 2
    .line 3
    sub-float v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelDimView:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    .line 19
    .line 20
    div-float v3, v0, v3

    .line 21
    .line 22
    const v4, 0x3e99999a    # 0.3f

    .line 23
    .line 24
    .line 25
    mul-float/2addr v3, v4

    .line 26
    cmpl-float v5, v3, v4

    .line 27
    .line 28
    if-lez v5, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v4, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v4, v1

    .line 34
    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRadius:I

    .line 43
    .line 44
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    .line 45
    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    .line 49
    .line 50
    div-float v2, v0, v2

    .line 51
    .line 52
    const/high16 v4, 0x43480000    # 200.0f

    .line 53
    .line 54
    mul-float/2addr v2, v4

    .line 55
    float-to-int v2, v2

    .line 56
    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRadius:I

    .line 57
    .line 58
    const/16 v4, 0xc8

    .line 59
    .line 60
    if-le v2, v4, :cond_3

    .line 61
    .line 62
    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRadius:I

    .line 63
    .line 64
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    .line 65
    .line 66
    const v4, 0x3f733333    # 0.95f

    .line 67
    .line 68
    .line 69
    const v5, 0x3d4cccd0    # 0.050000012f

    .line 70
    .line 71
    .line 72
    const/high16 v6, 0x3f800000    # 1.0f

    .line 73
    .line 74
    if-eqz v2, :cond_c

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockWallpaperContainer:Landroid/view/View;

    .line 77
    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_4
    const/4 v7, 0x2

    .line 83
    new-array v7, v7, [I

    .line 84
    .line 85
    invoke-virtual {v2, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 86
    .line 87
    .line 88
    const/4 v8, 0x1

    .line 89
    aget v7, v7, v8

    .line 90
    .line 91
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mClockView:Landroid/view/View;

    .line 92
    .line 93
    const/high16 v10, 0x40000000    # 2.0f

    .line 94
    .line 95
    if-eq v2, v9, :cond_8

    .line 96
    .line 97
    iget-object v11, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMusicContainer:Landroid/view/View;

    .line 98
    .line 99
    if-ne v2, v11, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationStackScrollerView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 103
    .line 104
    if-ne v2, v7, :cond_6

    .line 105
    .line 106
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    int-to-float v7, v7

    .line 111
    div-float/2addr v7, v10

    .line 112
    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotX(F)V

    .line 113
    .line 114
    .line 115
    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAffordancePivotY:I

    .line 116
    .line 117
    int-to-float v7, v7

    .line 118
    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotY(F)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    .line 123
    .line 124
    if-ne v2, v7, :cond_a

    .line 125
    .line 126
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    int-to-float v7, v7

    .line 131
    div-float/2addr v7, v10

    .line 132
    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotX(F)V

    .line 133
    .line 134
    .line 135
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mClockView:Landroid/view/View;

    .line 136
    .line 137
    if-eqz v7, :cond_7

    .line 138
    .line 139
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    goto :goto_1

    .line 144
    :cond_7
    move v7, v3

    .line 145
    :goto_1
    iget v9, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAffordancePivotY:I

    .line 146
    .line 147
    sub-int/2addr v9, v7

    .line 148
    int-to-float v7, v9

    .line 149
    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotY(F)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_8
    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    int-to-float v9, v9

    .line 158
    div-float/2addr v9, v10

    .line 159
    invoke-virtual {v2, v9}, Landroid/view/View;->setPivotX(F)V

    .line 160
    .line 161
    .line 162
    iget v9, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAffordancePivotY:I

    .line 163
    .line 164
    if-ge v7, v9, :cond_9

    .line 165
    .line 166
    int-to-float v7, v9

    .line 167
    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotY(F)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_9
    mul-int/lit8 v9, v9, -0x1

    .line 172
    .line 173
    int-to-float v7, v9

    .line 174
    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotY(F)V

    .line 175
    .line 176
    .line 177
    :cond_a
    :goto_3
    new-array v7, v8, [F

    .line 178
    .line 179
    aput v6, v7, v3

    .line 180
    .line 181
    const-string/jumbo v9, "scaleX"

    .line 182
    .line 183
    .line 184
    invoke-static {v2, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    new-array v9, v8, [F

    .line 189
    .line 190
    aput v6, v9, v3

    .line 191
    .line 192
    const-string/jumbo v10, "scaleY"

    .line 193
    .line 194
    .line 195
    invoke-static {v2, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    new-array v8, v8, [F

    .line 200
    .line 201
    aput v6, v8, v3

    .line 202
    .line 203
    const-string v3, "alpha"

    .line 204
    .line 205
    invoke-static {v2, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 210
    .line 211
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 212
    .line 213
    .line 214
    filled-new-array {v7, v9, v2}, [Landroid/animation/Animator;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 219
    .line 220
    .line 221
    const-wide/16 v7, 0x190

    .line 222
    .line 223
    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 224
    .line 225
    .line 226
    sget-object v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 227
    .line 228
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 232
    .line 233
    .line 234
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAnimatorSet:Ljava/util/List;

    .line 235
    .line 236
    if-nez v2, :cond_b

    .line 237
    .line 238
    new-instance v2, Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAnimatorSet:Ljava/util/List;

    .line 244
    .line 245
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mAnimatorSet:Ljava/util/List;

    .line 246
    .line 247
    check-cast v2, Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mLockWallpaperContainer:Landroid/view/View;

    .line 254
    .line 255
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    .line 256
    .line 257
    div-float v3, v0, v3

    .line 258
    .line 259
    mul-float/2addr v3, v5

    .line 260
    sub-float v3, v6, v3

    .line 261
    .line 262
    cmpg-float v7, v3, v4

    .line 263
    .line 264
    if-gez v7, :cond_d

    .line 265
    .line 266
    move v3, v4

    .line 267
    :cond_d
    cmpl-float v7, v0, v1

    .line 268
    .line 269
    if-nez v7, :cond_e

    .line 270
    .line 271
    move v3, v6

    .line 272
    :cond_e
    invoke-virtual {p0, v2, v3, v6}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setUScaleAnimator(Landroid/view/View;FF)V

    .line 273
    .line 274
    .line 275
    :goto_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    .line 276
    .line 277
    if-eqz v2, :cond_f

    .line 278
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 280
    .line 281
    invoke-virtual {p0, v0, v6, v6}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setUScaleAnimator(Landroid/view/View;FF)V

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_f
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    .line 286
    .line 287
    div-float v3, v0, v2

    .line 288
    .line 289
    sub-float v3, v6, v3

    .line 290
    .line 291
    cmpg-float v7, v3, v1

    .line 292
    .line 293
    if-gez v7, :cond_10

    .line 294
    .line 295
    move v3, v1

    .line 296
    :cond_10
    div-float v2, v0, v2

    .line 297
    .line 298
    mul-float/2addr v2, v5

    .line 299
    sub-float v2, v6, v2

    .line 300
    .line 301
    cmpg-float v5, v2, v4

    .line 302
    .line 303
    if-gez v5, :cond_11

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_11
    move v4, v2

    .line 307
    :goto_5
    cmpl-float v0, v0, v1

    .line 308
    .line 309
    if-nez v0, :cond_12

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_12
    move v6, v4

    .line 313
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mNotificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 314
    .line 315
    invoke-virtual {p0, v0, v6, v3}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setUScaleAnimator(Landroid/view/View;FF)V

    .line 316
    .line 317
    .line 318
    :goto_7
    const/high16 v0, -0x40800000    # -1.0f

    .line 319
    .line 320
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateRectangleCornerRadius(F)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setRectangleBounds(F)V

    .line 324
    .line 325
    .line 326
    return-void
.end method

.method public final updateRectangleCornerRadius(F)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDown:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    .line 7
    cmpl-float v0, p1, v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x64

    .line 12
    .line 13
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleCornerRadius:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchDistance:F

    .line 17
    .line 18
    sub-float/2addr p1, v0

    .line 19
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenWidth:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    sub-float/2addr v1, v0

    .line 23
    div-float/2addr p1, v1

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    sub-float/2addr v0, p1

    .line 27
    float-to-double v0, v0

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    const-wide v2, 0x4055400000000000L    # 85.0

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    mul-double/2addr v0, v2

    .line 38
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 39
    .line 40
    add-double/2addr v0, v2

    .line 41
    double-to-int p1, v0

    .line 42
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleCornerRadius:I

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleCornerRadius:I

    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateRectangleIconDrawable(Z)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "KeyguardShortcutManager"

    .line 10
    .line 11
    if-ltz v0, :cond_2

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-lt v0, v4, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    aget-object p1, v1, v0

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mPanelTransitDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    aget-object p1, v1, v0

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mPanelDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    const-string p1, "IllegalArgument : "

    .line 38
    .line 39
    invoke-static {p1, v0, v3}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object p1, v2

    .line 43
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v1, Landroid/content/Intent;

    .line 51
    .line 52
    const-string v4, "android.intent.action.MAIN"

    .line 53
    .line 54
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v4, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 58
    .line 59
    aget-object v4, v4, v0

    .line 60
    .line 61
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/16 v5, 0x81

    .line 74
    .line 75
    iget-object v6, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 76
    .line 77
    invoke-virtual {v6, v1, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v7, 0x1

    .line 85
    if-eqz v4, :cond_6

    .line 86
    .line 87
    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v8, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 90
    .line 91
    iget-object v8, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 92
    .line 93
    const-string v9, "current_sec_appicon_theme_package"

    .line 94
    .line 95
    invoke-virtual {v8, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    if-nez v8, :cond_3

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    :cond_3
    if-nez v2, :cond_4

    .line 110
    .line 111
    invoke-virtual {v4, v6, v7, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :cond_4
    if-nez v2, :cond_5

    .line 116
    .line 117
    invoke-virtual {v4, v6}, Landroid/content/pm/ActivityInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    :cond_5
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 122
    .line 123
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isblendNeeded(Landroid/content/pm/ActivityInfo;Landroid/graphics/drawable/Drawable;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string/jumbo v2, "updateShortcut : "

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, " activityInfo is null, resolveInfo is : "

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ",  return FALSE"

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move p1, v5

    .line 160
    :goto_2
    if-eqz p1, :cond_9

    .line 161
    .line 162
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    .line 164
    if-eqz p1, :cond_9

    .line 165
    .line 166
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 173
    .line 174
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 175
    .line 176
    iget-object v1, v8, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 177
    .line 178
    aget-object v0, v1, v0

    .line 179
    .line 180
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 184
    .line 185
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_8

    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 192
    .line 193
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 194
    .line 195
    const-string v1, "display_night_theme"

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-ne v0, v7, :cond_7

    .line 206
    .line 207
    move v0, v7

    .line 208
    goto :goto_3

    .line 209
    :cond_7
    move v0, v5

    .line 210
    :goto_3
    if-nez v0, :cond_8

    .line 211
    .line 212
    move v10, v7

    .line 213
    goto :goto_4

    .line 214
    :cond_8
    move v10, v5

    .line 215
    :goto_4
    const/4 v11, 0x0

    .line 216
    const/4 v12, 0x0

    .line 217
    const/4 v13, 0x1

    .line 218
    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->grayInvertDrawable(Landroid/graphics/Bitmap;ZLjava/lang/String;ZZ)Landroid/graphics/Bitmap;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 223
    .line 224
    .line 225
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 226
    .line 227
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    .line 228
    .line 229
    if-eqz p1, :cond_a

    .line 230
    .line 231
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    .line 233
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    .line 235
    .line 236
    :cond_a
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/widget/SystemUIImageView;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
