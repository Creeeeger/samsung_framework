.class public final Lcom/android/systemui/qs/QSFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mAnimateHeaderSlidingInListener:Lcom/android/systemui/qs/QSFragment$3;

.field public final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field public mHeaderAnimating:Z

.field public mInSplitShade:Z

.field public mIsSmallScreen:Z

.field public mLastKeyguardAndExpanded:Z

.field public mLastPanelFraction:F

.field public mLastQSExpansion:F

.field public mLastViewHeight:I

.field public mLayoutDirection:I

.field public mListening:Z

.field public final mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;

.field public final mLocationTemp:[I

.field public mLockscreenToShadeProgress:F

.field public mOverScrolling:Z

.field public mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field public mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

.field public mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

.field public mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field public mQSSquishinessController:Lcom/android/systemui/qs/QSSquishinessController;

.field public final mQsBounds:Landroid/graphics/Rect;

.field public final mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

.field public mQsDisabled:Z

.field public mQsExpanded:Z

.field public final mQsFragmentDisableFlagsLogger:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;

.field public mQsVisible:Z

.field public mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

.field public final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field public mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

.field public final mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

.field public mShowCollapsedOnKeyguard:Z

.field public mSquishinessFraction:F

.field public mStackScrollerOverscrolling:Z

.field public mStatusBarState:I

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mTmpLocation:[I

.field public mTransitioningToFullShade:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/qs/FooterActionsController;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder;Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/SecQSDetailDisplayer;Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    const/high16 v1, -0x40800000    # -1.0f

    .line 13
    .line 14
    iput v1, v0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 15
    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    iput v1, v0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    new-array v2, v1, [I

    .line 22
    .line 23
    iput-object v2, v0, Lcom/android/systemui/qs/QSFragment;->mLocationTemp:[I

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    iput v2, v0, Lcom/android/systemui/qs/QSFragment;->mStatusBarState:I

    .line 27
    .line 28
    new-array v1, v1, [I

    .line 29
    .line 30
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    .line 31
    .line 32
    new-instance v1, Lcom/android/systemui/qs/QSFragment$2;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/android/systemui/qs/QSFragment$3;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Lcom/android/systemui/qs/QSFragment$3;

    .line 43
    .line 44
    move-object v1, p1

    .line 45
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 46
    .line 47
    move-object v1, p5

    .line 48
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    .line 49
    .line 50
    move-object v1, p6

    .line 51
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mQsFragmentDisableFlagsLogger:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/systemui/util/LifecycleFragment;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 54
    .line 55
    move-object v2, p3

    .line 56
    invoke-interface {p3, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object v1, p4

    .line 60
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 61
    .line 62
    move-object v1, p2

    .line 63
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 64
    .line 65
    move-object v1, p7

    .line 66
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 67
    .line 68
    new-instance v1, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 71
    .line 72
    .line 73
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;

    .line 74
    .line 75
    new-instance v1, Lcom/android/systemui/qs/SecQSFragment;

    .line 76
    .line 77
    new-instance v2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;

    .line 83
    .line 84
    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 85
    .line 86
    .line 87
    move-object p1, v1

    .line 88
    move-object/from16 p2, p14

    .line 89
    .line 90
    move-object p3, v2

    .line 91
    move-object/from16 p4, p15

    .line 92
    .line 93
    move-object p5, v3

    .line 94
    move-object/from16 p6, p16

    .line 95
    .line 96
    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/qs/SecQSFragment;-><init>(Lcom/android/systemui/plugins/FalsingManager;Ljava/util/function/BooleanSupplier;Lcom/android/systemui/qs/SecQSDetailDisplayer;Ljava/util/function/Supplier;Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 97
    .line 98
    .line 99
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final animateHeaderSlidingOut()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    neg-int v1, v1

    .line 16
    int-to-float v1, v1

    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    neg-int v1, v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-wide/16 v1, 0x0

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-wide/16 v1, 0x168

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lcom/android/systemui/qs/QSFragment$1;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final closeCustomizer()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->hide()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final closeDetail()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->showDetail(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final disable(IIIZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p4}, Landroid/content/Context;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    if-eq p1, p4, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsFragmentDisableFlagsLogger:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;

    .line 18
    .line 19
    new-instance p4, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    .line 20
    .line 21
    invoke-direct {p4, p2, p3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    .line 25
    .line 26
    invoke-direct {v0, p2, p3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object p2, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 33
    .line 34
    new-instance v1, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger$logDisableFlagChange$2;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger$logDisableFlagChange$2;-><init>(Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    iget-object p1, p1, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 41
    .line 42
    const-string v3, "QSFragmentDisableFlagsLog"

    .line 43
    .line 44
    invoke-virtual {p1, v3, p2, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iget v1, p4, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable1:I

    .line 49
    .line 50
    invoke-interface {p2, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 51
    .line 52
    .line 53
    iget p4, p4, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable2:I

    .line 54
    .line 55
    invoke-interface {p2, p4}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 56
    .line 57
    .line 58
    iget p4, v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable1:I

    .line 59
    .line 60
    int-to-long v1, p4

    .line 61
    invoke-interface {p2, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 62
    .line 63
    .line 64
    iget p4, v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable2:I

    .line 65
    .line 66
    int-to-long v0, p4

    .line 67
    invoke-interface {p2, v0, v1}, Lcom/android/systemui/log/LogMessage;->setLong2(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    and-int/lit8 p2, p3, 0x1

    .line 75
    .line 76
    const/4 p3, 0x0

    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    move p4, p1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    move p4, p3

    .line 82
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    .line 83
    .line 84
    if-ne p4, v0, :cond_2

    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    iput-boolean p4, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    .line 88
    .line 89
    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 90
    .line 91
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    move v0, p1

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move v0, p3

    .line 99
    :goto_1
    iget-boolean v1, p4, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    .line 100
    .line 101
    const/16 v2, 0x8

    .line 102
    .line 103
    if-ne v0, v1, :cond_4

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    iput-boolean v0, p4, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    .line 107
    .line 108
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 109
    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    iget-object p4, p4, Lcom/android/systemui/qs/QSContainerImpl;->mOpaqueBgHelper:Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;

    .line 113
    .line 114
    iget-object p4, p4, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackground:Landroid/view/View;

    .line 115
    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    move v0, v2

    .line 119
    goto :goto_2

    .line 120
    :cond_5
    move v0, p3

    .line 121
    :goto_2
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_3
    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 125
    .line 126
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    if-eqz p2, :cond_7

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    move p1, p3

    .line 133
    :goto_4
    iget-boolean p2, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    .line 134
    .line 135
    if-ne p1, p2, :cond_8

    .line 136
    .line 137
    goto :goto_9

    .line 138
    :cond_8
    iput-boolean p1, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    .line 139
    .line 140
    iget-object p2, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 141
    .line 142
    iget-boolean v0, p2, Lcom/android/systemui/qs/SecQuickQSPanel;->mDisabledByPolicy:Z

    .line 143
    .line 144
    if-ne p1, v0, :cond_9

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_9
    iput-boolean p1, p2, Lcom/android/systemui/qs/SecQuickQSPanel;->mDisabledByPolicy:Z

    .line 148
    .line 149
    if-eqz p1, :cond_a

    .line 150
    .line 151
    move p1, v2

    .line 152
    goto :goto_5

    .line 153
    :cond_a
    move p1, p3

    .line 154
    :goto_5
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQuickQSPanel;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    :goto_6
    iget-object p1, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    .line 158
    .line 159
    iget-boolean p2, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    .line 160
    .line 161
    if-eqz p2, :cond_b

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_b
    move v2, p3

    .line 165
    :goto_7
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iget-boolean p2, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    .line 173
    .line 174
    if-eqz p2, :cond_c

    .line 175
    .line 176
    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 177
    .line 178
    if-eqz p2, :cond_d

    .line 179
    .line 180
    iget-object p2, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 181
    .line 182
    iget-object p2, p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mShadeHeaderControllerLazy:Ldagger/Lazy;

    .line 183
    .line 184
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/android/systemui/shade/ShadeHeaderController;->getViewHeight()I

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    goto :goto_8

    .line 195
    :cond_c
    const/4 p3, -0x2

    .line 196
    :cond_d
    :goto_8
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    .line 198
    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    const-string v0, "  "

    .line 4
    .line 5
    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "QSFragment:"

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "mQsBounds: "

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "mQsExpanded: "

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "mHeaderAnimating: "

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v0, "mStackScrollerOverscrolling: "

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v0, "mListening: "

    .line 95
    .line 96
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v0, "mQsVisible: "

    .line 114
    .line 115
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsVisible:Z

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v0, "mLayoutDirection: "

    .line 133
    .line 134
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v0, "mLastQSExpansion: "

    .line 152
    .line 153
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v0, "mLastPanelFraction: "

    .line 171
    .line 172
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastPanelFraction:F

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v0, "mSquishinessFraction: "

    .line 190
    .line 191
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v0, "mQsDisabled: "

    .line 209
    .line 210
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v0, "mTemp: "

    .line 228
    .line 229
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mLocationTemp:[I

    .line 233
    .line 234
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string v0, "mShowCollapsedOnKeyguard: "

    .line 251
    .line 252
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v0, "mLastKeyguardAndExpanded: "

    .line 270
    .line 271
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    .line 275
    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v0, "mStatusBarState: "

    .line 289
    .line 290
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarState:I

    .line 294
    .line 295
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v0, "mTmpLocation: "

    .line 312
    .line 313
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    .line 317
    .line 318
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v0, "mLastViewHeight: "

    .line 335
    .line 336
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastViewHeight:I

    .line 340
    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    const-string p1, "mLastHeaderTranslation: 0.0"

    .line 352
    .line 353
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v0, "mInSplitShade: "

    .line 359
    .line 360
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    .line 364
    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v0, "mTransitioningToFullShade: "

    .line 378
    .line 379
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    .line 383
    .line 384
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    new-instance p1, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    const-string v0, "mLockscreenToShadeProgress: "

    .line 397
    .line 398
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLockscreenToShadeProgress:F

    .line 402
    .line 403
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    const-string v0, "mOverScrolling: "

    .line 416
    .line 417
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mOverScrolling:Z

    .line 421
    .line 422
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v0, "isCustomizing: "

    .line 435
    .line 436
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 440
    .line 441
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 442
    .line 443
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 444
    .line 445
    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 446
    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    if-eqz p1, :cond_0

    .line 462
    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    const-string/jumbo v1, "top: "

    .line 466
    .line 467
    .line 468
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    const-string/jumbo v1, "y: "

    .line 488
    .line 489
    .line 490
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    const-string/jumbo v1, "translationY: "

    .line 510
    .line 511
    .line 512
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    const-string v1, "alpha: "

    .line 532
    .line 533
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    const-string v1, "height: "

    .line 553
    .line 554
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    const-string v1, "measuredHeight: "

    .line 574
    .line 575
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    const-string v1, "clipBounds: "

    .line 595
    .line 596
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object p1

    .line 610
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    goto :goto_0

    .line 614
    :cond_0
    const-string p1, "getView(): null"

    .line 615
    .line 616
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 620
    .line 621
    if-eqz p0, :cond_3

    .line 622
    .line 623
    new-instance p1, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    const-string v0, "headerHeight: "

    .line 626
    .line 627
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 645
    .line 646
    .line 647
    move-result p0

    .line 648
    if-nez p0, :cond_1

    .line 649
    .line 650
    const-string p0, "VISIBLE"

    .line 651
    .line 652
    goto :goto_1

    .line 653
    :cond_1
    const/4 p1, 0x4

    .line 654
    if-ne p0, p1, :cond_2

    .line 655
    .line 656
    const-string p0, "INVISIBLE"

    .line 657
    .line 658
    goto :goto_1

    .line 659
    :cond_2
    const-string p0, "GONE"

    .line 660
    .line 661
    :goto_1
    const-string p1, "Header visibility: "

    .line 662
    .line 663
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object p0

    .line 667
    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    goto :goto_2

    .line 671
    :cond_3
    const-string p0, "mHeader: null"

    .line 672
    .line 673
    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    :goto_2
    return-void
.end method

.method public final getDesiredHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFragment;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->getViewHeight()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    add-int/2addr p0, v0

    .line 37
    return p0
.end method

.method public final getHeader()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHeightDiff()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getBottom()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    add-int/2addr p0, v0

    .line 21
    return p0
.end method

.method public getListeningAndVisibilityLifecycleOwner()Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getQsMinExpansionHeight()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mLocationTemp:[I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mLocationTemp:[I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aget v0, v0, v1

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-float/2addr v0, v1

    .line 29
    float-to-int v0, v0

    .line 30
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    add-int/2addr p0, v0

    .line 39
    return p0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFragment;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->getViewHeight()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 p0, 0x0

    .line 60
    :goto_0
    add-int/2addr v0, p0

    .line 61
    return v0
.end method

.method public final hideImmediately()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getQsMinExpansionHeight()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    neg-int p0, p0

    .line 21
    int-to-float p0, p0

    .line 22
    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final isCustomizing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 8
    .line 9
    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isFullyCollapsed()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmpl-float v0, p0, v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    cmpl-float p0, p0, v0

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 18
    :goto_1
    return p0
.end method

.method public isListening()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 2
    .line 3
    return p0
.end method

.method public isQsVisible()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsVisible:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isShowingDetail()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFragment;->quickTile:Lcom/android/systemui/qs/QuickTile;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/QuickTile;->secQSDetail:Lcom/android/systemui/qs/SecQSDetail;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    move p0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, v0

    .line 30
    :goto_0
    if-eqz p0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v0

    .line 34
    :cond_2
    :goto_1
    return v1
.end method

.method public final notifyCustomizeChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isCustomizing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x4

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move v4, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v4, v3

    .line 19
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v2, v3

    .line 28
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    .line 32
    .line 33
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsHeightChanged()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->onRtlChanged()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSFragment;->qsCinemaFragmentAdapter:Lcom/android/systemui/qs/cinema/QSCinemaCompany;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mProvider:Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    .line 36
    .line 37
    iget v2, v1, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mCurrentOrientation:I

    .line 38
    .line 39
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    .line 40
    .line 41
    const-string v4, " >> "

    .line 42
    .line 43
    const-string v5, "QSCinemaProvider"

    .line 44
    .line 45
    if-eq v2, v3, :cond_1

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string/jumbo v3, "orientation is changed ! "

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v3, v1, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mCurrentOrientation:I

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    .line 64
    .line 65
    invoke-static {v2, v3, v5}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 69
    .line 70
    iput v2, v1, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mCurrentOrientation:I

    .line 71
    .line 72
    :cond_1
    iget v2, v1, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mCurrentLayoutDirection:I

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eq v2, v3, :cond_2

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v3, "LayoutDirection is changed ! "

    .line 83
    .line 84
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v3, v1, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mCurrentLayoutDirection:I

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iput v2, v1, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mCurrentLayoutDirection:I

    .line 114
    .line 115
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 118
    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSFragment;->quickBar:Lcom/android/systemui/qs/QuickBar;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/systemui/qs/QuickBar;->barController:Lcom/android/systemui/qs/bar/BarController;

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    iget v1, v0, Lcom/android/systemui/qs/bar/BarController;->mOrientation:I

    .line 131
    .line 132
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 133
    .line 134
    if-ne v1, v2, :cond_4

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/qs/bar/BarController;->mQSLastExpansionInitializer:Ljava/lang/Runnable;

    .line 138
    .line 139
    if-nez v1, :cond_5

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 143
    .line 144
    .line 145
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 146
    .line 147
    iput p1, v0, Lcom/android/systemui/qs/bar/BarController;->mOrientation:I

    .line 148
    .line 149
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 5
    .line 6
    const-class v0, Lcom/android/systemui/qs/QSFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    :try_start_0
    const-string p3, "QSFragment#onCreateView"

    .line 2
    .line 3
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p3, Landroid/view/ContextThemeWrapper;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const v0, 0x7f14056d

    .line 13
    .line 14
    .line 15
    invoke-direct {p3, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x0

    .line 23
    const p3, 0x7f0d02d9

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p3, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 25
    .line 26
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 27
    .line 28
    iput-object v2, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 29
    .line 30
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v3, v0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 50
    .line 51
    const-class v3, Lcom/android/systemui/qs/QSFragment;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    iput-boolean v3, v0, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->mDestroyed:Z

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->updateState()V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->destroyQSViews()V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFragment;->quickBar:Lcom/android/systemui/qs/QuickBar;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/QuickBar;->barController:Lcom/android/systemui/qs/bar/BarController;

    .line 85
    .line 86
    if-eqz p0, :cond_4

    .line 87
    .line 88
    iput-object v2, p0, Lcom/android/systemui/qs/bar/BarController;->mBarListener:Lcom/android/systemui/qs/bar/BarController$3;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 91
    .line 92
    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    .line 93
    .line 94
    invoke-direct {v2, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 101
    .line 102
    const-string v1, "BarController"

    .line 103
    .line 104
    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v2, Lcom/android/systemui/logging/PanelScreenShotLogger;->providers:Ljava/util/Map;

    .line 106
    .line 107
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    monitor-exit v0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitorCallback:Lcom/android/systemui/qs/bar/BarController$1;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 114
    .line 115
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBarBackUpRestoreHelper:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->qsBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 123
    .line 124
    const-string v0, "QuickPanelLayout"

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/systemui/qs/QSBackupRestoreManager;->mQSBnRMap:Ljava/util/LinkedHashMap;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    monitor-exit v0

    .line 144
    throw p0

    .line 145
    :cond_4
    :goto_0
    return-void
.end method

.method public final onDestroyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "expanded"

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listening"

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "visible"

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsVisible:Z

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 33
    .line 34
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->saveInstanceState(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarState:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarState:I

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 13
    .line 14
    new-instance v1, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFragment;I)V

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/systemui/qs/SecQSFragment;->qsCinemaFragmentAdapter:Lcom/android/systemui/qs/cinema/QSCinemaCompany;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mProvider:Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSFragment;->quickBar:Lcom/android/systemui/qs/QuickBar;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;->run()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateShowCollapsedOnKeyguard()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->onStateChanged(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    const/4 v0, 0x1

    .line 54
    if-ne p1, v0, :cond_3

    .line 55
    .line 56
    move v2, v0

    .line 57
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 58
    .line 59
    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    .line 60
    .line 61
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mKeyguardShowing:Z

    .line 62
    .line 63
    return-void
.end method

.method public final onUpcomingStateChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFragment;->onStateChanged(I)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;->create(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/dagger/QSFragmentComponent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getSecQSPanelController()Lcom/android/systemui/qs/SecQSPanelController;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getSecQuickQSPanelController()Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a03de

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 39
    .line 40
    new-instance v2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda3;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSFragment;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 50
    .line 51
    new-instance v2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda4;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 57
    .line 58
    .line 59
    const v1, 0x7f0a0477

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSContainerImplController()Lcom/android/systemui/qs/QSContainerImplController;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 82
    .line 83
    check-cast v1, Lcom/android/systemui/qs/QSContainerImpl;

    .line 84
    .line 85
    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v1, v4}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSSquishinessController()Lcom/android/systemui/qs/QSSquishinessController;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSSquishinessController:Lcom/android/systemui/qs/QSSquishinessController;

    .line 110
    .line 111
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSCustomizerController()Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 121
    .line 122
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 123
    .line 124
    check-cast v1, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 125
    .line 126
    iput-object p0, v1, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 127
    .line 128
    const-string v1, "expanded"

    .line 129
    .line 130
    if-eqz p2, :cond_0

    .line 131
    .line 132
    const-string/jumbo v2, "visible"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSFragment;->setQsVisible(Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    .line 147
    .line 148
    .line 149
    const-string v2, "listening"

    .line 150
    .line 151
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 156
    .line 157
    .line 158
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 159
    .line 160
    if-eqz v2, :cond_0

    .line 161
    .line 162
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 163
    .line 164
    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 165
    .line 166
    invoke-interface {v2, p2}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 167
    .line 168
    .line 169
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 170
    .line 171
    new-instance v4, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;

    .line 172
    .line 173
    const/4 v5, 0x1

    .line 174
    invoke-direct {v4, p0, v5}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFragment;I)V

    .line 175
    .line 176
    .line 177
    new-instance v6, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    const/4 v7, 0x2

    .line 180
    invoke-direct {v6, p0, v7}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFragment;I)V

    .line 181
    .line 182
    .line 183
    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 184
    .line 185
    iget-object v8, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 186
    .line 187
    iget-object v9, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 188
    .line 189
    iget-object v10, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 190
    .line 191
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    iget-object v11, v2, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 195
    .line 196
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getSecQSFragmentAnimatorManager()Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    invoke-virtual {v12, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    .line 204
    .line 205
    .line 206
    if-eqz p2, :cond_1

    .line 207
    .line 208
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-ne p2, v5, :cond_1

    .line 213
    .line 214
    move p2, v5

    .line 215
    goto :goto_0

    .line 216
    :cond_1
    move p2, v3

    .line 217
    :goto_0
    if-eqz p2, :cond_2

    .line 218
    .line 219
    invoke-virtual {v12, v5}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->updatePanelExpanded(Z)V

    .line 220
    .line 221
    .line 222
    :cond_2
    iput-object v12, v7, Lcom/android/systemui/qs/SecQSPanelController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 223
    .line 224
    iput-object v12, v11, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 225
    .line 226
    new-instance p2, Lcom/android/systemui/qs/SecQSFragment$onViewCreated$1;

    .line 227
    .line 228
    invoke-direct {p2, v2}, Lcom/android/systemui/qs/SecQSFragment$onViewCreated$1;-><init>(Lcom/android/systemui/qs/SecQSFragment;)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v2, Lcom/android/systemui/qs/SecQSFragment;->quickBar:Lcom/android/systemui/qs/QuickBar;

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    iput-object v6, v12, Lcom/android/systemui/qs/bar/BarController;->mQSLastExpansionInitializer:Ljava/lang/Runnable;

    .line 241
    .line 242
    new-instance v6, Lcom/android/systemui/qs/bar/BarController$3;

    .line 243
    .line 244
    invoke-direct {v6, v12, p2, v4}, Lcom/android/systemui/qs/bar/BarController$3;-><init>(Lcom/android/systemui/qs/bar/BarController;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 245
    .line 246
    .line 247
    iput-object v6, v12, Lcom/android/systemui/qs/bar/BarController;->mBarListener:Lcom/android/systemui/qs/bar/BarController$3;

    .line 248
    .line 249
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    const v4, 0x7f0a0881

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    check-cast p2, Lcom/android/systemui/qs/SecQSPanel;

    .line 261
    .line 262
    iput-object p2, v12, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 263
    .line 264
    iget-object p2, p2, Lcom/android/systemui/qs/SecQSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    .line 265
    .line 266
    check-cast p2, Ljava/util/ArrayList;

    .line 267
    .line 268
    iget-object v4, v12, Lcom/android/systemui/qs/bar/BarController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/bar/BarController$2;

    .line 269
    .line 270
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    iget-object p2, v12, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 274
    .line 275
    new-instance v4, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;

    .line 276
    .line 277
    invoke-direct {v4, v12, v3}, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/qs/bar/BarController;I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v12}, Lcom/android/systemui/qs/bar/BarController;->updateBarUnderneathQqs()V

    .line 284
    .line 285
    .line 286
    iget-object p2, v12, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 287
    .line 288
    new-instance v4, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda8;

    .line 289
    .line 290
    invoke-direct {v4, v12, v3}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 294
    .line 295
    .line 296
    sget-object p2, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 297
    .line 298
    const-string v3, "BarController"

    .line 299
    .line 300
    invoke-virtual {p2, v3, v12}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    .line 301
    .line 302
    .line 303
    iget-object p2, v12, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 304
    .line 305
    check-cast p2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 306
    .line 307
    iget-object v3, v12, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitorCallback:Lcom/android/systemui/qs/bar/BarController$1;

    .line 308
    .line 309
    invoke-virtual {p2, v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 310
    .line 311
    .line 312
    iget-object p2, v12, Lcom/android/systemui/qs/bar/BarController;->mBarBackUpRestoreHelper:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    .line 313
    .line 314
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    new-instance v3, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;

    .line 318
    .line 319
    invoke-direct {v3, p2}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;-><init>(Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;)V

    .line 320
    .line 321
    .line 322
    iget-object p2, p2, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->qsBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 323
    .line 324
    const-string v4, "QuickPanelLayout"

    .line 325
    .line 326
    invoke-virtual {p2, v4, v3}, Lcom/android/systemui/qs/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;)V

    .line 327
    .line 328
    .line 329
    iput-object v12, v1, Lcom/android/systemui/qs/QuickBar;->barController:Lcom/android/systemui/qs/bar/BarController;

    .line 330
    .line 331
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSCinemaCompany()Lcom/android/systemui/qs/cinema/QSCinemaCompany;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    iput-object p2, v2, Lcom/android/systemui/qs/SecQSFragment;->qsCinemaFragmentAdapter:Lcom/android/systemui/qs/cinema/QSCinemaCompany;

    .line 339
    .line 340
    iget-object p2, v2, Lcom/android/systemui/qs/SecQSFragment;->quickPanel:Lcom/android/systemui/qs/QuickPanel;

    .line 341
    .line 342
    iget-object v1, p2, Lcom/android/systemui/qs/QuickPanel;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 343
    .line 344
    iput-object v1, v10, Lcom/android/systemui/qs/NonInterceptingScrollView;->mQsExpandSupplier:Ljava/util/function/BooleanSupplier;

    .line 345
    .line 346
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSButtonsContainerController()Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    iput-object v0, p2, Lcom/android/systemui/qs/QuickPanel;->qsButtonsContainerController:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    .line 351
    .line 352
    if-eqz v0, :cond_3

    .line 353
    .line 354
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 355
    .line 356
    .line 357
    goto :goto_1

    .line 358
    :cond_3
    const-string p2, "QuickPanel"

    .line 359
    .line 360
    const-string/jumbo v0, "onViewCreated: qsButtonsContainerController is null"

    .line 361
    .line 362
    .line 363
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    :goto_1
    iget-object p2, v2, Lcom/android/systemui/qs/SecQSFragment;->quickTile:Lcom/android/systemui/qs/QuickTile;

    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    const v0, 0x7f0a0851

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    check-cast v0, Lcom/android/systemui/qs/SecQSDetail;

    .line 379
    .line 380
    iput-object v0, p2, Lcom/android/systemui/qs/QuickTile;->secQSDetail:Lcom/android/systemui/qs/SecQSDetail;

    .line 381
    .line 382
    if-eqz v0, :cond_5

    .line 383
    .line 384
    iget-object v1, v11, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 385
    .line 386
    if-eqz v1, :cond_4

    .line 387
    .line 388
    iget-object v1, v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 389
    .line 390
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSDetail;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 391
    .line 392
    new-instance v3, Lcom/android/systemui/qs/SecQSDetail$5;

    .line 393
    .line 394
    invoke-direct {v3, v0}, Lcom/android/systemui/qs/SecQSDetail$5;-><init>(Lcom/android/systemui/qs/SecQSDetail;)V

    .line 395
    .line 396
    .line 397
    iput-object v3, v1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$5;

    .line 398
    .line 399
    :cond_4
    iput-object v7, v0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 400
    .line 401
    iput-object v9, v0, Lcom/android/systemui/qs/SecQSDetail;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 402
    .line 403
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 404
    .line 405
    iput-object v1, v7, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 406
    .line 407
    iput-object v1, v8, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 408
    .line 409
    iget-object p2, p2, Lcom/android/systemui/qs/QuickTile;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 410
    .line 411
    iput-object p2, v0, Lcom/android/systemui/qs/SecQSDetail;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 412
    .line 413
    iget-object p2, v0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    .line 414
    .line 415
    if-eqz p2, :cond_5

    .line 416
    .line 417
    iput-object v7, p2, Lcom/android/systemui/qs/SecQSDetailContentView;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 418
    .line 419
    :cond_5
    new-instance p2, Lcom/android/systemui/qs/SecQSFragment$onViewCreated$3;

    .line 420
    .line 421
    invoke-direct {p2, v2}, Lcom/android/systemui/qs/SecQSFragment$onViewCreated$3;-><init>(Lcom/android/systemui/qs/SecQSFragment;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 425
    .line 426
    .line 427
    const-class p2, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 428
    .line 429
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object p2

    .line 433
    check-cast p2, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 434
    .line 435
    iput-object v7, p2, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 436
    .line 437
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 438
    .line 439
    check-cast p2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 440
    .line 441
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 442
    .line 443
    .line 444
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 445
    .line 446
    check-cast p2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 447
    .line 448
    iget p2, p2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 449
    .line 450
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSFragment;->onStateChanged(I)V

    .line 451
    .line 452
    .line 453
    new-instance p2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda3;

    .line 454
    .line 455
    invoke-direct {p2, p0, v5}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSFragment;I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 459
    .line 460
    .line 461
    return-void
.end method

.method public final setCollapseExpandAction(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mCollapseExpandAction:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 8
    .line 9
    iput-object p1, v0, Lcom/android/systemui/qs/SecQSPanel;->mCollapseExpandAction:Ljava/lang/Runnable;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mCollapseExpandAction:Ljava/lang/Runnable;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    .line 17
    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanel;->mCollapseExpandAction:Ljava/lang/Runnable;

    .line 20
    .line 21
    return-void
.end method

.method public final setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 8
    .line 9
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsPanelControllerListening()V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 21
    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSFragment;->quickBar:Lcom/android/systemui/qs/QuickBar;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/systemui/qs/QuickBar;->barController:Lcom/android/systemui/qs/bar/BarController;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    invoke-direct {v2, p1, v3}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(ZI)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSFragment;->quickPanel:Lcom/android/systemui/qs/QuickPanel;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/systemui/qs/QuickPanel;->qsButtonsContainerController:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->setListening(ZZ)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p0, v0, Lcom/android/systemui/qs/SecQSFragment;->quickTile:Lcom/android/systemui/qs/QuickTile;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QuickTile;->secQSDetail:Lcom/android/systemui/qs/SecQSDetail;

    .line 53
    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsExpanded:Z

    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public final setFancyClipping(IIIIIZZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/android/systemui/qs/QSContainerImpl;

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    .line 14
    .line 15
    iget v1, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingLeftInset:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, p1, :cond_0

    .line 19
    .line 20
    iput p1, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingLeftInset:I

    .line 21
    .line 22
    move v1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget v3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    .line 26
    .line 27
    if-eq v3, p2, :cond_1

    .line 28
    .line 29
    iput p2, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    .line 30
    .line 31
    move v1, v2

    .line 32
    :cond_1
    iget v3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRightInset:I

    .line 33
    .line 34
    if-eq v3, p3, :cond_2

    .line 35
    .line 36
    iput p3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRightInset:I

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_2
    iget v3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    .line 40
    .line 41
    if-eq v3, p4, :cond_3

    .line 42
    .line 43
    iput p4, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    .line 44
    .line 45
    move v1, v2

    .line 46
    :cond_3
    iget-boolean v3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    .line 47
    .line 48
    if-eq v3, p6, :cond_4

    .line 49
    .line 50
    iput-boolean p6, v0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    .line 51
    .line 52
    move v1, v2

    .line 53
    :cond_4
    iget-boolean v3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mIsFullWidth:Z

    .line 54
    .line 55
    if-eq v3, p7, :cond_5

    .line 56
    .line 57
    iput-boolean p7, v0, Lcom/android/systemui/qs/QSContainerImpl;->mIsFullWidth:Z

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    move v2, v1

    .line 61
    :goto_1
    if-eqz v2, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateClippingPath()V

    .line 64
    .line 65
    .line 66
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 71
    .line 72
    if-eqz v0, :cond_7

    .line 73
    .line 74
    move v1, p1

    .line 75
    move v2, p2

    .line 76
    move v3, p3

    .line 77
    move v4, p4

    .line 78
    move v5, p5

    .line 79
    move v6, p6

    .line 80
    move v7, p7

    .line 81
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setFancyClipping(IIIIIZZ)V

    .line 82
    .line 83
    .line 84
    :cond_7
    return-void
.end method

.method public final setHasNotifications(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setHeaderClickable(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setHeaderListening(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mListening:Z

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mListening:Z

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setListening(Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 18
    .line 19
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSFragment;->quickBar:Lcom/android/systemui/qs/QuickBar;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/systemui/qs/QuickBar;->barController:Lcom/android/systemui/qs/bar/BarController;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v2, p1, v3}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(ZI)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSFragment;->quickPanel:Lcom/android/systemui/qs/QuickPanel;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/systemui/qs/QuickPanel;->qsButtonsContainerController:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->setListening(ZZ)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final setHeightOverride(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setInSplitShade(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateShowCollapsedOnKeyguard()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setIsNotificationPanelFullWidth(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mIsSmallScreen:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setListening(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsVisible:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    .line 16
    .line 17
    iget-boolean v3, v0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mListening:Z

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-boolean v2, v0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mListening:Z

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setListening(Z)V

    .line 27
    .line 28
    .line 29
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->updateState()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsPanelControllerListening()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 38
    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/systemui/qs/SecQSFragment;->quickBar:Lcom/android/systemui/qs/QuickBar;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/systemui/qs/QuickBar;->barController:Lcom/android/systemui/qs/bar/BarController;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance v3, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    .line 50
    .line 51
    invoke-direct {v3, p1, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(ZI)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSFragment;->quickPanel:Lcom/android/systemui/qs/QuickPanel;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/systemui/qs/QuickPanel;->qsButtonsContainerController:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->setListening(ZZ)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public final setOverScrollAmount(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mOverScrolling:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final setOverscrolling(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 4
    .line 5
    iput-boolean p1, v0, Lcom/android/systemui/qs/SecQSFragment;->stackScrollerOverscrolling:Z

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setStackScrollerOverscrolling(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setQsExpansion(FFFF)V
    .locals 10

    .line 1
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSFragment;->mIsSmallScreen:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    .line 11
    .line 12
    if-nez p3, :cond_1

    .line 13
    .line 14
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 15
    .line 16
    check-cast p3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 17
    .line 18
    iget p3, p3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    .line 19
    .line 20
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 21
    .line 22
    iput p1, p3, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 25
    .line 26
    .line 27
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    .line 28
    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    move p3, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const p3, 0x3dcccccd    # 0.1f

    .line 36
    .line 37
    .line 38
    :goto_1
    sub-float v1, p1, v0

    .line 39
    .line 40
    mul-float/2addr v1, p3

    .line 41
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 42
    .line 43
    move-object v2, p3

    .line 44
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 45
    .line 46
    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x1

    .line 50
    if-ne v2, v4, :cond_3

    .line 51
    .line 52
    move v2, v4

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move v2, v3

    .line 55
    :goto_2
    if-eqz v2, :cond_4

    .line 56
    .line 57
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    .line 58
    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    move v2, v4

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move v2, v3

    .line 64
    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    if-nez v5, :cond_8

    .line 68
    .line 69
    iget v5, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarState:I

    .line 70
    .line 71
    if-ne v5, v4, :cond_6

    .line 72
    .line 73
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    .line 74
    .line 75
    if-eqz v5, :cond_6

    .line 76
    .line 77
    check-cast p3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 78
    .line 79
    iget p3, p3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    .line 80
    .line 81
    if-ne p3, v4, :cond_5

    .line 82
    .line 83
    move p3, v4

    .line 84
    goto :goto_4

    .line 85
    :cond_5
    move p3, v3

    .line 86
    :goto_4
    if-nez p3, :cond_6

    .line 87
    .line 88
    move p3, v4

    .line 89
    goto :goto_5

    .line 90
    :cond_6
    move p3, v3

    .line 91
    :goto_5
    if-nez p3, :cond_8

    .line 92
    .line 93
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSFragment;->mOverScrolling:Z

    .line 94
    .line 95
    if-nez p3, :cond_8

    .line 96
    .line 97
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 98
    .line 99
    iget-object p3, p3, Lcom/android/systemui/qs/SecQSFragment;->expandImmediate:Ljava/util/function/BooleanSupplier;

    .line 100
    .line 101
    if-eqz p3, :cond_8

    .line 102
    .line 103
    invoke-interface {p3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-nez p3, :cond_8

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    if-eqz v2, :cond_7

    .line 114
    .line 115
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 116
    .line 117
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    int-to-float v5, v5

    .line 122
    mul-float/2addr v1, v5

    .line 123
    goto :goto_6

    .line 124
    :cond_7
    move v1, v6

    .line 125
    :goto_6
    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 126
    .line 127
    .line 128
    :cond_8
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 137
    .line 138
    cmpl-float v1, p1, v1

    .line 139
    .line 140
    if-nez v1, :cond_9

    .line 141
    .line 142
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    .line 143
    .line 144
    if-ne v1, v2, :cond_9

    .line 145
    .line 146
    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLastViewHeight:I

    .line 147
    .line 148
    if-ne v1, p3, :cond_9

    .line 149
    .line 150
    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    .line 151
    .line 152
    cmpl-float v1, v1, p4

    .line 153
    .line 154
    if-nez v1, :cond_9

    .line 155
    .line 156
    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLastPanelFraction:F

    .line 157
    .line 158
    cmpl-float v1, v1, p2

    .line 159
    .line 160
    if-nez v1, :cond_9

    .line 161
    .line 162
    return-void

    .line 163
    :cond_9
    iput p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastPanelFraction:F

    .line 164
    .line 165
    iput p4, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    .line 166
    .line 167
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 168
    .line 169
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    .line 170
    .line 171
    iput p3, p0, Lcom/android/systemui/qs/QSFragment;->mLastViewHeight:I

    .line 172
    .line 173
    cmpl-float p2, p1, v0

    .line 174
    .line 175
    if-nez p2, :cond_a

    .line 176
    .line 177
    move p2, v4

    .line 178
    goto :goto_7

    .line 179
    :cond_a
    move p2, v3

    .line 180
    :goto_7
    cmpl-float p3, p1, v6

    .line 181
    .line 182
    if-nez p3, :cond_b

    .line 183
    .line 184
    move p3, v4

    .line 185
    goto :goto_8

    .line 186
    :cond_b
    move p3, v3

    .line 187
    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getHeightDiff()I

    .line 188
    .line 189
    .line 190
    move-result p4

    .line 191
    int-to-float v1, p4

    .line 192
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 193
    .line 194
    iget-object v5, v2, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 195
    .line 196
    iget-object v5, v5, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 197
    .line 198
    if-eqz v5, :cond_c

    .line 199
    .line 200
    invoke-virtual {v5, p2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setFullyExpanded(Z)V

    .line 201
    .line 202
    .line 203
    :cond_c
    iget-object v2, v2, Lcom/android/systemui/qs/SecQSFragment;->quickBar:Lcom/android/systemui/qs/QuickBar;

    .line 204
    .line 205
    iget-object v2, v2, Lcom/android/systemui/qs/QuickBar;->barController:Lcom/android/systemui/qs/bar/BarController;

    .line 206
    .line 207
    if-eqz v2, :cond_10

    .line 208
    .line 209
    iget-boolean v5, v2, Lcom/android/systemui/qs/bar/BarController;->mQsFullyExpanded:Z

    .line 210
    .line 211
    if-ne v5, p2, :cond_d

    .line 212
    .line 213
    goto :goto_9

    .line 214
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string/jumbo v7, "setQsFullyExpanded(): mQsFullyExpanded: "

    .line 217
    .line 218
    .line 219
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-boolean v7, v2, Lcom/android/systemui/qs/bar/BarController;->mQsFullyExpanded:Z

    .line 223
    .line 224
    const-string v8, "fullyExpanded: "

    .line 225
    .line 226
    const-string v9, "BarController"

    .line 227
    .line 228
    invoke-static {v5, v7, v8, p2, v9}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v5, v2, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 232
    .line 233
    new-instance v7, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    .line 234
    .line 235
    invoke-direct {v7, p2, v3}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(ZI)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 239
    .line 240
    .line 241
    iput-boolean p2, v2, Lcom/android/systemui/qs/bar/BarController;->mQsFullyExpanded:Z

    .line 242
    .line 243
    :goto_9
    iget-object v5, v2, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 244
    .line 245
    new-instance v7, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda2;

    .line 246
    .line 247
    invoke-direct {v7, p1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda2;-><init>(F)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 251
    .line 252
    .line 253
    cmpg-float v5, v6, p1

    .line 254
    .line 255
    if-gtz v5, :cond_e

    .line 256
    .line 257
    cmpg-float v0, p1, v0

    .line 258
    .line 259
    if-gez v0, :cond_e

    .line 260
    .line 261
    mul-float/2addr v1, p1

    .line 262
    float-to-int v0, v1

    .line 263
    iget-object v1, v2, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 264
    .line 265
    new-instance v5, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;

    .line 266
    .line 267
    invoke-direct {v5, v0}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 271
    .line 272
    .line 273
    :cond_e
    if-gez p4, :cond_10

    .line 274
    .line 275
    iget-object p4, v2, Lcom/android/systemui/qs/bar/BarController;->mQSLastExpansionInitializer:Ljava/lang/Runnable;

    .line 276
    .line 277
    if-nez p4, :cond_f

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_f
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 281
    .line 282
    .line 283
    :goto_a
    move p4, v4

    .line 284
    goto :goto_b

    .line 285
    :cond_10
    move p4, v3

    .line 286
    :goto_b
    if-eqz p4, :cond_11

    .line 287
    .line 288
    return-void

    .line 289
    :cond_11
    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 290
    .line 291
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 295
    .line 296
    iget-object p4, p4, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 297
    .line 298
    invoke-interface {p4, p1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->setExpansion(F)V

    .line 299
    .line 300
    .line 301
    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 302
    .line 303
    iget-object p4, p4, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 304
    .line 305
    invoke-interface {p4, p1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->setExpansion(F)V

    .line 306
    .line 307
    .line 308
    if-eqz p3, :cond_12

    .line 309
    .line 310
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 311
    .line 312
    invoke-virtual {p3, v3}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 313
    .line 314
    .line 315
    :cond_12
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 316
    .line 317
    iget-object p3, p3, Lcom/android/systemui/qs/SecQSFragment;->quickTile:Lcom/android/systemui/qs/QuickTile;

    .line 318
    .line 319
    iget-object p3, p3, Lcom/android/systemui/qs/QuickTile;->secQSDetail:Lcom/android/systemui/qs/SecQSDetail;

    .line 320
    .line 321
    if-eqz p3, :cond_13

    .line 322
    .line 323
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->invalidate()V

    .line 324
    .line 325
    .line 326
    :cond_13
    if-nez p2, :cond_14

    .line 327
    .line 328
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    .line 329
    .line 330
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 331
    .line 332
    invoke-virtual {p3}, Landroid/widget/ScrollView;->getTranslationY()F

    .line 333
    .line 334
    .line 335
    move-result p3

    .line 336
    neg-float p3, p3

    .line 337
    float-to-int p3, p3

    .line 338
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 339
    .line 340
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    .line 341
    .line 342
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 343
    .line 344
    invoke-virtual {p3}, Landroid/widget/ScrollView;->getWidth()I

    .line 345
    .line 346
    .line 347
    move-result p3

    .line 348
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 349
    .line 350
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    .line 351
    .line 352
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 353
    .line 354
    invoke-virtual {p3}, Landroid/widget/ScrollView;->getHeight()I

    .line 355
    .line 356
    .line 357
    move-result p3

    .line 358
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 359
    .line 360
    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsBounds()V

    .line 361
    .line 362
    .line 363
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSSquishinessController:Lcom/android/systemui/qs/QSSquishinessController;

    .line 364
    .line 365
    if-eqz p2, :cond_17

    .line 366
    .line 367
    iget p3, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    .line 368
    .line 369
    iget p4, p2, Lcom/android/systemui/qs/QSSquishinessController;->squishiness:F

    .line 370
    .line 371
    cmpg-float p4, p4, p3

    .line 372
    .line 373
    if-nez p4, :cond_15

    .line 374
    .line 375
    move v3, v4

    .line 376
    :cond_15
    if-eqz v3, :cond_16

    .line 377
    .line 378
    goto :goto_c

    .line 379
    :cond_16
    iput p3, p2, Lcom/android/systemui/qs/QSSquishinessController;->squishiness:F

    .line 380
    .line 381
    :cond_17
    :goto_c
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 382
    .line 383
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 384
    .line 385
    iget-object p2, p2, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 386
    .line 387
    if-eqz p2, :cond_18

    .line 388
    .line 389
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setQsExpansionPosition(F)V

    .line 390
    .line 391
    .line 392
    :cond_18
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFragment;->qsCinemaFragmentAdapter:Lcom/android/systemui/qs/cinema/QSCinemaCompany;

    .line 393
    .line 394
    if-eqz p0, :cond_19

    .line 395
    .line 396
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mDirector:Lcom/android/systemui/qs/cinema/QSCinemaDirector;

    .line 397
    .line 398
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    :cond_19
    return-void
.end method

.method public final setQsVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsVisible:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsVisible:Z

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->updateState()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setScrollListener(Lcom/android/systemui/plugins/qs/QS$ScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setTransitionToFullShadeProgress(ZFF)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateShowCollapsedOnKeyguard()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput p2, p0, Lcom/android/systemui/qs/QSFragment;->mLockscreenToShadeProgress:F

    .line 11
    .line 12
    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 13
    .line 14
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastPanelFraction:F

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget p3, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    .line 20
    .line 21
    :goto_0
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FFFF)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public updateQsBounds()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f070cc1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    mul-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    neg-int v2, v0

    .line 25
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v3, v0

    .line 32
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mLocationTemp:[I

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final updateQsPanelControllerListening()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsVisible:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v3

    .line 16
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v2, v3

    .line 27
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setListening(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final updateQsState()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    move v0, v2

    .line 26
    :goto_1
    if-eqz v0, :cond_4

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 29
    .line 30
    iget-boolean v3, v0, Lcom/android/systemui/qs/SecQSFragment;->stackScrollerOverscrolling:Z

    .line 31
    .line 32
    if-nez v3, :cond_4

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSFragment;->quickTile:Lcom/android/systemui/qs/QuickTile;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/systemui/qs/QuickTile;->secQSDetail:Lcom/android/systemui/qs/SecQSDetail;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    move v0, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    move v0, v1

    .line 49
    :goto_2
    if-eqz v0, :cond_5

    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSFragment;->expandImmediate:Ljava/util/function/BooleanSupplier;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    :cond_5
    move v0, v2

    .line 64
    goto :goto_3

    .line 65
    :cond_6
    move v0, v1

    .line 66
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 67
    .line 68
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setExpanded(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 74
    .line 75
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 76
    .line 77
    iget v3, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    .line 78
    .line 79
    if-ne v3, v2, :cond_7

    .line 80
    .line 81
    move v3, v2

    .line 82
    goto :goto_4

    .line 83
    :cond_7
    move v3, v1

    .line 84
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 85
    .line 86
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 87
    .line 88
    const/4 v6, 0x4

    .line 89
    if-nez v5, :cond_9

    .line 90
    .line 91
    if-eqz v3, :cond_9

    .line 92
    .line 93
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 94
    .line 95
    if-nez v5, :cond_9

    .line 96
    .line 97
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    .line 98
    .line 99
    if-eqz v5, :cond_8

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_8
    move v5, v6

    .line 103
    goto :goto_6

    .line 104
    :cond_9
    :goto_5
    move v5, v1

    .line 105
    :goto_6
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 109
    .line 110
    if-eqz v3, :cond_a

    .line 111
    .line 112
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 113
    .line 114
    if-nez v3, :cond_a

    .line 115
    .line 116
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    .line 117
    .line 118
    if-eqz v3, :cond_b

    .line 119
    .line 120
    :cond_a
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 121
    .line 122
    if-eqz v3, :cond_c

    .line 123
    .line 124
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    .line 125
    .line 126
    if-nez v3, :cond_c

    .line 127
    .line 128
    :cond_b
    move v3, v2

    .line 129
    goto :goto_7

    .line 130
    :cond_c
    move v3, v1

    .line 131
    :goto_7
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 132
    .line 133
    iget-boolean v7, v4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    .line 134
    .line 135
    if-ne v7, v3, :cond_d

    .line 136
    .line 137
    goto :goto_8

    .line 138
    :cond_d
    iput-boolean v3, v4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    .line 139
    .line 140
    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/SecQuickQSPanelController;->setExpanded(Z)V

    .line 141
    .line 142
    .line 143
    :goto_8
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    .line 144
    .line 145
    if-nez v3, :cond_e

    .line 146
    .line 147
    if-eqz v0, :cond_e

    .line 148
    .line 149
    goto :goto_9

    .line 150
    :cond_e
    move v2, v1

    .line 151
    :goto_9
    if-eqz v2, :cond_f

    .line 152
    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 154
    .line 155
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 156
    .line 157
    if-eqz v2, :cond_10

    .line 158
    .line 159
    move v6, v1

    .line 160
    :cond_10
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 161
    .line 162
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 163
    .line 164
    invoke-virtual {v0, v6}, Lcom/android/systemui/qs/SecQSPanel;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 168
    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 170
    .line 171
    iget-object v2, v0, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 172
    .line 173
    iget-object v3, v2, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 174
    .line 175
    if-eqz v3, :cond_11

    .line 176
    .line 177
    iget-object v2, v2, Lcom/android/systemui/qs/QuickAnimation;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 178
    .line 179
    invoke-interface {v2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setQsExpanded(Z)V

    .line 184
    .line 185
    .line 186
    :cond_11
    iget-object v2, v0, Lcom/android/systemui/qs/SecQSFragment;->quickBar:Lcom/android/systemui/qs/QuickBar;

    .line 187
    .line 188
    iget-object v3, v2, Lcom/android/systemui/qs/QuickBar;->barController:Lcom/android/systemui/qs/bar/BarController;

    .line 189
    .line 190
    if-eqz v3, :cond_12

    .line 191
    .line 192
    iget-object v2, v2, Lcom/android/systemui/qs/QuickBar;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    iget-object v3, v3, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 199
    .line 200
    new-instance v4, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    .line 201
    .line 202
    const/4 v5, 0x2

    .line 203
    invoke-direct {v4, v2, v5}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(ZI)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 207
    .line 208
    .line 209
    :cond_12
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSFragment;->quickTile:Lcom/android/systemui/qs/QuickTile;

    .line 210
    .line 211
    iget-object v0, v0, Lcom/android/systemui/qs/QuickTile;->secQSDetail:Lcom/android/systemui/qs/SecQSDetail;

    .line 212
    .line 213
    if-eqz v0, :cond_13

    .line 214
    .line 215
    if-nez p0, :cond_13

    .line 216
    .line 217
    iput-boolean v1, v0, Lcom/android/systemui/qs/SecQSDetail;->mTriggeredExpand:Z

    .line 218
    .line 219
    :cond_13
    return-void
.end method

.method public final updateShowCollapsedOnKeyguard()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v2

    .line 23
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    .line 24
    .line 25
    if-eq v0, v3, :cond_3

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 30
    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 35
    .line 36
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 37
    .line 38
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    .line 39
    .line 40
    if-ne v0, v2, :cond_2

    .line 41
    .line 42
    move v1, v2

    .line 43
    :cond_2
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 46
    .line 47
    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLastPanelFraction:F

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    iget v3, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    .line 51
    .line 52
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FFFF)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method
