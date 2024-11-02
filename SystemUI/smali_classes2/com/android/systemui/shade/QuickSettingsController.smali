.class public final Lcom/android/systemui/shade/QuickSettingsController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public mAmount:F

.field public mAnimateNextNotificationBounds:Z

.field public mAnimating:Z

.field public mAnimatingHiddenFromCollapsed:Z

.field public mAnimatorExpand:Z

.field public mApplyClippingImmediatelyListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

.field public mBarState:I

.field public mCachedGestureInsets:Landroid/graphics/Insets;

.field public final mCastController:Lcom/android/systemui/statusbar/policy/CastController;

.field public final mClippingAnimationEndBounds:Landroid/graphics/Rect;

.field public mClippingAnimator:Landroid/animation/ValueAnimator;

.field public mCollapsedOnDown:Z

.field public mConflictingExpansionGesture:Z

.field public final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public mDisplayLeftInset:I

.field public mDisplayRightInset:I

.field public mDistanceForFullShadeTransition:I

.field public mDozing:Z

.field public mEnableClipping:Z

.field public mExpandImmediate:Z

.field public mExpanded:Z

.field public mExpandedWhenExpandingStarted:Z

.field public mExpansionAnimator:Landroid/animation/ValueAnimator;

.field public mExpansionEnabledAmbient:Z

.field public mExpansionEnabledPolicy:Z

.field public mExpansionFromOverscroll:Z

.field public mExpansionHeight:F

.field public mExpansionHeightListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

.field public mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mFalsingThreshold:I

.field public mFlingQsWithoutClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

.field public mFullyExpanded:Z

.field public mInitialHeightOnTouch:F

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mInterceptRegion:Landroid/graphics/Region;

.field public mIsFullWidth:Z

.field public mIsPulseExpansionResettingAnimator:Z

.field public mIsRubberBanded:Z

.field public mIsTranslationResettingAnimator:Z

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLastClipBounds:Landroid/graphics/Rect;

.field public mLastOverscroll:F

.field public mLastShadeFlingWasExpanding:Z

.field public final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field public mLockscreenNotificationPadding:I

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mLogBuilder:Ljava/lang/StringBuilder;

.field public final mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

.field public mMaxExpansionHeight:I

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMinExpansionHeight:I

.field public mNotificationBoundsAnimationDelay:J

.field public mNotificationBoundsAnimationDuration:J

.field public final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

.field public final mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

.field public final mPanelViewControllerLazy:Ldagger/Lazy;

.field public mPeekHeight:I

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field public mQs:Lcom/android/systemui/plugins/qs/QS;

.field public final mQsCollapseExpandAction:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

.field public final mQsFrame:Landroid/widget/FrameLayout;

.field public final mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateController;

.field public final mQsHeightListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

.field public final mQsScrollListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

.field public mQsStateUpdateListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

.field public mQsVelocityTracker:Landroid/view/VelocityTracker;

.field public mQuickQsHeaderHeight:F

.field public mQuickQsOffsetHeight:I

.field public final mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final mResources:Landroid/content/res/Resources;

.field public mScreenCornerRadius:I

.field public final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public mScrimCornerRadius:I

.field public mScrimEnabled:Z

.field public final mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

.field public mShadeExpandedFraction:F

.field public mShadeExpandedHeight:F

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

.field public final mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public final mShadeTransitionController:Lcom/android/systemui/shade/transition/ShadeTransitionController;

.field public mShelfHeight:I

.field public mSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field public mSlopMultiplier:F

.field public mSplitShadeEnabled:Z

.field public mSplitShadeNotificationsScrimMarginBottom:I

.field public mStackScrollerOverscrolling:Z

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public mStatusBarMinHeight:I

.field public final mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field public mTouchAboveFalsingThreshold:Z

.field public mTouchSlop:I

.field public mTracking:Z

.field public mTrackingPointer:I

.field public mTranslationForFullShadeTransition:F

.field public mTwoFingerExpandPossible:Z

.field public mUseLargeScreenShadeHeader:Z

.field public mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ldagger/Lazy;Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/systemui/statusbar/QsFrameTranslateController;Lcom/android/systemui/shade/transition/ShadeTransitionController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;Lcom/android/systemui/blur/SecQpBlurController;Lcom/android/systemui/log/SecPanelLogger;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/privacy/PrivacyDialogController;)V
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            "Lcom/android/systemui/statusbar/QsFrameTranslateController;",
            "Lcom/android/systemui/shade/transition/ShadeTransitionController;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Lcom/android/systemui/media/controls/pipeline/MediaDataManager;",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/systemui/shade/ShadeLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;",
            "Lcom/android/systemui/shade/data/repository/ShadeRepository;",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            "Lcom/android/systemui/media/SecMediaHost;",
            "Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;",
            "Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;",
            "Lcom/android/systemui/blur/SecQpBlurController;",
            "Lcom/android/systemui/log/SecPanelLogger;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v3, p3

    move-object/from16 v1, p6

    move-object/from16 v2, p12

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v14, 0x1

    .line 2
    iput-boolean v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimEnabled:Z

    .line 3
    iput-boolean v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mUseLargeScreenShadeHeader:Z

    const/4 v13, 0x0

    .line 4
    iput v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayRightInset:I

    .line 5
    iput v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    const/4 v4, 0x0

    .line 6
    iput v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedHeight:F

    .line 7
    iput-boolean v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledPolicy:Z

    .line 8
    iput-boolean v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledAmbient:Z

    .line 9
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInterceptRegion:Landroid/graphics/Region;

    .line 10
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    .line 11
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLastClipBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    .line 12
    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 13
    new-instance v4, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsHeightListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    .line 14
    new-instance v4, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0, v13}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsCollapseExpandAction:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

    .line 15
    new-instance v4, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsScrollListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLogBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    .line 17
    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 18
    iput-object v15, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 19
    iput-object v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    const v4, 0x7f0a0866

    .line 20
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrame:Landroid/widget/FrameLayout;

    const v4, 0x7f0a0524

    .line 21
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 22
    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mResources:Landroid/content/res/Resources;

    .line 23
    invoke-static {v4}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    move-object/from16 v4, p4

    .line 24
    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateController;

    move-object/from16 v4, p5

    .line 25
    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeTransitionController:Lcom/android/systemui/shade/transition/ShadeTransitionController;

    .line 26
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 27
    new-instance v4, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

    const/4 v12, 0x4

    invoke-direct {v4, v0, v12}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    .line 28
    iput-object v4, v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->pulseExpandAbortListener:Ljava/lang/Runnable;

    move-object/from16 v1, p7

    .line 29
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v1, p8

    .line 30
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    move-object/from16 v1, p9

    .line 31
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v1, p10

    .line 32
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object/from16 v11, p11

    .line 33
    iput-object v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 34
    iput-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object/from16 v1, p13

    .line 35
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v10, p14

    .line 36
    iput-object v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    move-object/from16 v1, p15

    .line 37
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    move-object/from16 v1, p17

    .line 38
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v1, p18

    .line 39
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v1, p19

    .line 40
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v9, p21

    .line 41
    iput-object v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-object/from16 v1, p22

    .line 42
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    move-object/from16 v1, p23

    .line 43
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v1, p24

    .line 44
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v1, p25

    .line 45
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v1, p26

    .line 46
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-object/from16 v1, p27

    .line 47
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v1, p30

    .line 48
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    move-object/from16 v1, p34

    .line 49
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    move-object/from16 v1, p29

    .line 50
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v1, p33

    .line 51
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    .line 52
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$LockscreenShadeTransitionCallback;

    invoke-direct {v1, v0, v13}, Lcom/android/systemui/shade/QuickSettingsController$LockscreenShadeTransitionCallback;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    .line 53
    iget-object v2, v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    .line 54
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v1, p31

    .line 56
    invoke-virtual {v1, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    move-object/from16 v2, p39

    .line 57
    iput-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 58
    new-instance v8, Lcom/android/systemui/shade/SecQuickSettingsController;

    move-object v1, v8

    new-instance v5, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

    move-object v4, v5

    const/4 v7, 0x5

    invoke-direct {v5, v0, v7}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda10;

    move-object v5, v6

    invoke-direct {v6, v0, v13}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v6, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda10;

    move-object/from16 p1, v6

    move-object/from16 v7, p1

    invoke-direct {v7, v0, v14}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v7, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;

    move-object/from16 p1, v7

    move-object/from16 v12, p1

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v44, v8

    move-object v8, v12

    new-instance v12, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;

    move-object v9, v12

    const/4 v14, 0x7

    invoke-direct {v12, v0, v14}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v12, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;

    move-object v10, v12

    const/16 v14, 0x8

    invoke-direct {v12, v0, v14}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v12, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;

    move-object v11, v12

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v14, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;

    const/4 v2, 0x4

    move-object v12, v14

    const/4 v2, 0x1

    invoke-direct {v14, v0, v2}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v14, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;

    move v3, v13

    move-object v13, v14

    invoke-direct {v14, v0, v2}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v14, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;

    move-object v2, v14

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda4;

    move-object/from16 v16, v2

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;

    move-object/from16 v17, v2

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda4;

    move-object/from16 v18, v2

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;

    move-object/from16 v19, v2

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

    move-object/from16 v20, v2

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;

    move-object/from16 v21, v2

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda6;

    move-object/from16 v22, v2

    invoke-direct {v2, v0, v15}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/QuickSettingsController;Ldagger/Lazy;)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;

    move-object/from16 v23, v2

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;

    move-object/from16 v25, v2

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    .line 60
    invoke-static/range {p43 .. p43}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda7;

    move-object/from16 v32, v2

    move-object/from16 v3, p43

    move-object/from16 p4, v1

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;

    move-object/from16 v33, v2

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda8;

    move-object/from16 v34, v2

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda8;

    move-object/from16 v36, v1

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda12;

    move-object/from16 v37, v1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda12;

    move-object/from16 v38, v1

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda7;

    move-object/from16 v39, v1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda9;

    move-object/from16 v40, v1

    invoke-direct {v1, v0}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

    move-object/from16 v41, v1

    invoke-direct {v1, v0, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

    move-object/from16 v42, v1

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda8;

    move-object/from16 v43, v1

    invoke-direct {v1, v15, v3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v2, p21

    move-object/from16 v3, p38

    move-object/from16 v15, p14

    move-object/from16 v24, p35

    move-object/from16 v26, p41

    move-object/from16 v27, p42

    move-object/from16 v28, p11

    move-object/from16 v29, p37

    move-object/from16 v30, p39

    move-object/from16 v31, p2

    move-object/from16 v35, p36

    move-object/from16 v1, p4

    invoke-direct/range {v1 .. v43}, Lcom/android/systemui/shade/SecQuickSettingsController;-><init>(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/blur/SecQpBlurController;Ljava/lang/Runnable;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/DoubleSupplier;Landroid/content/Context;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/shade/ShadeHeaderController;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/media/SecMediaHost;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;Lcom/android/systemui/log/SecPanelLogger;Ldagger/Lazy;Ljava/util/function/IntConsumer;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Supplier;)V

    move-object/from16 v1, v44

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getQuickQsOffsetHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQuickQsOffsetHeight:I

    move-object/from16 v1, p40

    .line 62
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    return-void
.end method


# virtual methods
.method public final applyClippingImmediately(ZIIII)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    iget v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimCornerRadius:I

    .line 14
    .line 15
    iget-object v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLastClipBounds:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    .line 19
    .line 20
    iget-boolean v8, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 21
    .line 22
    iget-object v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    if-eqz v8, :cond_5

    .line 26
    .line 27
    iget-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 28
    .line 29
    if-eqz v6, :cond_1

    .line 30
    .line 31
    iget-object v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 32
    .line 33
    monitor-enter v6

    .line 34
    :try_start_0
    iget-boolean v8, v6, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit v6

    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    iget-object v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 40
    .line 41
    check-cast v6, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 42
    .line 43
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->getCastDevices()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    new-instance v8, Lcom/android/systemui/statusbar/policy/CastControllerImpl$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v8}, Lcom/android/systemui/statusbar/policy/CastControllerImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScreenCornerRadius:I

    .line 64
    .line 65
    int-to-float v6, v6

    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    move-object v1, v0

    .line 69
    monitor-exit v6

    .line 70
    throw v1

    .line 71
    :cond_1
    :goto_0
    move v6, v11

    .line 72
    :goto_1
    iget v8, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimCornerRadius:I

    .line 73
    .line 74
    int-to-float v8, v8

    .line 75
    int-to-float v12, v3

    .line 76
    div-float/2addr v12, v8

    .line 77
    const/high16 v13, 0x3f800000    # 1.0f

    .line 78
    .line 79
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    invoke-static {v6, v8, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    float-to-int v8, v8

    .line 88
    iget-boolean v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 89
    .line 90
    if-eqz v12, :cond_2

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/systemui/shade/QuickSettingsController;->calculateBottomCornerRadius(F)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    int-to-float v6, v6

    .line 98
    :goto_2
    iget-object v12, v9, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 99
    .line 100
    if-nez v12, :cond_3

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    iget-object v12, v12, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    instance-of v13, v12, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 106
    .line 107
    if-eqz v13, :cond_4

    .line 108
    .line 109
    check-cast v12, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 110
    .line 111
    iget v13, v12, Lcom/android/systemui/scrim/ScrimDrawable;->mBottomEdgeRadius:F

    .line 112
    .line 113
    cmpl-float v13, v13, v6

    .line 114
    .line 115
    if-eqz v13, :cond_4

    .line 116
    .line 117
    iput v6, v12, Lcom/android/systemui/scrim/ScrimDrawable;->mBottomEdgeRadius:F

    .line 118
    .line 119
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_3
    move v6, v8

    .line 123
    move v8, v1

    .line 124
    goto :goto_4

    .line 125
    :cond_5
    const/4 v8, 0x0

    .line 126
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    iget-object v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 131
    .line 132
    iget-object v15, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 133
    .line 134
    const/16 v22, 0x1

    .line 135
    .line 136
    if-eqz v12, :cond_d

    .line 137
    .line 138
    iget-object v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 139
    .line 140
    iget-boolean v12, v12, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 141
    .line 142
    if-nez v12, :cond_6

    .line 143
    .line 144
    iget-object v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 145
    .line 146
    if-eqz v14, :cond_9

    .line 147
    .line 148
    iget-boolean v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsTranslationResettingAnimator:Z

    .line 149
    .line 150
    if-nez v14, :cond_6

    .line 151
    .line 152
    iget-boolean v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsPulseExpansionResettingAnimator:Z

    .line 153
    .line 154
    if-eqz v14, :cond_9

    .line 155
    .line 156
    :cond_6
    if-nez v12, :cond_8

    .line 157
    .line 158
    iget-boolean v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsPulseExpansionResettingAnimator:Z

    .line 159
    .line 160
    if-eqz v12, :cond_7

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_7
    iget-boolean v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 164
    .line 165
    if-nez v12, :cond_9

    .line 166
    .line 167
    iget-object v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 168
    .line 169
    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    sub-int v11, v3, v11

    .line 178
    .line 179
    int-to-float v11, v11

    .line 180
    const v12, 0x3e333333    # 0.175f

    .line 181
    .line 182
    .line 183
    mul-float/2addr v11, v12

    .line 184
    goto :goto_6

    .line 185
    :cond_8
    :goto_5
    iget-object v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 186
    .line 187
    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    sub-int v12, v3, v12

    .line 196
    .line 197
    int-to-float v12, v12

    .line 198
    const/high16 v14, 0x40000000    # 2.0f

    .line 199
    .line 200
    div-float/2addr v12, v14

    .line 201
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    :cond_9
    :goto_6
    iput v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTranslationForFullShadeTransition:F

    .line 206
    .line 207
    invoke-interface {v15}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    check-cast v11, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 212
    .line 213
    iget v11, v11, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 214
    .line 215
    iget v11, v13, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    .line 216
    .line 217
    iget-object v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateController;

    .line 218
    .line 219
    iget-object v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 220
    .line 221
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/QsFrameTranslateController;->translateQsFrame()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    iget-boolean v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mEnableClipping:Z

    .line 229
    .line 230
    if-eqz v14, :cond_a

    .line 231
    .line 232
    int-to-float v14, v3

    .line 233
    sub-float/2addr v14, v11

    .line 234
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getTop()I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    int-to-float v10, v10

    .line 239
    sub-float/2addr v14, v10

    .line 240
    float-to-int v10, v14

    .line 241
    move/from16 v16, v10

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_a
    const/16 v16, 0x0

    .line 245
    .line 246
    :goto_7
    iget-boolean v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mEnableClipping:Z

    .line 247
    .line 248
    if-eqz v10, :cond_b

    .line 249
    .line 250
    int-to-float v10, v5

    .line 251
    sub-float/2addr v10, v11

    .line 252
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getTop()I

    .line 253
    .line 254
    .line 255
    move-result v11

    .line 256
    int-to-float v11, v11

    .line 257
    sub-float/2addr v10, v11

    .line 258
    float-to-int v10, v10

    .line 259
    move/from16 v18, v10

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_b
    const/16 v18, 0x0

    .line 263
    .line 264
    :goto_8
    iput-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mVisible:Z

    .line 265
    .line 266
    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 267
    .line 268
    invoke-interface {v10, v1}, Lcom/android/systemui/plugins/qs/QS;->setQsVisible(Z)V

    .line 269
    .line 270
    .line 271
    iget-object v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 272
    .line 273
    iget v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    .line 274
    .line 275
    iget v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayRightInset:I

    .line 276
    .line 277
    if-eqz v1, :cond_c

    .line 278
    .line 279
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 280
    .line 281
    if-nez v1, :cond_c

    .line 282
    .line 283
    move/from16 v20, v22

    .line 284
    .line 285
    goto :goto_9

    .line 286
    :cond_c
    const/16 v20, 0x0

    .line 287
    .line 288
    :goto_9
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 289
    .line 290
    move-object v12, v15

    .line 291
    move v15, v10

    .line 292
    move/from16 v17, v11

    .line 293
    .line 294
    move/from16 v19, v6

    .line 295
    .line 296
    move/from16 v21, v1

    .line 297
    .line 298
    invoke-interface/range {v14 .. v21}, Lcom/android/systemui/plugins/qs/QS;->setFancyClipping(IIIIIZZ)V

    .line 299
    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_d
    move-object v12, v15

    .line 303
    :goto_a
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 304
    .line 305
    if-eqz v1, :cond_e

    .line 306
    .line 307
    move v1, v5

    .line 308
    goto :goto_b

    .line 309
    :cond_e
    add-int v1, v5, v6

    .line 310
    .line 311
    :goto_b
    int-to-float v10, v2

    .line 312
    int-to-float v11, v3

    .line 313
    int-to-float v14, v4

    .line 314
    int-to-float v1, v1

    .line 315
    iget-object v15, v9, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 316
    .line 317
    move-object/from16 v16, v7

    .line 318
    .line 319
    iget-object v7, v15, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    .line 320
    .line 321
    if-nez v7, :cond_f

    .line 322
    .line 323
    new-instance v7, Landroid/graphics/Rect;

    .line 324
    .line 325
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 326
    .line 327
    .line 328
    iput-object v7, v15, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    .line 329
    .line 330
    :cond_f
    iget-object v7, v15, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    .line 331
    .line 332
    float-to-int v10, v10

    .line 333
    float-to-int v11, v11

    .line 334
    float-to-int v14, v14

    .line 335
    float-to-int v1, v1

    .line 336
    invoke-virtual {v7, v10, v11, v14, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 337
    .line 338
    .line 339
    iget-object v1, v15, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    .line 341
    iget-object v7, v15, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    .line 342
    .line 343
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 344
    .line 345
    .line 346
    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mApplyClippingImmediatelyListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    .line 347
    .line 348
    if-eqz v1, :cond_14

    .line 349
    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    iget-boolean v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mVisible:Z

    .line 355
    .line 356
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 357
    .line 358
    if-eqz v7, :cond_10

    .line 359
    .line 360
    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 361
    .line 362
    iget-object v7, v7, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 363
    .line 364
    check-cast v7, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 365
    .line 366
    iget-object v7, v7, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isQuickSettingsVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 367
    .line 368
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 369
    .line 370
    .line 371
    move-result-object v10

    .line 372
    invoke-virtual {v7, v10}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    :cond_10
    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 376
    .line 377
    const/4 v10, 0x0

    .line 378
    if-eqz v8, :cond_11

    .line 379
    .line 380
    move-object/from16 v8, v16

    .line 381
    .line 382
    goto :goto_c

    .line 383
    :cond_11
    move-object v8, v10

    .line 384
    :goto_c
    if-eqz v8, :cond_12

    .line 385
    .line 386
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    iget v10, v8, Landroid/graphics/Rect;->left:I

    .line 390
    .line 391
    iget v11, v8, Landroid/graphics/Rect;->top:I

    .line 392
    .line 393
    int-to-float v11, v11

    .line 394
    iget-object v14, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 395
    .line 396
    check-cast v14, Lcom/android/keyguard/KeyguardStatusView;

    .line 397
    .line 398
    invoke-virtual {v14}, Landroid/widget/GridLayout;->getY()F

    .line 399
    .line 400
    .line 401
    move-result v14

    .line 402
    sub-float/2addr v11, v14

    .line 403
    float-to-int v11, v11

    .line 404
    iget v14, v8, Landroid/graphics/Rect;->right:I

    .line 405
    .line 406
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 407
    .line 408
    int-to-float v8, v8

    .line 409
    iget-object v15, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 410
    .line 411
    check-cast v15, Lcom/android/keyguard/KeyguardStatusView;

    .line 412
    .line 413
    invoke-virtual {v15}, Landroid/widget/GridLayout;->getY()F

    .line 414
    .line 415
    .line 416
    move-result v15

    .line 417
    sub-float/2addr v8, v15

    .line 418
    float-to-int v8, v8

    .line 419
    iget-object v15, v7, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    .line 420
    .line 421
    invoke-virtual {v15, v10, v11, v14, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 422
    .line 423
    .line 424
    iget-object v7, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 425
    .line 426
    check-cast v7, Lcom/android/keyguard/KeyguardStatusView;

    .line 427
    .line 428
    invoke-virtual {v7, v15}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 429
    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_12
    iget-object v7, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 433
    .line 434
    check-cast v7, Lcom/android/keyguard/KeyguardStatusView;

    .line 435
    .line 436
    invoke-virtual {v7, v10}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 437
    .line 438
    .line 439
    :goto_d
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 440
    .line 441
    if-eqz v7, :cond_13

    .line 442
    .line 443
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 444
    .line 445
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 446
    .line 447
    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 448
    .line 449
    iget v7, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    .line 450
    .line 451
    if-eqz v7, :cond_14

    .line 452
    .line 453
    const/4 v7, 0x0

    .line 454
    iput v7, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    .line 455
    .line 456
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    .line 457
    .line 458
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    .line 459
    .line 460
    .line 461
    move-result v10

    .line 462
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    .line 463
    .line 464
    .line 465
    move-result v11

    .line 466
    invoke-virtual {v8, v7, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 467
    .line 468
    .line 469
    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    .line 470
    .line 471
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 472
    .line 473
    .line 474
    goto :goto_e

    .line 475
    :cond_13
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 476
    .line 477
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 478
    .line 479
    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 480
    .line 481
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    .line 482
    .line 483
    .line 484
    move-result v7

    .line 485
    sub-int v7, v3, v7

    .line 486
    .line 487
    iget v8, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    .line 488
    .line 489
    if-eq v7, v8, :cond_14

    .line 490
    .line 491
    iput v7, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    .line 492
    .line 493
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    .line 494
    .line 495
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    .line 496
    .line 497
    .line 498
    move-result v10

    .line 499
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    .line 500
    .line 501
    .line 502
    move-result v11

    .line 503
    const/4 v14, 0x0

    .line 504
    invoke-virtual {v8, v14, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 505
    .line 506
    .line 507
    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    .line 508
    .line 509
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 510
    .line 511
    .line 512
    :cond_14
    :goto_e
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 513
    .line 514
    if-eqz v1, :cond_16

    .line 515
    .line 516
    iget-object v7, v9, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 517
    .line 518
    if-nez v7, :cond_15

    .line 519
    .line 520
    goto :goto_f

    .line 521
    :cond_15
    invoke-virtual {v1, v6}, Lcom/android/systemui/scrim/ScrimView;->setCornerRadius(I)V

    .line 522
    .line 523
    .line 524
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 525
    .line 526
    invoke-virtual {v1, v6}, Lcom/android/systemui/scrim/ScrimView;->setCornerRadius(I)V

    .line 527
    .line 528
    .line 529
    :cond_16
    :goto_f
    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 530
    .line 531
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 532
    .line 533
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    .line 534
    .line 535
    .line 536
    move-result v7

    .line 537
    sub-int/2addr v2, v7

    .line 538
    iget-boolean v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 539
    .line 540
    if-eqz v7, :cond_17

    .line 541
    .line 542
    goto :goto_10

    .line 543
    :cond_17
    iget v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    .line 544
    .line 545
    sub-int/2addr v2, v7

    .line 546
    :goto_10
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 547
    .line 548
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    .line 549
    .line 550
    .line 551
    move-result v7

    .line 552
    sub-int/2addr v4, v7

    .line 553
    iget-boolean v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 554
    .line 555
    if-eqz v7, :cond_18

    .line 556
    .line 557
    goto :goto_11

    .line 558
    :cond_18
    iget v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    .line 559
    .line 560
    sub-int/2addr v4, v7

    .line 561
    :goto_11
    iget-boolean v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 562
    .line 563
    if-eqz v7, :cond_19

    .line 564
    .line 565
    invoke-interface {v12}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v7

    .line 569
    check-cast v7, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 570
    .line 571
    iget-boolean v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 572
    .line 573
    if-eqz v7, :cond_19

    .line 574
    .line 575
    iget v3, v13, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    .line 576
    .line 577
    neg-int v3, v3

    .line 578
    goto :goto_12

    .line 579
    :cond_19
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 580
    .line 581
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    .line 582
    .line 583
    .line 584
    move-result v7

    .line 585
    sub-int/2addr v3, v7

    .line 586
    :goto_12
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 587
    .line 588
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    .line 589
    .line 590
    .line 591
    move-result v7

    .line 592
    sub-int/2addr v5, v7

    .line 593
    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 594
    .line 595
    if-eqz v0, :cond_1a

    .line 596
    .line 597
    goto :goto_13

    .line 598
    :cond_1a
    const/4 v6, 0x0

    .line 599
    :goto_13
    if-eqz v0, :cond_1b

    .line 600
    .line 601
    invoke-interface {v12}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 606
    .line 607
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 608
    .line 609
    :cond_1b
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 610
    .line 611
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingLeft:I

    .line 612
    .line 613
    const/4 v7, 0x5

    .line 614
    if-ne v1, v2, :cond_1c

    .line 615
    .line 616
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingRight:I

    .line 617
    .line 618
    if-ne v1, v4, :cond_1c

    .line 619
    .line 620
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingBottom:I

    .line 621
    .line 622
    if-ne v1, v5, :cond_1c

    .line 623
    .line 624
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingTop:I

    .line 625
    .line 626
    if-ne v1, v3, :cond_1c

    .line 627
    .line 628
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgCornerRadii:[F

    .line 629
    .line 630
    const/4 v8, 0x0

    .line 631
    aget v9, v1, v8

    .line 632
    .line 633
    int-to-float v10, v8

    .line 634
    cmpl-float v8, v9, v10

    .line 635
    .line 636
    if-nez v8, :cond_1c

    .line 637
    .line 638
    aget v1, v1, v7

    .line 639
    .line 640
    int-to-float v8, v6

    .line 641
    cmpl-float v1, v1, v8

    .line 642
    .line 643
    if-nez v1, :cond_1c

    .line 644
    .line 645
    goto :goto_14

    .line 646
    :cond_1c
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingLeft:I

    .line 647
    .line 648
    iput v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingTop:I

    .line 649
    .line 650
    iput v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingBottom:I

    .line 651
    .line 652
    iput v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingRight:I

    .line 653
    .line 654
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgCornerRadii:[F

    .line 655
    .line 656
    const/4 v8, 0x0

    .line 657
    int-to-float v9, v8

    .line 658
    aput v9, v1, v8

    .line 659
    .line 660
    aput v9, v1, v22

    .line 661
    .line 662
    const/4 v8, 0x2

    .line 663
    aput v9, v1, v8

    .line 664
    .line 665
    const/4 v8, 0x3

    .line 666
    aput v9, v1, v8

    .line 667
    .line 668
    int-to-float v6, v6

    .line 669
    const/4 v8, 0x4

    .line 670
    aput v6, v1, v8

    .line 671
    .line 672
    aput v6, v1, v7

    .line 673
    .line 674
    const/4 v7, 0x6

    .line 675
    aput v6, v1, v7

    .line 676
    .line 677
    const/4 v7, 0x7

    .line 678
    aput v6, v1, v7

    .line 679
    .line 680
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedClipPath:Landroid/graphics/Path;

    .line 681
    .line 682
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 683
    .line 684
    .line 685
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedClipPath:Landroid/graphics/Path;

    .line 686
    .line 687
    int-to-float v7, v2

    .line 688
    int-to-float v8, v3

    .line 689
    int-to-float v9, v4

    .line 690
    int-to-float v10, v5

    .line 691
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgCornerRadii:[F

    .line 692
    .line 693
    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 694
    .line 695
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 696
    .line 697
    .line 698
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldUseRoundedRectClipping:Z

    .line 699
    .line 700
    if-eqz v1, :cond_1d

    .line 701
    .line 702
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 703
    .line 704
    .line 705
    :cond_1d
    :goto_14
    return-void
.end method

.method public final beginJankMonitoring(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

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
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 8
    .line 9
    invoke-static {v1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-string p1, "Expand"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string p1, "Collapse"

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public calculateBottomCornerRadius(F)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimCornerRadius:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->calculateBottomRadiusProgress()F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    float-to-int p0, p0

    .line 19
    return p0
.end method

.method public final calculateBottomPosition(F)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderTranslation()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v1, v0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    add-int/lit8 p0, p0, 0x0

    .line 20
    .line 21
    invoke-static {v1, p0, p1}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    float-to-int p0, p0

    .line 26
    return p0
.end method

.method public calculateBottomRadiusProgress()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    sub-float/2addr v0, p0

    .line 12
    const/high16 p0, 0x42c80000    # 100.0f

    .line 13
    .line 14
    mul-float/2addr v0, p0

    .line 15
    return v0
.end method

.method public final calculateNotificationsTopPadding(I)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 11
    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    int-to-float p0, p1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    :goto_1
    return p0

    .line 20
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    move v1, v2

    .line 25
    :cond_3
    if-eqz v1, :cond_4

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    int-to-float p0, p0

    .line 42
    return p0

    .line 43
    :cond_4
    if-eqz v0, :cond_5

    .line 44
    .line 45
    int-to-float p1, p1

    .line 46
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 47
    .line 48
    int-to-float v0, v0

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_5
    iget p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateController;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/QsFrameTranslateController;->getNotificationsTopPadding(F)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQuickQsHeaderHeight:F

    .line 67
    .line 68
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0
.end method

.method public final calculatePanelHeightExpanded(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sub-int/2addr v1, v3

    .line 14
    iget v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 15
    .line 16
    sub-int/2addr v1, v3

    .line 17
    int-to-float v1, v1

    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-boolean v3, Lcom/android/systemui/NotiRune;->NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    move v5, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 35
    .line 36
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    .line 37
    .line 38
    :goto_0
    if-eqz v5, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    move v1, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :goto_1
    int-to-float v1, v1

    .line 54
    :cond_2
    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 55
    .line 56
    iget-object v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    :cond_3
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    if-ne p0, v5, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move p1, v4

    .line 77
    :goto_2
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    int-to-float p0, p0

    .line 82
    add-float/2addr p0, v1

    .line 83
    iget p1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 84
    .line 85
    add-float/2addr p0, p1

    .line 86
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    int-to-float p1, p1

    .line 91
    cmpl-float p1, p0, p1

    .line 92
    .line 93
    if-lez p1, :cond_5

    .line 94
    .line 95
    int-to-float p0, v3

    .line 96
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    int-to-float p1, p1

    .line 101
    add-float/2addr p1, p0

    .line 102
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    int-to-float p0, p0

    .line 107
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    :cond_5
    float-to-int p0, p0

    .line 112
    return p0
.end method

.method public final calculateTopClippingBound(I)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_STYLE_TABLET_BG:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->getEdgePosition()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 31
    .line 32
    iget v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 33
    .line 34
    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShelfHeight:I

    .line 35
    .line 36
    int-to-float v3, v3

    .line 37
    sub-float/2addr v2, v3

    .line 38
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->getEdgePosition()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 48
    .line 49
    iput v0, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationScrimTop:F

    .line 50
    .line 51
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    if-ne v2, v3, :cond_3

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    int-to-float p1, p1

    .line 66
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    float-to-int p1, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 73
    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    float-to-int p1, v0

    .line 78
    :goto_1
    int-to-float p1, p1

    .line 79
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 84
    .line 85
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverStretchAmount:F

    .line 86
    .line 87
    add-float/2addr p1, v0

    .line 88
    float-to-int p1, p1

    .line 89
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 94
    .line 95
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinFraction:F

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    cmpl-float v1, v0, v1

    .line 99
    .line 100
    if-lez v1, :cond_5

    .line 101
    .line 102
    const/high16 v1, 0x3f800000    # 1.0f

    .line 103
    .line 104
    cmpg-float v2, v0, v1

    .line 105
    .line 106
    if-gez v2, :cond_5

    .line 107
    .line 108
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 109
    .line 110
    sub-float/2addr p0, v0

    .line 111
    sub-float/2addr v1, v0

    .line 112
    div-float/2addr p0, v1

    .line 113
    int-to-float p1, p1

    .line 114
    div-float/2addr p0, v0

    .line 115
    invoke-static {p0}, Landroid/util/MathUtils;->saturate(F)F

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    mul-float/2addr p0, p1

    .line 120
    float-to-int p0, p0

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    move p0, p1

    .line 123
    :goto_2
    return p0
.end method

.method public final closeQs()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 6
    .line 7
    const-string v1, "Closing QS while in split shade"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 20
    .line 21
    int-to-float v0, v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final computeExpansionFraction()F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatingHiddenFromCollapsed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 8
    .line 9
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 15
    .line 16
    int-to-float v1, v2

    .line 17
    sub-float/2addr p0, v1

    .line 18
    sub-int/2addr v0, v2

    .line 19
    int-to-float v0, v0

    .line 20
    div-float/2addr p0, v0

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final disallowTouches()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->qsSupplier:Ljava/util/function/Supplier;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Lcom/android/systemui/qs/QSFragment;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p0, Lcom/android/systemui/qs/QSFragment;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isDetailVisible()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move p0, v0

    .line 46
    :goto_1
    const/4 v1, 0x1

    .line 47
    if-ne p0, v1, :cond_2

    .line 48
    .line 49
    move v0, v1

    .line 50
    :cond_2
    return v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "QuickSettingsController:"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 11
    .line 12
    .line 13
    const-string p2, "mIsFullWidth="

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 21
    .line 22
    .line 23
    const-string p2, "mTouchSlop="

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTouchSlop:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 31
    .line 32
    .line 33
    const-string p2, "mSlopMultiplier="

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSlopMultiplier:F

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 41
    .line 42
    .line 43
    const-string p2, "mBarState="

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 51
    .line 52
    .line 53
    const-string p2, "mStatusBarMinHeight="

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarMinHeight:I

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 61
    .line 62
    .line 63
    const-string p2, "mScrimEnabled="

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimEnabled:Z

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 71
    .line 72
    .line 73
    const-string p2, "mScrimCornerRadius="

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimCornerRadius:I

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 81
    .line 82
    .line 83
    const-string p2, "mScreenCornerRadius="

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScreenCornerRadius:I

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 91
    .line 92
    .line 93
    const-string p2, "mUseLargeScreenShadeHeader="

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mUseLargeScreenShadeHeader:Z

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 101
    .line 102
    .line 103
    const-string p2, "mLargeScreenShadeHeaderHeight="

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/4 p2, 0x0

    .line 109
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 110
    .line 111
    .line 112
    const-string v0, "mDisplayRightInset="

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayRightInset:I

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 120
    .line 121
    .line 122
    const-string v0, "mDisplayLeftInset="

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 130
    .line 131
    .line 132
    const-string v0, "mSplitShadeEnabled="

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 140
    .line 141
    .line 142
    const-string v0, "mLockscreenNotificationPadding="

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenNotificationPadding:I

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 150
    .line 151
    .line 152
    const-string v0, "mSplitShadeNotificationsScrimMarginBottom="

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeNotificationsScrimMarginBottom:I

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 160
    .line 161
    .line 162
    const-string v0, "mDozing="

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDozing:Z

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 170
    .line 171
    .line 172
    const-string v0, "mEnableClipping="

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mEnableClipping:Z

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 180
    .line 181
    .line 182
    const-string v0, "mFalsingThreshold="

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingThreshold:I

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 190
    .line 191
    .line 192
    const-string v0, "mTransitionToFullShadePosition="

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 198
    .line 199
    .line 200
    const-string v0, "mCollapsedOnDown="

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mCollapsedOnDown:Z

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 208
    .line 209
    .line 210
    const-string v0, "mShadeExpandedHeight="

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedHeight:F

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 218
    .line 219
    .line 220
    const-string v0, "mLastShadeFlingWasExpanding="

    .line 221
    .line 222
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLastShadeFlingWasExpanding:Z

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 228
    .line 229
    .line 230
    const-string v0, "mInitialHeightOnTouch="

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 238
    .line 239
    .line 240
    const-string v0, "mInitialTouchX="

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 246
    .line 247
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 248
    .line 249
    .line 250
    const-string v0, "mInitialTouchY="

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 258
    .line 259
    .line 260
    const-string v0, "mTouchAboveFalsingThreshold="

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTouchAboveFalsingThreshold:Z

    .line 266
    .line 267
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 268
    .line 269
    .line 270
    const-string v0, "mTracking="

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 278
    .line 279
    .line 280
    const-string v0, "mTrackingPointer="

    .line 281
    .line 282
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 286
    .line 287
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 288
    .line 289
    .line 290
    const-string v0, "mExpanded="

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 298
    .line 299
    .line 300
    const-string v0, "mFullyExpanded="

    .line 301
    .line 302
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 306
    .line 307
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 308
    .line 309
    .line 310
    const-string v0, "mExpandImmediate="

    .line 311
    .line 312
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 316
    .line 317
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 318
    .line 319
    .line 320
    const-string v0, "mExpandedWhenExpandingStarted="

    .line 321
    .line 322
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandedWhenExpandingStarted:Z

    .line 326
    .line 327
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 328
    .line 329
    .line 330
    const-string v0, "mAnimatingHiddenFromCollapsed="

    .line 331
    .line 332
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatingHiddenFromCollapsed:Z

    .line 336
    .line 337
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 338
    .line 339
    .line 340
    const-string v0, "mVisible="

    .line 341
    .line 342
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mVisible:Z

    .line 346
    .line 347
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 348
    .line 349
    .line 350
    const-string v0, "mExpansionHeight="

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 356
    .line 357
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 358
    .line 359
    .line 360
    const-string v0, "mMinExpansionHeight="

    .line 361
    .line 362
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 366
    .line 367
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 368
    .line 369
    .line 370
    const-string v0, "mMaxExpansionHeight="

    .line 371
    .line 372
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 376
    .line 377
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 378
    .line 379
    .line 380
    const-string v0, "mShadeExpandedFraction="

    .line 381
    .line 382
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 386
    .line 387
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 388
    .line 389
    .line 390
    const-string v0, "mPeekHeight="

    .line 391
    .line 392
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPeekHeight:I

    .line 396
    .line 397
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 398
    .line 399
    .line 400
    const-string v0, "mLastOverscroll="

    .line 401
    .line 402
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLastOverscroll:F

    .line 406
    .line 407
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 408
    .line 409
    .line 410
    const-string v0, "mExpansionFromOverscroll="

    .line 411
    .line 412
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionFromOverscroll:Z

    .line 416
    .line 417
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 418
    .line 419
    .line 420
    const-string v0, "mExpansionEnabledPolicy="

    .line 421
    .line 422
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledPolicy:Z

    .line 426
    .line 427
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 428
    .line 429
    .line 430
    const-string v0, "mExpansionEnabledAmbient="

    .line 431
    .line 432
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledAmbient:Z

    .line 436
    .line 437
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 438
    .line 439
    .line 440
    const-string v0, "mQuickQsHeaderHeight="

    .line 441
    .line 442
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQuickQsHeaderHeight:F

    .line 446
    .line 447
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 448
    .line 449
    .line 450
    const-string v0, "mTwoFingerExpandPossible="

    .line 451
    .line 452
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTwoFingerExpandPossible:Z

    .line 456
    .line 457
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 458
    .line 459
    .line 460
    const-string v0, "mConflictingExpansionGesture="

    .line 461
    .line 462
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 466
    .line 467
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 468
    .line 469
    .line 470
    const-string v0, "mAnimatorExpand="

    .line 471
    .line 472
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatorExpand:Z

    .line 476
    .line 477
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 478
    .line 479
    .line 480
    const-string v0, "mCachedGestureInsets="

    .line 481
    .line 482
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mCachedGestureInsets:Landroid/graphics/Insets;

    .line 486
    .line 487
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    const-string v0, "mTransitioningToFullShadeProgress="

    .line 491
    .line 492
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    const/4 v0, 0x0

    .line 496
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 497
    .line 498
    .line 499
    const-string v0, "mDistanceForFullShadeTransition="

    .line 500
    .line 501
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDistanceForFullShadeTransition:I

    .line 505
    .line 506
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 507
    .line 508
    .line 509
    const-string v0, "mStackScrollerOverscrolling="

    .line 510
    .line 511
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStackScrollerOverscrolling:Z

    .line 515
    .line 516
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 517
    .line 518
    .line 519
    const-string v0, "mAnimating="

    .line 520
    .line 521
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimating:Z

    .line 525
    .line 526
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 527
    .line 528
    .line 529
    const-string v0, "mIsTranslationResettingAnimator="

    .line 530
    .line 531
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mIsTranslationResettingAnimator:Z

    .line 535
    .line 536
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 537
    .line 538
    .line 539
    const-string v0, "mIsPulseExpansionResettingAnimator="

    .line 540
    .line 541
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mIsPulseExpansionResettingAnimator:Z

    .line 545
    .line 546
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 547
    .line 548
    .line 549
    const-string v0, "mTranslationForFullShadeTransition="

    .line 550
    .line 551
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTranslationForFullShadeTransition:F

    .line 555
    .line 556
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 557
    .line 558
    .line 559
    const-string v0, "mAnimateNextNotificationBounds="

    .line 560
    .line 561
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimateNextNotificationBounds:Z

    .line 565
    .line 566
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 567
    .line 568
    .line 569
    const-string v0, "mNotificationBoundsAnimationDelay="

    .line 570
    .line 571
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    iget-wide v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDelay:J

    .line 575
    .line 576
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 577
    .line 578
    .line 579
    const-string v0, "mNotificationBoundsAnimationDuration="

    .line 580
    .line 581
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    iget-wide v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDuration:J

    .line 585
    .line 586
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 587
    .line 588
    .line 589
    const-string v0, "mLastClippingTopBound="

    .line 590
    .line 591
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 595
    .line 596
    .line 597
    const-string v0, "mLastNotificationsTopPadding="

    .line 598
    .line 599
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 603
    .line 604
    .line 605
    const-string v0, "mLastNotificationsClippingTopBound="

    .line 606
    .line 607
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 611
    .line 612
    .line 613
    const-string v0, "mLastNotificationsClippingTopBoundNssl="

    .line 614
    .line 615
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 619
    .line 620
    .line 621
    const-string p2, "mInterceptRegion="

    .line 622
    .line 623
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    iget-object p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInterceptRegion:Landroid/graphics/Region;

    .line 627
    .line 628
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    const-string p2, "mClippingAnimationEndBounds="

    .line 632
    .line 633
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    iget-object p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    .line 637
    .line 638
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    const-string p2, "mLastClipBounds="

    .line 642
    .line 643
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLastClipBounds:Landroid/graphics/Rect;

    .line 647
    .line 648
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    return-void
.end method

.method public final flingQs(FI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/shade/QuickSettingsController;->flingQs(FILcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;Z)V

    return-void
.end method

.method public final flingQs(FILcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 2
    iget-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v5, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 4
    new-instance v6, Lcom/android/systemui/shade/ShadeLogger$flingQs$2;

    invoke-direct {v6, v3}, Lcom/android/systemui/shade/ShadeLogger$flingQs$2;-><init>(Z)V

    const/4 v7, 0x0

    .line 5
    iget-object v4, v4, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v8, "systemui.shade"

    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object v5

    const-string v6, "FLING_HIDE"

    const-string v7, "FLING_COLLAPSE"

    const-string v8, "FLING_EXPAND"

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v10, :cond_1

    if-eq v1, v9, :cond_0

    const-string v11, "UNKNOWN"

    goto :goto_0

    :cond_0
    move-object v11, v6

    goto :goto_0

    :cond_1
    move-object v11, v7

    goto :goto_0

    :cond_2
    move-object v11, v8

    .line 6
    :goto_0
    invoke-interface {v5, v11}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 7
    invoke-interface {v5, v3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 8
    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    if-eq v1, v10, :cond_4

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 10
    iget-object v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    :cond_3
    move v11, v5

    goto :goto_2

    .line 11
    :cond_4
    iget-boolean v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    if-eqz v11, :cond_5

    const-string v11, "QuickSettingsController"

    const-string v12, "FLING_COLLAPSE called in split shade"

    .line 12
    invoke-static {v11, v12}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_5
    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 14
    iget v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    goto :goto_1

    .line 15
    :cond_6
    iget v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    :goto_1
    int-to-float v11, v11

    .line 16
    :goto_2
    iget v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    cmpl-float v13, v11, v12

    if-nez v13, :cond_9

    if-eqz v2, :cond_7

    .line 17
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;->run()V

    :cond_7
    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    move v10, v4

    .line 18
    :goto_3
    invoke-virtual {v0, v4, v10}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    return-void

    :cond_9
    if-nez v1, :cond_a

    move v15, v10

    goto :goto_4

    :cond_a
    move v15, v4

    :goto_4
    cmpl-float v13, p1, v5

    if-lez v13, :cond_b

    if-eqz v15, :cond_c

    :cond_b
    cmpg-float v13, p1, v5

    if-gez v13, :cond_d

    if-eqz v15, :cond_d

    :cond_c
    move v14, v10

    goto :goto_5

    :cond_d
    move/from16 v5, p1

    move v14, v4

    :goto_5
    new-array v9, v9, [F

    aput v12, v9, v4

    aput v11, v9, v10

    .line 19
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    if-eqz v3, :cond_e

    .line 20
    sget-object v10, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0x170

    .line 21
    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_6

    .line 22
    :cond_e
    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mFlingQsWithoutClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    if-eqz v10, :cond_f

    .line 23
    iget v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 24
    iget-object v10, v10, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 25
    iget-object v12, v10, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float v10, v11, v13

    .line 26
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move v10, v13

    move-object v13, v9

    move v4, v14

    move v14, v10

    move v10, v15

    move v15, v11

    move/from16 v16, v5

    invoke-virtual/range {v12 .. v17}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_7

    :cond_f
    :goto_6
    move v4, v14

    move v10, v15

    :goto_7
    if-eqz v4, :cond_10

    const-wide/16 v12, 0x15e

    .line 27
    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    :cond_10
    new-instance v12, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda1;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    invoke-virtual {v9, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    new-instance v12, Lcom/android/systemui/shade/QuickSettingsController$3;

    invoke-direct {v12, v0, v2}, Lcom/android/systemui/shade/QuickSettingsController$3;-><init>(Lcom/android/systemui/shade/QuickSettingsController;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    iget-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimating:Z

    iget-boolean v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatorExpand:Z

    iget v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 31
    iget-object v15, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    move-object/from16 v16, v6

    iget-object v6, v15, Lcom/android/systemui/shade/SecQuickSettingsController;->logBuilder:Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v13, "flingQs: "

    .line 33
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "vel:"

    .line 34
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", isClick:"

    .line 35
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", target:"

    .line 36
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mExpansionHeight:"

    .line 37
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", oppositeDirection:"

    .line 38
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAnimating("

    .line 39
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " >> true)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mAnimatorExpand("

    .line 40
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >> "

    const-string v3, ")"

    .line 41
    invoke-static {v6, v12, v2, v10, v3}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 42
    iget-object v2, v15, Lcom/android/systemui/shade/SecQuickSettingsController;->panelLogger:Lcom/android/systemui/log/SecPanelLogger;

    check-cast v2, Lcom/android/systemui/log/SecPanelLoggerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_13

    const/4 v3, 0x1

    if-eq v1, v3, :cond_12

    const/4 v3, 0x2

    if-eq v1, v3, :cond_11

    const-string v1, "UnKnown"

    goto :goto_8

    :cond_11
    move-object/from16 v1, v16

    goto :goto_8

    :cond_12
    move-object v1, v7

    goto :goto_8

    :cond_13
    move-object v1, v8

    :goto_8
    const/16 v3, 0xa

    const-string v4, " - "

    .line 43
    invoke-static {v3, v4}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    iget-object v2, v2, Lcom/android/systemui/log/SecPanelLoggerImpl;->writer:Lcom/android/systemui/log/SecPanelLogWriter;

    const-string v3, "TOUCH"

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/log/SecPanelLogWriter;->logPanel(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimating:Z

    .line 46
    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean v10, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsExpandAnimating:Z

    .line 47
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 48
    iput-object v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 49
    iput-boolean v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatorExpand:Z

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_14

    cmpl-float v2, v11, v3

    if-nez v2, :cond_14

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatingHiddenFromCollapsed:Z

    return-void
.end method

.method public final getCurrentVelocity()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const/16 v1, 0x3e8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getEdgePosition()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 11
    .line 12
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 13
    .line 14
    mul-float/2addr v0, v1

    .line 15
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 16
    .line 17
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    .line 18
    .line 19
    int-to-float v3, v3

    .line 20
    mul-float/2addr v3, v1

    .line 21
    add-float/2addr v3, v2

    .line 22
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    .line 23
    .line 24
    int-to-float p0, p0

    .line 25
    sub-float/2addr v3, p0

    .line 26
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final getExpanded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getFullyExpanded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getHeaderTranslation()F
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v3, :cond_1

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 21
    .line 22
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    neg-int p0, p0

    .line 27
    int-to-float p0, p0

    .line 28
    return p0

    .line 29
    :cond_1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedHeight:F

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 32
    .line 33
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 34
    .line 35
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 40
    .line 41
    neg-float v5, v5

    .line 42
    iget v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 43
    .line 44
    if-nez v6, :cond_2

    .line 45
    .line 46
    const v6, 0x3e333333    # 0.175f

    .line 47
    .line 48
    .line 49
    mul-float/2addr v5, v6

    .line 50
    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 57
    .line 58
    if-ne v2, v3, :cond_4

    .line 59
    .line 60
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 63
    .line 64
    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    .line 65
    .line 66
    const v3, 0x47c35000    # 100000.0f

    .line 67
    .line 68
    .line 69
    cmpl-float v3, v2, v3

    .line 70
    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    move v2, v1

    .line 74
    :cond_3
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 75
    .line 76
    int-to-float v0, v0

    .line 77
    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->smoothStep(FFF)F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 82
    .line 83
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    neg-int p0, p0

    .line 88
    int-to-float v5, p0

    .line 89
    :cond_4
    const/high16 p0, 0x3f800000    # 1.0f

    .line 90
    .line 91
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-static {v5, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    return p0
.end method

.method public getScrimCornerRadius()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimCornerRadius:I

    .line 2
    .line 3
    return p0
.end method

.method public getShadeExpandedHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedHeight:F

    .line 2
    .line 3
    return p0
.end method

.method public final handleTouch(Landroid/view/MotionEvent;ZZ)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v5, "QuickSettingsController handleTouch isFullyCollapsed : "

    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v5, " isShadeOrQsHeightAnimationRunning : "

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 32
    .line 33
    check-cast v5, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    invoke-virtual {v5, v1, v4, v6}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iget-object v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 40
    .line 41
    iget-object v7, v4, Lcom/android/systemui/shade/SecQuickSettingsController;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 42
    .line 43
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 44
    .line 45
    iget v7, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    if-lez v7, :cond_0

    .line 49
    .line 50
    move v7, v6

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v7, v8

    .line 53
    :goto_0
    if-eqz v7, :cond_1

    .line 54
    .line 55
    const-string v0, "QuickSettingsController handleTouch return false | isNotificationImmersiveScrolling() "

    .line 56
    .line 57
    invoke-virtual {v5, v1, v0, v6}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return v8

    .line 61
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    iget-boolean v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 66
    .line 67
    if-nez v9, :cond_2

    .line 68
    .line 69
    iget-boolean v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 70
    .line 71
    if-nez v9, :cond_2

    .line 72
    .line 73
    move v9, v6

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move v9, v8

    .line 76
    :goto_1
    iget v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 77
    .line 78
    const/high16 v11, 0x3f800000    # 1.0f

    .line 79
    .line 80
    cmpl-float v10, v10, v11

    .line 81
    .line 82
    if-nez v10, :cond_3

    .line 83
    .line 84
    iget v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 85
    .line 86
    if-eq v10, v6, :cond_3

    .line 87
    .line 88
    if-eqz v9, :cond_3

    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_3

    .line 95
    .line 96
    move v9, v6

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move v9, v8

    .line 99
    :goto_2
    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 100
    .line 101
    if-nez v7, :cond_4

    .line 102
    .line 103
    if-eqz v9, :cond_4

    .line 104
    .line 105
    const-string v9, "handleQsTouch: down action, QS tracking enabled"

    .line 106
    .line 107
    invoke-virtual {v10, v1, v9}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v6}, Lcom/android/systemui/shade/QuickSettingsController;->setTracking(Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v6, v8}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 114
    .line 115
    .line 116
    iput-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 117
    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->onExpansionStarted()V

    .line 119
    .line 120
    .line 121
    iget v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 122
    .line 123
    iput v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    iput v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 130
    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    iput v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 136
    .line 137
    :cond_4
    iget-object v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 138
    .line 139
    if-nez v2, :cond_6

    .line 140
    .line 141
    if-nez v3, :cond_6

    .line 142
    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_6

    .line 148
    .line 149
    sget-boolean v3, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 150
    .line 151
    if-eqz v3, :cond_5

    .line 152
    .line 153
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    const/high16 v12, -0x40800000    # -1.0f

    .line 171
    .line 172
    invoke-virtual {v0, v3, v11, v12}, Lcom/android/systemui/shade/QuickSettingsController;->shouldQuickSettingsIntercept(FFF)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_6

    .line 177
    .line 178
    iget-object v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    const-string v3, "handleQsDown: down action, QS tracking enabled"

    .line 184
    .line 185
    invoke-virtual {v10, v1, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v6}, Lcom/android/systemui/shade/QuickSettingsController;->setTracking(Z)V

    .line 189
    .line 190
    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->onExpansionStarted()V

    .line 192
    .line 193
    .line 194
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 195
    .line 196
    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 197
    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 203
    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 209
    .line 210
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 215
    .line 216
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 217
    .line 218
    .line 219
    :cond_6
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 220
    .line 221
    if-nez v3, :cond_7

    .line 222
    .line 223
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLastShadeFlingWasExpanding:Z

    .line 224
    .line 225
    if-nez v3, :cond_7

    .line 226
    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    float-to-double v11, v3

    .line 232
    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    cmpg-double v3, v11, v13

    .line 238
    .line 239
    if-gtz v3, :cond_7

    .line 240
    .line 241
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 242
    .line 243
    float-to-double v11, v3

    .line 244
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 245
    .line 246
    cmpg-double v3, v11, v13

    .line 247
    .line 248
    if-gez v3, :cond_7

    .line 249
    .line 250
    invoke-virtual {v0, v8}, Lcom/android/systemui/shade/QuickSettingsController;->setTracking(Z)V

    .line 251
    .line 252
    .line 253
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpandImmediate()Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    const/4 v11, 0x3

    .line 258
    if-nez v3, :cond_21

    .line 259
    .line 260
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 261
    .line 262
    if-eqz v3, :cond_21

    .line 263
    .line 264
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 265
    .line 266
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-gez v3, :cond_8

    .line 271
    .line 272
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 277
    .line 278
    move v3, v8

    .line 279
    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 280
    .line 281
    .line 282
    move-result v12

    .line 283
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    iget v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 288
    .line 289
    sub-float v13, v12, v13

    .line 290
    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 292
    .line 293
    .line 294
    move-result v14

    .line 295
    if-eqz v14, :cond_1e

    .line 296
    .line 297
    const/4 v3, 0x2

    .line 298
    const/4 v15, 0x0

    .line 299
    if-eq v14, v6, :cond_10

    .line 300
    .line 301
    if-eq v14, v3, :cond_b

    .line 302
    .line 303
    if-eq v14, v11, :cond_10

    .line 304
    .line 305
    const/4 v3, 0x6

    .line 306
    if-eq v14, v3, :cond_9

    .line 307
    .line 308
    goto/16 :goto_e

    .line 309
    .line 310
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    iget v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 319
    .line 320
    if-ne v4, v3, :cond_20

    .line 321
    .line 322
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eq v4, v3, :cond_a

    .line 327
    .line 328
    move v3, v8

    .line 329
    goto :goto_3

    .line 330
    :cond_a
    move v3, v6

    .line 331
    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 344
    .line 345
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 346
    .line 347
    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 348
    .line 349
    iput v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 350
    .line 351
    iput v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 352
    .line 353
    goto/16 :goto_e

    .line 354
    .line 355
    :cond_b
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTouchSlop:I

    .line 356
    .line 357
    iget-boolean v4, v4, Lcom/android/systemui/shade/SecQuickSettingsController;->isBackGestureAllowed:Z

    .line 358
    .line 359
    if-eqz v4, :cond_e

    .line 360
    .line 361
    mul-int/lit8 v3, v3, 0x5

    .line 362
    .line 363
    cmpl-float v4, v13, v15

    .line 364
    .line 365
    int-to-float v3, v3

    .line 366
    if-lez v4, :cond_c

    .line 367
    .line 368
    sub-float/2addr v13, v3

    .line 369
    cmpg-float v3, v15, v13

    .line 370
    .line 371
    if-gez v3, :cond_d

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_c
    add-float/2addr v13, v3

    .line 375
    cmpl-float v3, v15, v13

    .line 376
    .line 377
    if-lez v3, :cond_d

    .line 378
    .line 379
    goto :goto_4

    .line 380
    :cond_d
    move v13, v15

    .line 381
    :cond_e
    :goto_4
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 382
    .line 383
    add-float/2addr v3, v13

    .line 384
    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 392
    .line 393
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->getFalsingThreshold()I

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    int-to-float v3, v3

    .line 398
    cmpl-float v3, v13, v3

    .line 399
    .line 400
    if-ltz v3, :cond_f

    .line 401
    .line 402
    iput-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTouchAboveFalsingThreshold:Z

    .line 403
    .line 404
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_e

    .line 408
    .line 409
    :cond_10
    const-string v13, "onQsTouch: up/cancel action, QS tracking disabled"

    .line 410
    .line 411
    invoke-virtual {v10, v1, v13}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v8}, Lcom/android/systemui/shade/QuickSettingsController;->setTracking(Z)V

    .line 415
    .line 416
    .line 417
    const/4 v10, -0x1

    .line 418
    iput v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 419
    .line 420
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 424
    .line 425
    .line 426
    move-result v10

    .line 427
    cmpl-float v10, v10, v15

    .line 428
    .line 429
    if-nez v10, :cond_13

    .line 430
    .line 431
    iget v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 432
    .line 433
    cmpl-float v10, v12, v10

    .line 434
    .line 435
    if-ltz v10, :cond_11

    .line 436
    .line 437
    goto :goto_6

    .line 438
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    if-ne v3, v11, :cond_12

    .line 443
    .line 444
    move v3, v6

    .line 445
    goto :goto_5

    .line 446
    :cond_12
    move v3, v8

    .line 447
    :goto_5
    invoke-virtual {v0, v8, v3}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_d

    .line 451
    .line 452
    :cond_13
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 453
    .line 454
    .line 455
    move-result v10

    .line 456
    if-ne v10, v11, :cond_14

    .line 457
    .line 458
    move v10, v6

    .line 459
    goto :goto_7

    .line 460
    :cond_14
    move v10, v8

    .line 461
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->getCurrentVelocity()F

    .line 462
    .line 463
    .line 464
    move-result v13

    .line 465
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v14

    .line 469
    check-cast v14, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 470
    .line 471
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 475
    .line 476
    .line 477
    move-result v16

    .line 478
    iget-object v3, v14, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 479
    .line 480
    iget v3, v3, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    .line 481
    .line 482
    cmpg-float v3, v16, v3

    .line 483
    .line 484
    if-gez v3, :cond_15

    .line 485
    .line 486
    iget-object v3, v14, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 487
    .line 488
    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    const/high16 v14, 0x3f000000    # 0.5f

    .line 493
    .line 494
    cmpl-float v3, v3, v14

    .line 495
    .line 496
    if-lez v3, :cond_16

    .line 497
    .line 498
    goto :goto_8

    .line 499
    :cond_15
    cmpl-float v3, v13, v15

    .line 500
    .line 501
    if-lez v3, :cond_16

    .line 502
    .line 503
    :goto_8
    move v3, v6

    .line 504
    goto :goto_9

    .line 505
    :cond_16
    move v3, v8

    .line 506
    :goto_9
    iget-object v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 507
    .line 508
    if-eqz v3, :cond_19

    .line 509
    .line 510
    invoke-interface {v14}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    .line 511
    .line 512
    .line 513
    move-result v14

    .line 514
    if-nez v14, :cond_18

    .line 515
    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->getCurrentVelocity()F

    .line 517
    .line 518
    .line 519
    move-result v14

    .line 520
    iget v15, v0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 521
    .line 522
    if-ne v15, v6, :cond_17

    .line 523
    .line 524
    const/16 v15, 0xc1

    .line 525
    .line 526
    goto :goto_a

    .line 527
    :cond_17
    const/16 v15, 0xc2

    .line 528
    .line 529
    :goto_a
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v9

    .line 533
    check-cast v9, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 534
    .line 535
    iget-object v9, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 536
    .line 537
    check-cast v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 538
    .line 539
    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 540
    .line 541
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 542
    .line 543
    iget v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 544
    .line 545
    sub-float/2addr v12, v11

    .line 546
    div-float/2addr v12, v9

    .line 547
    float-to-int v11, v12

    .line 548
    div-float/2addr v14, v9

    .line 549
    float-to-int v9, v14

    .line 550
    iget-object v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 551
    .line 552
    invoke-virtual {v12, v15, v11, v9}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 553
    .line 554
    .line 555
    goto :goto_b

    .line 556
    :cond_18
    move v3, v8

    .line 557
    goto :goto_b

    .line 558
    :cond_19
    cmpg-float v9, v13, v15

    .line 559
    .line 560
    if-gez v9, :cond_1a

    .line 561
    .line 562
    const/16 v9, 0xc

    .line 563
    .line 564
    invoke-interface {v14, v9}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 565
    .line 566
    .line 567
    :cond_1a
    :goto_b
    if-eqz v3, :cond_1b

    .line 568
    .line 569
    if-nez v10, :cond_1b

    .line 570
    .line 571
    move v3, v8

    .line 572
    goto :goto_c

    .line 573
    :cond_1b
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 574
    .line 575
    if-eqz v3, :cond_1c

    .line 576
    .line 577
    const/4 v3, 0x2

    .line 578
    goto :goto_c

    .line 579
    :cond_1c
    move v3, v6

    .line 580
    :goto_c
    invoke-virtual {v0, v13, v3}, Lcom/android/systemui/shade/QuickSettingsController;->flingQs(FI)V

    .line 581
    .line 582
    .line 583
    :goto_d
    iget-object v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 584
    .line 585
    if-eqz v3, :cond_1d

    .line 586
    .line 587
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 588
    .line 589
    .line 590
    const/4 v3, 0x0

    .line 591
    iput-object v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 592
    .line 593
    :cond_1d
    iput-boolean v8, v4, Lcom/android/systemui/shade/SecQuickSettingsController;->isBackGestureAllowed:Z

    .line 594
    .line 595
    goto :goto_e

    .line 596
    :cond_1e
    const-string v4, "onQsTouch: down action, QS tracking enabled"

    .line 597
    .line 598
    invoke-virtual {v10, v1, v4}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0, v6}, Lcom/android/systemui/shade/QuickSettingsController;->setTracking(Z)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0, v6, v8}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 605
    .line 606
    .line 607
    iput v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 608
    .line 609
    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 610
    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->onExpansionStarted()V

    .line 612
    .line 613
    .line 614
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 615
    .line 616
    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 617
    .line 618
    iget-object v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 619
    .line 620
    if-eqz v3, :cond_1f

    .line 621
    .line 622
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 623
    .line 624
    .line 625
    :cond_1f
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    iput-object v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 630
    .line 631
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 632
    .line 633
    .line 634
    :cond_20
    :goto_e
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 635
    .line 636
    if-nez v3, :cond_21

    .line 637
    .line 638
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 639
    .line 640
    if-nez v3, :cond_21

    .line 641
    .line 642
    const-string v0, "QuickSettingsController handleTouch return true"

    .line 643
    .line 644
    invoke-virtual {v5, v1, v0, v6}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 645
    .line 646
    .line 647
    return v6

    .line 648
    :cond_21
    const/4 v3, 0x3

    .line 649
    if-eq v7, v3, :cond_22

    .line 650
    .line 651
    if-ne v7, v6, :cond_23

    .line 652
    .line 653
    :cond_22
    iput-boolean v8, v0, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 654
    .line 655
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 656
    .line 657
    if-eqz v3, :cond_23

    .line 658
    .line 659
    iput-boolean v8, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 660
    .line 661
    :cond_23
    if-nez v7, :cond_24

    .line 662
    .line 663
    if-eqz v2, :cond_24

    .line 664
    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 666
    .line 667
    .line 668
    move-result v2

    .line 669
    if-eqz v2, :cond_24

    .line 670
    .line 671
    iput-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTwoFingerExpandPossible:Z

    .line 672
    .line 673
    :cond_24
    iget-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTwoFingerExpandPossible:Z

    .line 674
    .line 675
    if-eqz v2, :cond_26

    .line 676
    .line 677
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsController;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    if-eqz v2, :cond_26

    .line 682
    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 688
    .line 689
    .line 690
    move-result v2

    .line 691
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarMinHeight:I

    .line 692
    .line 693
    int-to-float v3, v3

    .line 694
    cmpg-float v2, v2, v3

    .line 695
    .line 696
    if-gez v2, :cond_26

    .line 697
    .line 698
    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 699
    .line 700
    if-eq v2, v6, :cond_26

    .line 701
    .line 702
    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 703
    .line 704
    const-string/jumbo v3, "panel_open_qs"

    .line 705
    .line 706
    .line 707
    invoke-virtual {v2, v3, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0, v6}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 711
    .line 712
    .line 713
    const-string v2, "QuickSettingsController handleTouch : "

    .line 714
    .line 715
    invoke-virtual {v5, v1, v2, v6}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 716
    .line 717
    .line 718
    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    .line 719
    .line 720
    if-eqz v2, :cond_25

    .line 721
    .line 722
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 723
    .line 724
    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    .line 725
    .line 726
    .line 727
    :cond_25
    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 728
    .line 729
    if-eqz v0, :cond_26

    .line 730
    .line 731
    invoke-interface {v0, v6}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    .line 732
    .line 733
    .line 734
    :cond_26
    const-string v0, "QuickSettingsController handleTouch return false"

    .line 735
    .line 736
    invoke-virtual {v5, v1, v0, v6}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 737
    .line 738
    .line 739
    return v8
.end method

.method public isConflictingExpansionGesture()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 2
    .line 3
    return p0
.end method

.method public isExpandImmediate()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isExpansionEnabled()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledPolicy:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledAmbient:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isRemoteInputActive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 20
    .line 21
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isShowingDetail()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    move p0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, v1

    .line 30
    :goto_0
    if-nez p0, :cond_1

    .line 31
    .line 32
    move v1, v2

    .line 33
    :cond_1
    return v1
.end method

.method public isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x5

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    if-ne v0, v3, :cond_0

    .line 16
    .line 17
    move v0, v5

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v4

    .line 20
    :goto_0
    if-nez v1, :cond_2

    .line 21
    .line 22
    const/16 v2, 0x20

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    const/16 v2, 0x40

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    :cond_1
    move v2, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v2, v4

    .line 41
    :goto_1
    if-nez v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    :cond_3
    move v3, v5

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    move v3, v4

    .line 59
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    iput-boolean v5, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->openedByTwoFingerDragging:Z

    .line 64
    .line 65
    :cond_5
    if-nez v0, :cond_d

    .line 66
    .line 67
    if-nez v2, :cond_d

    .line 68
    .line 69
    if-nez v3, :cond_d

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->expandQSAtOnceController:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 78
    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    move v0, v4

    .line 82
    goto :goto_3

    .line 83
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isExpandQsAtOnceEnabled()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    :goto_3
    if-nez v0, :cond_7

    .line 88
    .line 89
    goto/16 :goto_7

    .line 90
    .line 91
    :cond_7
    if-nez v1, :cond_c

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v1, "isOpenqSEvent DOWN 00"

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    float-to-int v1, p1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, "00 mDisplayWidthOfDivider = "

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v1, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mDisplayWidthOfDivider:I

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, " getSidePosition() = "

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 120
    .line 121
    iget-object v2, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 122
    .line 123
    const-string/jumbo v3, "swipe_directly_to_quick_setting_position"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string/jumbo v6, "right"

    .line 135
    .line 136
    .line 137
    if-eqz v2, :cond_8

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_8
    move-object v2, v6

    .line 141
    :goto_4
    const-string v7, "ExpandQSAtOnceController"

    .line 142
    .line 143
    invoke-static {v0, v2, v7}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_9

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    move-object v0, v6

    .line 160
    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_a

    .line 165
    .line 166
    iget v0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mDisplayWidthOfDivider:I

    .line 167
    .line 168
    int-to-float v0, v0

    .line 169
    cmpl-float v0, p1, v0

    .line 170
    .line 171
    if-ltz v0, :cond_a

    .line 172
    .line 173
    iput-boolean v5, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mShouldCloseAtOnce:Z

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_a
    iget-object v0, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    if-eqz v0, :cond_b

    .line 187
    .line 188
    move-object v6, v0

    .line 189
    :cond_b
    const-string v0, "left"

    .line 190
    .line 191
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_c

    .line 196
    .line 197
    iget v0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mDisplayWidthOfDivider:I

    .line 198
    .line 199
    int-to-float v0, v0

    .line 200
    cmpg-float p1, p1, v0

    .line 201
    .line 202
    if-gez p1, :cond_c

    .line 203
    .line 204
    iput-boolean v5, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mShouldCloseAtOnce:Z

    .line 205
    .line 206
    :goto_6
    move p0, v5

    .line 207
    goto :goto_8

    .line 208
    :cond_c
    :goto_7
    move p0, v4

    .line 209
    :goto_8
    if-eqz p0, :cond_e

    .line 210
    .line 211
    :cond_d
    move v4, v5

    .line 212
    :cond_e
    return v4
.end method

.method public final isQsFragmentCreated()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

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

.method public isTracking()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 2
    .line 3
    return p0
.end method

.method public isTrackingBlocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public isTwoFingerExpandPossible()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTwoFingerExpandPossible:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onExpansionStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 23
    .line 24
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 34
    .line 35
    const-string v1, "onExpansionStarted"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/android/systemui/DejankUtils;->notifyRendererOfExpensiveFrame(Landroid/view/View;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onHeightChanged()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    int-to-float v0, v0

    .line 27
    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 50
    .line 51
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 71
    .line 72
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    .line 73
    .line 74
    return-void
.end method

.method public final setClippingBounds()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/QuickSettingsController;->calculateBottomPosition(F)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    cmpl-float v6, v0, v3

    .line 17
    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    if-lez v1, :cond_0

    .line 21
    .line 22
    move v6, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v6, v5

    .line 25
    :goto_0
    cmpl-float v3, v0, v3

    .line 26
    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    move v3, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v3, v5

    .line 32
    :goto_1
    if-nez v6, :cond_3

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move v3, v5

    .line 38
    goto :goto_3

    .line 39
    :cond_3
    :goto_2
    move v3, v4

    .line 40
    :goto_3
    if-eqz v2, :cond_5

    .line 41
    .line 42
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 43
    .line 44
    const/high16 v6, 0x3f800000    # 1.0f

    .line 45
    .line 46
    if-ne v2, v4, :cond_4

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 49
    .line 50
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 55
    .line 56
    iget v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    .line 57
    .line 58
    cmpl-float v2, v2, v6

    .line 59
    .line 60
    if-nez v2, :cond_4

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_4
    move v4, v5

    .line 64
    :goto_4
    cmpl-float v0, v0, v6

    .line 65
    .line 66
    if-nez v0, :cond_5

    .line 67
    .line 68
    if-eqz v4, :cond_5

    .line 69
    .line 70
    const-string v0, "QuickSettingsController"

    .line 71
    .line 72
    const-string v2, "Incorrect state, scrim is visible at the same time when clock is visible"

    .line 73
    .line 74
    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/QuickSettingsController;->calculateTopClippingBound(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 84
    .line 85
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 86
    .line 87
    if-eqz v1, :cond_6

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    add-int/2addr v1, v0

    .line 94
    iget v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeNotificationsScrimMarginBottom:I

    .line 95
    .line 96
    add-int/2addr v1, v6

    .line 97
    goto :goto_5

    .line 98
    :cond_6
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    :goto_5
    move v12, v1

    .line 103
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 104
    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    move v9, v5

    .line 108
    goto :goto_6

    .line 109
    :cond_7
    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iget v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    .line 116
    .line 117
    add-int/2addr v1, v6

    .line 118
    move v9, v1

    .line 119
    :goto_6
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 120
    .line 121
    if-eqz v1, :cond_8

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRight()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayRightInset:I

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_8
    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    .line 137
    .line 138
    :goto_7
    add-int v11, v1, v2

    .line 139
    .line 140
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimateNextNotificationBounds:Z

    .line 145
    .line 146
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    .line 147
    .line 148
    if-eqz v0, :cond_b

    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLastClipBounds:Landroid/graphics/Rect;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_9
    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 160
    .line 161
    .line 162
    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 163
    .line 164
    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 165
    .line 166
    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 167
    .line 168
    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 171
    .line 172
    if-eqz v0, :cond_a

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 175
    .line 176
    .line 177
    :cond_a
    const/4 v0, 0x2

    .line 178
    new-array v0, v0, [F

    .line 179
    .line 180
    fill-array-data v0, :array_0

    .line 181
    .line 182
    .line 183
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iput-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 188
    .line 189
    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 195
    .line 196
    iget-wide v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDuration:J

    .line 197
    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 202
    .line 203
    iget-wide v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDelay:J

    .line 204
    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 209
    .line 210
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;

    .line 211
    .line 212
    move-object v7, v1

    .line 213
    move-object v8, p0

    .line 214
    move v13, v3

    .line 215
    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/QuickSettingsController;IIIIZ)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 222
    .line 223
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$2;

    .line 224
    .line 225
    invoke-direct {v1, p0}, Lcom/android/systemui/shade/QuickSettingsController$2;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 234
    .line 235
    .line 236
    goto :goto_9

    .line 237
    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 238
    .line 239
    if-eqz v0, :cond_c

    .line 240
    .line 241
    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 242
    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_c
    move-object v7, p0

    .line 246
    move v8, v3

    .line 247
    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/shade/QuickSettingsController;->applyClippingImmediately(ZIIII)V

    .line 248
    .line 249
    .line 250
    :goto_9
    iput-boolean v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimateNextNotificationBounds:Z

    .line 251
    .line 252
    const-wide/16 v0, 0x0

    .line 253
    .line 254
    iput-wide v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDelay:J

    .line 255
    .line 256
    return-void

    .line 257
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setExpandImmediate(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 11
    .line 12
    sget-object v2, Lcom/android/systemui/shade/ShadeLogger$logQsExpandImmediateChanged$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logQsExpandImmediateChanged$2;

    .line 13
    .line 14
    const-string/jumbo v3, "systemui.shade"

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->shadeStateEventsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/systemui/shade/ShadeStateEvents$ShadeStateEventsListener;

    .line 51
    .line 52
    invoke-interface {v0, p1}, Lcom/android/systemui/shade/ShadeStateEvents$ShadeStateEventsListener;->onExpandImmediateChanged(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    if-eqz v0, :cond_5

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "QsExpand changed expanded : "

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, "\n"

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x5

    .line 40
    const-string v4, " - "

    .line 41
    .line 42
    invoke-static {v3, v4}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 50
    .line 51
    check-cast v3, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 52
    .line 53
    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelStateInfoLog(Ljava/lang/StringBuilder;Z)V

    .line 54
    .line 55
    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->updateQsState()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 62
    .line 63
    iget-boolean v3, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->qsExpanded:Z

    .line 64
    .line 65
    if-eq v3, p1, :cond_1

    .line 66
    .line 67
    move v3, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move v3, v2

    .line 70
    :goto_1
    iput-boolean p1, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->qsExpanded:Z

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    iget-object v3, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->logBuilder:Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v5, "ShadeExpansionStateManager onQsExpansionChanged : "

    .line 82
    .line 83
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v4, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->panelLogger$delegate:Lkotlin/Lazy;

    .line 97
    .line 98
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Lcom/android/systemui/log/SecPanelLogger;

    .line 103
    .line 104
    check-cast v4, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 105
    .line 106
    invoke-virtual {v4, v3, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelStateInfoLog(Ljava/lang/StringBuilder;Z)V

    .line 107
    .line 108
    .line 109
    :cond_2
    sget v1, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->$r8$clinit:I

    .line 110
    .line 111
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->qsExpansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lcom/android/systemui/shade/ShadeQsExpansionListener;

    .line 128
    .line 129
    invoke-interface {v1, p1}, Lcom/android/systemui/shade/ShadeQsExpansionListener;->onQsExpansionChanged(Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 134
    .line 135
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 136
    .line 137
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStackScrollerOverscrolling:Z

    .line 138
    .line 139
    iget-boolean v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatorExpand:Z

    .line 140
    .line 141
    iget-boolean v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimating:Z

    .line 142
    .line 143
    iget-object v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    sget-object v7, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 149
    .line 150
    sget-object v8, Lcom/android/systemui/shade/ShadeLogger$logQsExpansionChanged$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logQsExpansionChanged$2;

    .line 151
    .line 152
    const/4 v9, 0x0

    .line 153
    iget-object v6, v6, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 154
    .line 155
    const-string/jumbo v10, "systemui.shade"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v10, v7, v8, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    const-string v8, "QS Expansion Changed."

    .line 163
    .line 164
    invoke-interface {v7, v8}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v7, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v7, v0}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v7, v1}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v7, v3}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v7, v4}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 180
    .line 181
    .line 182
    invoke-static {v5, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    int-to-long v0, v0

    .line 187
    invoke-interface {v7, v0, v1}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 194
    .line 195
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 200
    .line 201
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 202
    .line 203
    xor-int/lit8 v3, p1, 0x1

    .line 204
    .line 205
    invoke-virtual {v1, v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAllChildEnabled(Landroid/view/View;Z)V

    .line 206
    .line 207
    .line 208
    sget-object v1, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 211
    .line 212
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 213
    .line 214
    invoke-interface {v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setPanelExpandingStarted(Z)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    .line 224
    .line 225
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 226
    .line 227
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mQsExpanded:Z

    .line 231
    .line 232
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 233
    .line 234
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mQsExpanded:Z

    .line 238
    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 240
    .line 241
    if-eqz v0, :cond_4

    .line 242
    .line 243
    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 244
    .line 245
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 250
    .line 251
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->closeRemoteInputs(Z)V

    .line 252
    .line 253
    .line 254
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 255
    .line 256
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFullyExpanding:Z

    .line 257
    .line 258
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/QuickSettingsController;->updateNightMode(I)V

    .line 265
    .line 266
    .line 267
    return-void
.end method

.method public final setExpansionHeight(F)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v0, "QuickSettingsController"

    .line 25
    .line 26
    const-string/jumbo v2, "qsExpansion set to 0 while split shade is expanding or open"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 33
    .line 34
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 35
    .line 36
    if-le v2, v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->updateMinHeight()V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 42
    .line 43
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 44
    .line 45
    :cond_1
    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 46
    .line 47
    int-to-float v3, v3

    .line 48
    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    int-to-float v3, v0

    .line 53
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    cmpl-float v3, p1, v3

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x1

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    if-eq v2, v0, :cond_2

    .line 66
    .line 67
    move v3, v5

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move v3, v4

    .line 70
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 71
    .line 72
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatorExpand:Z

    .line 73
    .line 74
    if-nez v3, :cond_3

    .line 75
    .line 76
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimating:Z

    .line 77
    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    move v3, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move v3, v4

    .line 83
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 84
    .line 85
    if-eqz v6, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0, v5}, Lcom/android/systemui/shade/QuickSettingsController;->setExpanded(Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iget v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 92
    .line 93
    int-to-float v7, v6

    .line 94
    cmpl-float v7, p1, v7

    .line 95
    .line 96
    if-lez v7, :cond_6

    .line 97
    .line 98
    iget-boolean v7, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 99
    .line 100
    if-nez v7, :cond_6

    .line 101
    .line 102
    iget-boolean v7, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStackScrollerOverscrolling:Z

    .line 103
    .line 104
    if-nez v7, :cond_6

    .line 105
    .line 106
    iget-boolean v7, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDozing:Z

    .line 107
    .line 108
    if-nez v7, :cond_6

    .line 109
    .line 110
    if-nez v3, :cond_6

    .line 111
    .line 112
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->reset()V

    .line 127
    .line 128
    .line 129
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/systemui/shade/QuickSettingsController;->setExpanded(Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    int-to-float v1, v6

    .line 134
    cmpg-float v1, p1, v1

    .line 135
    .line 136
    if-gtz v1, :cond_7

    .line 137
    .line 138
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 139
    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    if-eq v2, v0, :cond_7

    .line 143
    .line 144
    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/QuickSettingsController;->setExpanded(Z)V

    .line 145
    .line 146
    .line 147
    :cond_7
    :goto_2
    iput p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansion()V

    .line 150
    .line 151
    .line 152
    iget-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 155
    .line 156
    if-eqz p1, :cond_8

    .line 157
    .line 158
    iget-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 159
    .line 160
    if-eqz p1, :cond_8

    .line 161
    .line 162
    invoke-interface {v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStatusBarState(Z)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    iget p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 167
    .line 168
    const/4 v1, 0x2

    .line 169
    if-eq p1, v1, :cond_9

    .line 170
    .line 171
    invoke-interface {v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStatusBarState(Z)V

    .line 172
    .line 173
    .line 174
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeightListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    .line 175
    .line 176
    if-eqz p1, :cond_a

    .line 177
    .line 178
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 179
    .line 180
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 181
    .line 182
    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onQsSetExpansionHeightCalled(Z)V

    .line 183
    .line 184
    .line 185
    :cond_a
    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 2
    .line 3
    return-void
.end method

.method public setStatusBarMinHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarMinHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTracking(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "onQSTrackingStarted: "

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", mTracking: "

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " -> true :"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "\n"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    const-string v2, " - "

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 45
    .line 46
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 47
    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelStateInfoLog(Ljava/lang/StringBuilder;Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final shouldQuickSettingsIntercept(FFF)Z
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_16

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mCollapsedOnDown:Z

    .line 17
    .line 18
    if-nez v3, :cond_16

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_16

    .line 29
    .line 30
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 31
    .line 32
    if-nez v3, :cond_16

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 35
    .line 36
    iget-object v4, v3, Lcom/android/systemui/shade/SecQuickSettingsController;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 37
    .line 38
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 39
    .line 40
    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 41
    .line 42
    if-lez v4, :cond_2

    .line 43
    .line 44
    move v4, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v4, v1

    .line 47
    :goto_1
    if-nez v4, :cond_16

    .line 48
    .line 49
    iget-object v4, v3, Lcom/android/systemui/shade/SecQuickSettingsController;->expandQSAtOnceController:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    .line 50
    .line 51
    iget-boolean v4, v4, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mShouldCloseAtOnce:Z

    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    goto/16 :goto_d

    .line 56
    .line 57
    :cond_3
    iget-object v4, v3, Lcom/android/systemui/shade/SecQuickSettingsController;->panelBlockExpandingHelper:Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->isDisabledExpandingOnKeyguard()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    return v1

    .line 66
    :cond_4
    if-nez v0, :cond_6

    .line 67
    .line 68
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 69
    .line 70
    if-nez v4, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    goto :goto_3

    .line 78
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 79
    .line 80
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 81
    .line 82
    if-nez v0, :cond_8

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 85
    .line 86
    if-nez v0, :cond_7

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_7
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    goto :goto_5

    .line 94
    :cond_8
    :goto_4
    move v0, v1

    .line 95
    :goto_5
    iget-object v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInterceptRegion:Landroid/graphics/Region;

    .line 96
    .line 97
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    float-to-int v7, v7

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    add-int/2addr v8, v1

    .line 107
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    float-to-int v9, v9

    .line 112
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    add-int/2addr v5, v9

    .line 117
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    add-int/2addr v4, v0

    .line 122
    invoke-virtual {v6, v7, v8, v5, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 126
    .line 127
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateRegionForNotch(Landroid/graphics/Region;)V

    .line 128
    .line 129
    .line 130
    float-to-int v0, p1

    .line 131
    float-to-int v4, p2

    .line 132
    invoke-virtual {v6, v0, v4}, Landroid/graphics/Region;->contains(II)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iget-boolean v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 137
    .line 138
    if-eqz v4, :cond_15

    .line 139
    .line 140
    if-nez v0, :cond_13

    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    cmpg-float p3, p3, v0

    .line 144
    .line 145
    if-gez p3, :cond_11

    .line 146
    .line 147
    iget-object p3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 148
    .line 149
    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    check-cast p3, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 154
    .line 155
    iget-boolean v4, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsGestureNavigation:Z

    .line 156
    .line 157
    if-eqz v4, :cond_9

    .line 158
    .line 159
    iget-object v4, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 160
    .line 161
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    iget p3, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 166
    .line 167
    sub-int/2addr v4, p3

    .line 168
    int-to-float p3, v4

    .line 169
    cmpl-float p3, p2, p3

    .line 170
    .line 171
    if-lez p3, :cond_9

    .line 172
    .line 173
    move p3, v2

    .line 174
    goto :goto_6

    .line 175
    :cond_9
    move p3, v1

    .line 176
    :goto_6
    if-eqz p3, :cond_a

    .line 177
    .line 178
    goto/16 :goto_a

    .line 179
    .line 180
    :cond_a
    iget-object p3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 181
    .line 182
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 183
    .line 184
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    move v5, v1

    .line 189
    :goto_7
    if-ge v5, v4, :cond_d

    .line 190
    .line 191
    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtIndex(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    const/16 v8, 0x8

    .line 200
    .line 201
    if-ne v7, v8, :cond_b

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_b
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    iget v8, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 209
    .line 210
    int-to-float v8, v8

    .line 211
    add-float/2addr v7, v8

    .line 212
    iget v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 213
    .line 214
    int-to-float v6, v6

    .line 215
    sub-float/2addr v7, v6

    .line 216
    cmpl-float v6, v7, v0

    .line 217
    .line 218
    if-lez v6, :cond_c

    .line 219
    .line 220
    move v0, v7

    .line 221
    :cond_c
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_d
    iget p3, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    .line 225
    .line 226
    add-float/2addr v0, p3

    .line 227
    cmpg-float p3, p2, v0

    .line 228
    .line 229
    if-lez p3, :cond_e

    .line 230
    .line 231
    iget-object p3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 232
    .line 233
    invoke-interface {p3}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    .line 238
    .line 239
    .line 240
    move-result p3

    .line 241
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 242
    .line 243
    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    int-to-float p0, p0

    .line 252
    add-float/2addr p3, p0

    .line 253
    cmpg-float p0, p2, p3

    .line 254
    .line 255
    if-gtz p0, :cond_10

    .line 256
    .line 257
    :cond_e
    iget-object p0, v3, Lcom/android/systemui/shade/SecQuickSettingsController;->qsFrameLayoutSupplier:Ljava/util/function/Supplier;

    .line 258
    .line 259
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    check-cast p0, Landroid/view/View;

    .line 264
    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 266
    .line 267
    .line 268
    move-result p2

    .line 269
    cmpl-float p2, p1, p2

    .line 270
    .line 271
    if-ltz p2, :cond_f

    .line 272
    .line 273
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    int-to-float p0, p0

    .line 282
    add-float/2addr p2, p0

    .line 283
    cmpg-float p0, p1, p2

    .line 284
    .line 285
    if-gtz p0, :cond_f

    .line 286
    .line 287
    move p0, v2

    .line 288
    goto :goto_9

    .line 289
    :cond_f
    move p0, v1

    .line 290
    :goto_9
    if-eqz p0, :cond_10

    .line 291
    .line 292
    move p0, v2

    .line 293
    goto :goto_b

    .line 294
    :cond_10
    :goto_a
    move p0, v1

    .line 295
    :goto_b
    if-nez p0, :cond_13

    .line 296
    .line 297
    :cond_11
    iget p0, v3, Lcom/android/systemui/shade/SecQuickSettingsController;->barState:I

    .line 298
    .line 299
    if-ne p0, v2, :cond_12

    .line 300
    .line 301
    move p0, v2

    .line 302
    goto :goto_c

    .line 303
    :cond_12
    move p0, v1

    .line 304
    :goto_c
    if-eqz p0, :cond_14

    .line 305
    .line 306
    :cond_13
    move v1, v2

    .line 307
    :cond_14
    return v1

    .line 308
    :cond_15
    return v0

    .line 309
    :cond_16
    :goto_d
    return v1
.end method

.method public final traceQsJank(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x5

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    if-eqz p2, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final trackMovement(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final updateExpansion()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 2
    .line 3
    if-eqz v0, :cond_26

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 6
    .line 7
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    .line 14
    .line 15
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_14

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 48
    .line 49
    iget-object v4, v3, Lcom/android/systemui/shade/SecQuickSettingsController;->qSScrimViewSwitch:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    .line 50
    .line 51
    iget v5, v4, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->mStatusBarState:I

    .line 52
    .line 53
    const/4 v6, 0x1

    .line 54
    if-eq v5, v6, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->onPanelExpansionChanged(F)V

    .line 58
    .line 59
    .line 60
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 61
    .line 62
    const/high16 v5, 0x3f800000    # 1.0f

    .line 63
    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    move v4, v5

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 73
    .line 74
    iget v8, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderTranslation()F

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    invoke-interface {v7, v4, v8, v9, v5}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FFFF)V

    .line 81
    .line 82
    .line 83
    sget-boolean v4, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 84
    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/QuickSettingsController;->calculateBottomPosition(F)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    const/4 v8, 0x0

    .line 110
    if-eqz v7, :cond_6

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_6
    invoke-static {v1}, Lcom/android/systemui/animation/ShadeInterpolation;->getNotificationScrimAlpha(F)F

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-lez v0, :cond_7

    .line 118
    .line 119
    move v0, v6

    .line 120
    goto :goto_3

    .line 121
    :cond_7
    move v0, v8

    .line 122
    :goto_3
    iget v9, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    .line 123
    .line 124
    cmpl-float v9, v9, v7

    .line 125
    .line 126
    if-nez v9, :cond_8

    .line 127
    .line 128
    iget-boolean v9, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsBottomVisible:Z

    .line 129
    .line 130
    if-eq v9, v0, :cond_c

    .line 131
    .line 132
    :cond_8
    iput v7, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    .line 133
    .line 134
    iput-boolean v0, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsBottomVisible:Z

    .line 135
    .line 136
    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 137
    .line 138
    sget-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 139
    .line 140
    if-eq v0, v7, :cond_a

    .line 141
    .line 142
    sget-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 143
    .line 144
    if-eq v0, v7, :cond_a

    .line 145
    .line 146
    sget-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 147
    .line 148
    if-ne v0, v7, :cond_9

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_9
    move v0, v8

    .line 152
    goto :goto_5

    .line 153
    :cond_a
    :goto_4
    move v0, v6

    .line 154
    :goto_5
    if-eqz v0, :cond_c

    .line 155
    .line 156
    iget-boolean v0, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    .line 157
    .line 158
    if-nez v0, :cond_b

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_b
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchState()V

    .line 162
    .line 163
    .line 164
    :cond_c
    :goto_6
    iget-object v0, v3, Lcom/android/systemui/shade/SecQuickSettingsController;->panelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 165
    .line 166
    iget-object v0, v0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 167
    .line 168
    iget v4, v0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelSecondDepthFraction:F

    .line 169
    .line 170
    cmpg-float v4, v4, v1

    .line 171
    .line 172
    if-nez v4, :cond_d

    .line 173
    .line 174
    move v4, v6

    .line 175
    goto :goto_7

    .line 176
    :cond_d
    move v4, v8

    .line 177
    :goto_7
    if-nez v4, :cond_e

    .line 178
    .line 179
    iput v1, v0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelSecondDepthFraction:F

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->updatePanelOpenState()V

    .line 182
    .line 183
    .line 184
    :cond_e
    iget-object v0, v3, Lcom/android/systemui/shade/SecQuickSettingsController;->blurController:Lcom/android/systemui/blur/SecQpBlurController;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    const/4 v3, 0x0

    .line 190
    cmpl-float v4, v1, v3

    .line 191
    .line 192
    if-nez v4, :cond_10

    .line 193
    .line 194
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    .line 195
    .line 196
    if-eqz v4, :cond_f

    .line 197
    .line 198
    iget-boolean v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mQsExpanded:Z

    .line 199
    .line 200
    if-eqz v4, :cond_f

    .line 201
    .line 202
    invoke-virtual {v0, v8}, Lcom/android/systemui/blur/SecQpBlurController;->notifyWallpaper(Z)V

    .line 203
    .line 204
    .line 205
    :cond_f
    iput-boolean v8, v0, Lcom/android/systemui/blur/SecQpBlurController;->mQsExpanded:Z

    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_10
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    .line 209
    .line 210
    if-eqz v4, :cond_11

    .line 211
    .line 212
    iget-boolean v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mQsExpanded:Z

    .line 213
    .line 214
    if-nez v4, :cond_11

    .line 215
    .line 216
    invoke-virtual {v0, v6}, Lcom/android/systemui/blur/SecQpBlurController;->notifyWallpaper(Z)V

    .line 217
    .line 218
    .line 219
    :cond_11
    iput-boolean v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mQsExpanded:Z

    .line 220
    .line 221
    :goto_8
    iget-object v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 222
    .line 223
    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-ne v4, v6, :cond_12

    .line 228
    .line 229
    move v4, v6

    .line 230
    goto :goto_9

    .line 231
    :cond_12
    move v4, v8

    .line 232
    :goto_9
    if-eqz v4, :cond_15

    .line 233
    .line 234
    iget-boolean v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBouncerShowing:Z

    .line 235
    .line 236
    if-eqz v4, :cond_13

    .line 237
    .line 238
    goto :goto_a

    .line 239
    :cond_13
    iget v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    .line 240
    .line 241
    cmpl-float v4, v4, v1

    .line 242
    .line 243
    if-eqz v4, :cond_14

    .line 244
    .line 245
    iput v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    .line 246
    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string/jumbo v7, "setQsPanelExpansion mPanelExpandedFraction: "

    .line 250
    .line 251
    .line 252
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget v7, v0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    .line 256
    .line 257
    const-string v9, "SecQpBlurController"

    .line 258
    .line 259
    invoke-static {v4, v7, v9}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_14
    iget-object v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mChoreographer:Landroid/view/Choreographer;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController;->mUpdateBlurCallback:Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

    .line 265
    .line 266
    invoke-virtual {v4, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 267
    .line 268
    .line 269
    :cond_15
    :goto_a
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->setClippingBounds()V

    .line 270
    .line 271
    .line 272
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 273
    .line 274
    if-eqz v0, :cond_16

    .line 275
    .line 276
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsExpansionFraction(F)V

    .line 277
    .line 278
    .line 279
    goto :goto_b

    .line 280
    :cond_16
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsExpansionFraction(F)V

    .line 281
    .line 282
    .line 283
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR:Z

    .line 289
    .line 290
    if-eqz v2, :cond_17

    .line 291
    .line 292
    goto :goto_d

    .line 293
    :cond_17
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_18

    .line 298
    .line 299
    const-string v0, "DepthController"

    .line 300
    .line 301
    const-string v2, "Invalid qs expansion"

    .line 302
    .line 303
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    goto :goto_d

    .line 307
    :cond_18
    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->qsPanelExpansion:F

    .line 308
    .line 309
    cmpg-float v2, v2, v1

    .line 310
    .line 311
    if-nez v2, :cond_19

    .line 312
    .line 313
    move v2, v6

    .line 314
    goto :goto_c

    .line 315
    :cond_19
    move v2, v8

    .line 316
    :goto_c
    if-eqz v2, :cond_1a

    .line 317
    .line 318
    goto :goto_d

    .line 319
    :cond_1a
    iput v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->qsPanelExpansion:F

    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate()V

    .line 322
    .line 323
    .line 324
    :goto_d
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setQsExpansion(F)V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    .line 330
    .line 331
    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    .line 332
    .line 333
    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_qsExpansion:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 334
    .line 335
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    .line 343
    .line 344
    if-eqz v0, :cond_1b

    .line 345
    .line 346
    sub-float/2addr v5, v1

    .line 347
    cmpl-float v0, v5, v3

    .line 348
    .line 349
    if-ltz v0, :cond_1b

    .line 350
    .line 351
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 352
    .line 353
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 354
    .line 355
    .line 356
    :cond_1b
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 357
    .line 358
    if-ne v0, v6, :cond_1c

    .line 359
    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    goto :goto_e

    .line 365
    :cond_1c
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 366
    .line 367
    :goto_e
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 368
    .line 369
    iget-boolean v4, v2, Lcom/android/systemui/shade/ShadeHeaderController;->qsVisible:Z

    .line 370
    .line 371
    if-eqz v4, :cond_1e

    .line 372
    .line 373
    iget v5, v2, Lcom/android/systemui/shade/ShadeHeaderController;->shadeExpandedFraction:F

    .line 374
    .line 375
    cmpg-float v5, v5, v0

    .line 376
    .line 377
    if-nez v5, :cond_1d

    .line 378
    .line 379
    move v5, v6

    .line 380
    goto :goto_f

    .line 381
    :cond_1d
    move v5, v8

    .line 382
    :goto_f
    if-nez v5, :cond_1e

    .line 383
    .line 384
    iput v0, v2, Lcom/android/systemui/shade/ShadeHeaderController;->shadeExpandedFraction:F

    .line 385
    .line 386
    :cond_1e
    iget-boolean v0, v2, Lcom/android/systemui/shade/ShadeHeaderController;->visible:Z

    .line 387
    .line 388
    if-eqz v0, :cond_20

    .line 389
    .line 390
    iget v0, v2, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    .line 391
    .line 392
    cmpg-float v0, v0, v1

    .line 393
    .line 394
    if-nez v0, :cond_1f

    .line 395
    .line 396
    move v0, v6

    .line 397
    goto :goto_10

    .line 398
    :cond_1f
    move v0, v8

    .line 399
    :goto_10
    if-nez v0, :cond_20

    .line 400
    .line 401
    iput v1, v2, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    .line 402
    .line 403
    :cond_20
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mVisible:Z

    .line 404
    .line 405
    if-ne v4, v0, :cond_21

    .line 406
    .line 407
    goto :goto_12

    .line 408
    :cond_21
    iput-boolean v0, v2, Lcom/android/systemui/shade/ShadeHeaderController;->qsVisible:Z

    .line 409
    .line 410
    const-class v1, Lcom/android/systemui/util/DesktopManager;

    .line 411
    .line 412
    iget-object v4, v2, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 413
    .line 414
    if-eqz v0, :cond_22

    .line 415
    .line 416
    iput-boolean v6, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->listening:Z

    .line 417
    .line 418
    iget-object v0, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 419
    .line 420
    iget-object v5, v0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 421
    .line 422
    iget-boolean v7, v5, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 423
    .line 424
    iput-boolean v7, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    .line 425
    .line 426
    iget-boolean v5, v5, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 427
    .line 428
    iput-boolean v5, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    .line 429
    .line 430
    iget-object v5, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->picCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 431
    .line 432
    invoke-virtual {v0, v5}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 433
    .line 434
    .line 435
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    .line 440
    .line 441
    iget-object v1, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->desktopCallback:Lcom/android/systemui/qs/HeaderPrivacyIconsController$desktopCallback$1;

    .line 442
    .line 443
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 444
    .line 445
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/DesktopManagerImpl;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 446
    .line 447
    .line 448
    goto :goto_11

    .line 449
    :cond_22
    iput-boolean v8, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->listening:Z

    .line 450
    .line 451
    iget-object v0, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 452
    .line 453
    iget-object v5, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->picCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 454
    .line 455
    invoke-virtual {v0, v5}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 456
    .line 457
    .line 458
    iput-boolean v8, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChipLogged:Z

    .line 459
    .line 460
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    .line 465
    .line 466
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 467
    .line 468
    iget-object v0, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    .line 469
    .line 470
    check-cast v0, Ljava/util/ArrayList;

    .line 471
    .line 472
    iget-object v1, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->desktopCallback:Lcom/android/systemui/qs/HeaderPrivacyIconsController$desktopCallback$1;

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    :goto_11
    invoke-virtual {v2}, Lcom/android/systemui/shade/ShadeHeaderController;->updateVisibility()V

    .line 478
    .line 479
    .line 480
    :goto_12
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 481
    .line 482
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 483
    .line 484
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    .line 485
    .line 486
    if-ne v2, v0, :cond_23

    .line 487
    .line 488
    goto :goto_13

    .line 489
    :cond_23
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    .line 490
    .line 491
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 492
    .line 493
    .line 494
    :goto_13
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 495
    .line 496
    if-eq v0, v6, :cond_24

    .line 497
    .line 498
    const/4 v1, 0x2

    .line 499
    if-ne v0, v1, :cond_26

    .line 500
    .line 501
    :cond_24
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 502
    .line 503
    if-eqz v0, :cond_25

    .line 504
    .line 505
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 506
    .line 507
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 508
    .line 509
    int-to-float v3, v2

    .line 510
    sub-float/2addr v1, v3

    .line 511
    sub-int/2addr v0, v2

    .line 512
    int-to-float v0, v0

    .line 513
    div-float v3, v1, v0

    .line 514
    .line 515
    :cond_25
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 516
    .line 517
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 518
    .line 519
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 520
    .line 521
    if-eqz v0, :cond_26

    .line 522
    .line 523
    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    .line 524
    .line 525
    if-eqz p0, :cond_26

    .line 526
    .line 527
    iget-object p0, v0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 528
    .line 529
    if-eqz p0, :cond_26

    .line 530
    .line 531
    invoke-interface {p0, v3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setQsExpansion(F)V

    .line 532
    .line 533
    .line 534
    :cond_26
    :goto_14
    return-void
.end method

.method public final updateExpansionEnabledAmbient()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQuickQsHeaderHeight:F

    .line 7
    .line 8
    sub-float/2addr v1, v2

    .line 9
    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    cmpg-float v0, v0, v1

    .line 17
    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledAmbient:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final updateMinHeight()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 21
    .line 22
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQuickQsOffsetHeight:I

    .line 23
    .line 24
    if-ge v1, v2, :cond_2

    .line 25
    .line 26
    iput v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 31
    .line 32
    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 33
    .line 34
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 35
    .line 36
    if-le v1, v2, :cond_3

    .line 37
    .line 38
    iput v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 39
    .line 40
    :cond_3
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 41
    .line 42
    cmpl-float v0, v1, v0

    .line 43
    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 47
    .line 48
    int-to-float v0, v0

    .line 49
    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 50
    .line 51
    :cond_4
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 56
    .line 57
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsMinHeight:I

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    sub-int/2addr v0, v1

    .line 68
    int-to-float v0, v0

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 70
    .line 71
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsMinHeight:I

    .line 72
    .line 73
    int-to-float p0, p0

    .line 74
    div-float/2addr p0, v0

    .line 75
    iput p0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationTopRatio:F

    .line 76
    .line 77
    return-void
.end method

.method public final updateNightMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 16
    .line 17
    and-int/lit8 v1, v1, 0x20

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    if-ne p0, p1, :cond_1

    .line 31
    .line 32
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setQsExpandedOnNightMode(Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setQsExpandedOnNightMode(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public final updateQsState()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 15
    .line 16
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 17
    .line 18
    iput-boolean v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsFullScreen:Z

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 21
    .line 22
    .line 23
    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsFullScreen:Z

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-lez v5, :cond_1

    .line 32
    .line 33
    move v5, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v5, v1

    .line 36
    :goto_1
    iget-boolean v6, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    .line 37
    .line 38
    if-eq v5, v6, :cond_2

    .line 39
    .line 40
    iput-boolean v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateShowEmptyShadeView()V

    .line 49
    .line 50
    .line 51
    iget v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 52
    .line 53
    if-eq v4, v2, :cond_4

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionFromOverscroll:Z

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    :cond_3
    move v1, v2

    .line 62
    :cond_4
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 63
    .line 64
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsStateUpdateListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 71
    .line 72
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStackScrollerOverscrolling:Z

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    if-nez v3, :cond_5

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 85
    .line 86
    .line 87
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 88
    .line 89
    if-nez v0, :cond_6

    .line 90
    .line 91
    return-void

    .line 92
    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 93
    .line 94
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
