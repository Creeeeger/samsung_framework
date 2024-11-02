.class public final Lcom/android/systemui/qs/animator/QsExpandAnimator;
.super Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final mAllViews:Ljava/util/ArrayList;

.field public mAnimatorForListener:Lcom/android/systemui/qs/TouchAnimator;

.field public final mBarController:Lcom/android/systemui/qs/bar/BarController;

.field public mBatteryIcon:Landroid/view/View;

.field public mBottomLargeTileBar:Lcom/android/systemui/qs/bar/BottomLargeTileBar;

.field public mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

.field public mButtonContainer:Landroid/view/View;

.field public mCarrier1:Landroid/view/View;

.field public mCarrier2:Landroid/view/View;

.field public mCarrier3:Landroid/view/View;

.field public final mCarriers:Ljava/util/ArrayList;

.field public mClockButtonContainer:Landroid/view/View;

.field public mClockDateContainer:Landroid/view/View;

.field public mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

.field public final mContext:Landroid/content/Context;

.field public mDate:Landroid/widget/TextView;

.field public mDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mDateWidthDetector:Lcom/android/systemui/qs/animator/QsExpandAnimator$1;

.field public mEditContainer:Landroid/view/View;

.field public mExpandedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

.field public mForceUpdate:Z

.field public mHeader:Landroid/view/View;

.field public mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mHeaderBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mHeaderDateSettingContainer:Landroid/view/View;

.field public mHost:Lcom/android/systemui/qs/QSHost;

.field public mIsDateButtonOverlapped:Z

.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public mLastPosition:F

.field public mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

.field public mMultiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

.field public mMumContainer:Landroid/view/View;

.field public mNetworkSpeedContainer:Landroid/view/View;

.field public mOnExpandImmediate:Z

.field public mOnFirstPage:Z

.field public mOrientation:I

.field public mPagedTileLayoutBar:Lcom/android/systemui/qs/bar/PagedTileLayoutBar;

.field public mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPanelBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPanelYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPlmn:Landroid/view/View;

.field public mPowerContainer:Landroid/view/View;

.field public mPrivacyContainer:Landroid/view/View;

.field public mQSScrollView:Landroid/widget/ScrollView;

.field public mQsButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

.field public final mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public mQsRootPanel:Landroid/view/View;

.field public mQuickQSPanelTileContainer:Landroid/view/View;

.field public mQuickQsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mSecurityFooterBar:Lcom/android/systemui/qs/bar/SecurityFooterBar;

.field public mSettingContainer:Landroid/view/View;

.field public mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public mShadeHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mShadeHeaderClock:Landroid/view/View;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public mShadeHeaderExpandImmediateAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mStackScrollLayoutAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mSystemIcon:Landroid/view/View;

.field public final mTileAnimatorBuilders:Ljava/util/ArrayList;

.field public final mTileAnimators:Ljava/util/ArrayList;

.field public mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field public mTopLargeTileBar:Lcom/android/systemui/qs/bar/TopLargeTileBar;

.field public final mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$2;

.field public mVideoCallMicModeBar:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/keyguard/KeyguardEditModeController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnFirstPage:Z

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastPosition:F

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mForceUpdate:Z

    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarriers:Ljava/util/ArrayList;

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mIsDateButtonOverlapped:Z

    .line 44
    .line 45
    new-instance v0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;-><init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDateWidthDetector:Lcom/android/systemui/qs/animator/QsExpandAnimator$1;

    .line 51
    .line 52
    new-instance v0, Lcom/android/systemui/qs/animator/QsExpandAnimator$2;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator$2;-><init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$2;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 62
    .line 63
    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 64
    .line 65
    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 66
    .line 67
    iput-object p5, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 68
    .line 69
    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final clearAnimationState()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isDetailVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsFullyExpanded:Z

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    .line 19
    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :goto_1
    if-ge v1, v0, :cond_9

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/util/Pair;

    .line 39
    .line 40
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 41
    .line 42
    const-string/jumbo v5, "view_visible_always"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/high16 v5, 0x3f800000    # 1.0f

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v4, Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    const-string/jumbo v6, "view_visible_expanded_state"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const/4 v6, 0x0

    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Landroid/view/View;

    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    move v7, v5

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    move v7, v6

    .line 81
    :goto_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 82
    .line 83
    .line 84
    :cond_5
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 85
    .line 86
    const-string/jumbo v7, "view_visible_collapsed_state"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_7

    .line 94
    .line 95
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v4, Landroid/view/View;

    .line 98
    .line 99
    if-eqz v2, :cond_6

    .line 100
    .line 101
    move v5, v6

    .line 102
    :cond_6
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 103
    .line 104
    .line 105
    :cond_7
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 106
    .line 107
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 108
    .line 109
    if-nez v5, :cond_8

    .line 110
    .line 111
    check-cast v4, Landroid/view/View;

    .line 112
    .line 113
    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 114
    .line 115
    .line 116
    :cond_8
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v3, Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_9
    return-void
.end method

.method public final destroyQSViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 17
    .line 18
    instance-of v2, v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "QsExpandAnimator"

    .line 32
    .line 33
    const-string v2, "QS Not using page layout"

    .line 34
    .line 35
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockDateContainer:Landroid/view/View;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDateWidthDetector:Lcom/android/systemui/qs/animator/QsExpandAnimator$1;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPlmn:Landroid/view/View;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSettingContainer:Landroid/view/View;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mEditContainer:Landroid/view/View;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    .line 83
    .line 84
    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "QsExpandAnimator ============================================= "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/util/Pair;

    .line 28
    .line 29
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Landroid/view/View;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v4, "  "

    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, " "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " :  alpha = "

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, " translationY = "

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, " visibility = "

    .line 88
    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    const-string p0, "============================================================== "

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    return-object v0
.end method

.method public final getBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_1
    const-string p0, "expand_anim"

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final isThereNoView()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public final onAnimationAtEnd()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQuickQSPanel;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final onAnimationAtStart()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickQSPanel;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onAnimationStarted()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQuickQSPanel;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOrientation:I

    .line 2
    .line 3
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    .line 8
    .line 9
    new-instance v1, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda3;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 18
    .line 19
    iput p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOrientation:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isDetailVisible()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mDetailTriggeredExpand:Z

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mForceUpdate:Z

    .line 33
    .line 34
    iget p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastPosition:F

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setQsExpansionPosition(F)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelHeight(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$2;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onPanelClosed()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setQsExpansionPosition(F)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget v0, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 28
    .line 29
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderExpandImmediateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method

.method public final onRtlChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    .line 2
    .line 3
    return-void
.end method

.method public final onTilesChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$2;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "brightness_on_top"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const-class p2, Lcom/android/systemui/tuner/TunerService;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string/jumbo p2, "qspanel_media_quickcontrol_bar_available"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string/jumbo p2, "qspanel_media_quickcontrol_bar_available_on_top"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 13
    .line 14
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setFancyClipping(IIIIIZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sub-int/2addr p2, p1

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    sub-int/2addr p1, p2

    .line 26
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iget-object p3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    sub-int/2addr p2, p3

    .line 39
    iget-object p3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    sub-int p3, p2, p3

    .line 46
    .line 47
    sub-int p3, p2, p3

    .line 48
    .line 49
    sub-int/2addr p1, p2

    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-float p1, p1

    .line 56
    int-to-float p3, p3

    .line 57
    div-float/2addr p1, p3

    .line 58
    const/high16 p3, 0x3f800000    # 1.0f

    .line 59
    .line 60
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget-object p3, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 65
    .line 66
    const/4 p4, 0x1

    .line 67
    const/4 p5, 0x4

    .line 68
    const/4 p6, 0x0

    .line 69
    if-eqz p3, :cond_4

    .line 70
    .line 71
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 72
    .line 73
    iget p3, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 74
    .line 75
    if-lez p3, :cond_2

    .line 76
    .line 77
    move p3, p4

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    move p3, p2

    .line 80
    :goto_0
    if-eqz p3, :cond_4

    .line 81
    .line 82
    iget-object p3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderClock:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 85
    .line 86
    .line 87
    iget-object p3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderClock:Landroid/view/View;

    .line 88
    .line 89
    cmpl-float p4, p1, p6

    .line 90
    .line 91
    if-lez p4, :cond_3

    .line 92
    .line 93
    move p5, p2

    .line 94
    :cond_3
    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarriers:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    new-instance p3, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    invoke-direct {p3, p2}, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    new-instance p2, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    invoke-direct {p2, p1}, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda1;-><init>(F)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderClock:Landroid/view/View;

    .line 122
    .line 123
    invoke-virtual {p1, p6}, Landroid/view/View;->setAlpha(F)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderClock:Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarriers:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    new-instance p1, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    invoke-direct {p1, p4}, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    new-instance p1, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda2;

    .line 147
    .line 148
    invoke-direct {p1}, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda2;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    return-void
.end method

.method public final setFullyExpanded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsFullyExpanded:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$2;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->destroyQSViews()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateViews()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$2;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setQsExpansionPosition(F)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_12

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mAnimatorsInitialiezed:Z

    .line 8
    .line 9
    if-eqz v0, :cond_12

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_12

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandedByNotiOverScroll:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimatorForListener:Lcom/android/systemui/qs/TouchAnimator;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 26
    .line 27
    .line 28
    iput p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastPosition:F

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 41
    .line 42
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x1

    .line 46
    const/high16 v3, 0x3f800000    # 1.0f

    .line 47
    .line 48
    if-ne v0, v2, :cond_2

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 67
    .line 68
    .line 69
    move p1, v3

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    move v2, v1

    .line 104
    :cond_5
    :goto_0
    if-nez v2, :cond_6

    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 109
    .line 110
    .line 111
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 112
    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    move p1, v3

    .line 122
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 127
    .line 128
    iget-boolean v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mForceUpdate:Z

    .line 134
    .line 135
    if-nez v0, :cond_a

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isDetailVisible()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 144
    .line 145
    if-eqz p0, :cond_9

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 148
    .line 149
    .line 150
    :cond_9
    return-void

    .line 151
    :cond_a
    move v3, p1

    .line 152
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 153
    .line 154
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_b

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lcom/android/systemui/qs/TouchAnimator;

    .line 174
    .line 175
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 180
    .line 181
    if-eqz p1, :cond_c

    .line 182
    .line 183
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 184
    .line 185
    .line 186
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 187
    .line 188
    if-eqz p1, :cond_d

    .line 189
    .line 190
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 191
    .line 192
    .line 193
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 194
    .line 195
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 199
    .line 200
    if-eqz p1, :cond_e

    .line 201
    .line 202
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 203
    .line 204
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 205
    .line 206
    .line 207
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 208
    .line 209
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_f

    .line 216
    .line 217
    const-string p1, "QsExpandAnimator"

    .line 218
    .line 219
    const-string v0, "keyguard edit vi running"

    .line 220
    .line 221
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mStackScrollLayoutAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 226
    .line 227
    if-eqz p1, :cond_10

    .line 228
    .line 229
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 230
    .line 231
    .line 232
    :cond_10
    :goto_4
    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mIsDateButtonOverlapped:Z

    .line 233
    .line 234
    if-eqz p1, :cond_11

    .line 235
    .line 236
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 237
    .line 238
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 239
    .line 240
    .line 241
    :cond_11
    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mForceUpdate:Z

    .line 242
    .line 243
    :cond_12
    :goto_5
    return-void
.end method

.method public final updateAnimators()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->clearAnimationState()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateViews()V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p0, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimatorForListener:Lcom/android/systemui/qs/TouchAnimator;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x1

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 57
    .line 58
    const-string v2, "brightness_on_top"

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const v2, 0x7f070348

    .line 68
    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    const/high16 v4, 0x3f000000    # 0.5f

    .line 72
    .line 73
    const-string/jumbo v5, "translationY"

    .line 74
    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    const-string v7, "alpha"

    .line 78
    .line 79
    const/4 v8, 0x2

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 84
    .line 85
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    .line 89
    .line 90
    new-array v10, v8, [F

    .line 91
    .line 92
    fill-array-data v10, :array_0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v9, v7, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 96
    .line 97
    .line 98
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    .line 99
    .line 100
    new-array v10, v8, [F

    .line 101
    .line 102
    aput v3, v10, v6

    .line 103
    .line 104
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    int-to-float v2, v2

    .line 115
    aput v2, v10, v1

    .line 116
    .line 117
    invoke-virtual {v0, v9, v5, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 118
    .line 119
    .line 120
    iput v4, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 127
    .line 128
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const v2, 0x3e99999a    # 0.3f

    .line 133
    .line 134
    .line 135
    const-string/jumbo v9, "view_visible_collapsed_state"

    .line 136
    .line 137
    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 143
    .line 144
    new-instance v10, Landroid/util/Pair;

    .line 145
    .line 146
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    .line 147
    .line 148
    invoke-direct {v10, v9, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 155
    .line 156
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 160
    .line 161
    new-array v11, v8, [F

    .line 162
    .line 163
    fill-array-data v11, :array_1

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v10, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 167
    .line 168
    .line 169
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 170
    .line 171
    new-array v11, v8, [F

    .line 172
    .line 173
    fill-array-data v11, :array_2

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v10, v5, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 177
    .line 178
    .line 179
    iput v4, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 186
    .line 187
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 188
    .line 189
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 190
    .line 191
    .line 192
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 193
    .line 194
    new-array v11, v8, [F

    .line 195
    .line 196
    fill-array-data v11, :array_3

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v10, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 200
    .line 201
    .line 202
    iput v2, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderExpandImmediateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 211
    .line 212
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-static {v10}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQQSPanelSidePadding(Landroid/content/Context;)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    invoke-static {v10}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    if-ne v10, v1, :cond_4

    .line 228
    .line 229
    mul-int/lit8 v0, v0, -0x1

    .line 230
    .line 231
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    .line 232
    .line 233
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    .line 242
    .line 243
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQSScrollView:Landroid/widget/ScrollView;

    .line 244
    .line 245
    invoke-virtual {v10, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    if-nez v10, :cond_5

    .line 250
    .line 251
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQSScrollView:Landroid/widget/ScrollView;

    .line 252
    .line 253
    const/4 v11, -0x1

    .line 254
    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    .line 255
    .line 256
    .line 257
    :cond_5
    new-instance v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 258
    .line 259
    invoke-direct {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 260
    .line 261
    .line 262
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPlmn:Landroid/view/View;

    .line 263
    .line 264
    new-array v12, v8, [F

    .line 265
    .line 266
    fill-array-data v12, :array_4

    .line 267
    .line 268
    .line 269
    invoke-virtual {v10, v11, v7, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 270
    .line 271
    .line 272
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPlmn:Landroid/view/View;

    .line 273
    .line 274
    new-array v12, v8, [F

    .line 275
    .line 276
    aput v3, v12, v6

    .line 277
    .line 278
    neg-int v13, v0

    .line 279
    int-to-float v13, v13

    .line 280
    aput v13, v12, v1

    .line 281
    .line 282
    const-string/jumbo v14, "translationX"

    .line 283
    .line 284
    .line 285
    invoke-virtual {v10, v11, v14, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 286
    .line 287
    .line 288
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNetworkSpeedContainer:Landroid/view/View;

    .line 289
    .line 290
    new-array v12, v8, [F

    .line 291
    .line 292
    aput v3, v12, v6

    .line 293
    .line 294
    int-to-float v0, v0

    .line 295
    aput v0, v12, v1

    .line 296
    .line 297
    invoke-virtual {v10, v11, v14, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 298
    .line 299
    .line 300
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSystemIcon:Landroid/view/View;

    .line 301
    .line 302
    new-array v12, v8, [F

    .line 303
    .line 304
    aput v3, v12, v6

    .line 305
    .line 306
    aput v0, v12, v1

    .line 307
    .line 308
    invoke-virtual {v10, v11, v14, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 309
    .line 310
    .line 311
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBatteryIcon:Landroid/view/View;

    .line 312
    .line 313
    new-array v12, v8, [F

    .line 314
    .line 315
    aput v3, v12, v6

    .line 316
    .line 317
    aput v0, v12, v1

    .line 318
    .line 319
    invoke-virtual {v10, v11, v14, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 320
    .line 321
    .line 322
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPrivacyContainer:Landroid/view/View;

    .line 323
    .line 324
    new-array v12, v8, [F

    .line 325
    .line 326
    aput v3, v12, v6

    .line 327
    .line 328
    aput v0, v12, v1

    .line 329
    .line 330
    invoke-virtual {v10, v11, v14, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 331
    .line 332
    .line 333
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockDateContainer:Landroid/view/View;

    .line 334
    .line 335
    new-array v12, v8, [F

    .line 336
    .line 337
    aput v0, v12, v6

    .line 338
    .line 339
    aput v3, v12, v1

    .line 340
    .line 341
    invoke-virtual {v10, v11, v14, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 342
    .line 343
    .line 344
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSettingContainer:Landroid/view/View;

    .line 345
    .line 346
    new-array v11, v8, [F

    .line 347
    .line 348
    aput v13, v11, v6

    .line 349
    .line 350
    aput v3, v11, v1

    .line 351
    .line 352
    invoke-virtual {v10, v0, v14, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    .line 356
    .line 357
    new-array v11, v8, [F

    .line 358
    .line 359
    aput v13, v11, v6

    .line 360
    .line 361
    aput v3, v11, v1

    .line 362
    .line 363
    invoke-virtual {v10, v0, v14, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 364
    .line 365
    .line 366
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mEditContainer:Landroid/view/View;

    .line 367
    .line 368
    new-array v11, v8, [F

    .line 369
    .line 370
    aput v13, v11, v6

    .line 371
    .line 372
    aput v3, v11, v1

    .line 373
    .line 374
    invoke-virtual {v10, v0, v14, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 375
    .line 376
    .line 377
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    .line 378
    .line 379
    new-array v11, v8, [F

    .line 380
    .line 381
    aput v13, v11, v6

    .line 382
    .line 383
    aput v3, v11, v1

    .line 384
    .line 385
    invoke-virtual {v10, v0, v14, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 393
    .line 394
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 395
    .line 396
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 397
    .line 398
    .line 399
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDate:Landroid/widget/TextView;

    .line 400
    .line 401
    new-array v11, v8, [F

    .line 402
    .line 403
    fill-array-data v11, :array_5

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v10, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 407
    .line 408
    .line 409
    iput v4, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 410
    .line 411
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 416
    .line 417
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    const-string/jumbo v10, "view_visible_expanded_state"

    .line 422
    .line 423
    .line 424
    if-eqz v0, :cond_6

    .line 425
    .line 426
    goto/16 :goto_3

    .line 427
    .line 428
    :cond_6
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 429
    .line 430
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 431
    .line 432
    .line 433
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    .line 434
    .line 435
    new-array v12, v8, [F

    .line 436
    .line 437
    fill-array-data v12, :array_6

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0, v11, v7, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 441
    .line 442
    .line 443
    iput v2, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 450
    .line 451
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 452
    .line 453
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 454
    .line 455
    .line 456
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    .line 457
    .line 458
    new-array v11, v8, [F

    .line 459
    .line 460
    iget-object v12, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 461
    .line 462
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 463
    .line 464
    .line 465
    move-result v12

    .line 466
    neg-int v12, v12

    .line 467
    int-to-float v12, v12

    .line 468
    const v13, 0x3e4ccccd    # 0.2f

    .line 469
    .line 470
    .line 471
    mul-float/2addr v12, v13

    .line 472
    aput v12, v11, v6

    .line 473
    .line 474
    aput v3, v11, v1

    .line 475
    .line 476
    invoke-virtual {v0, v2, v5, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 477
    .line 478
    .line 479
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 480
    .line 481
    new-array v11, v8, [F

    .line 482
    .line 483
    iget-object v12, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 484
    .line 485
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 486
    .line 487
    .line 488
    move-result v12

    .line 489
    neg-int v12, v12

    .line 490
    int-to-float v12, v12

    .line 491
    mul-float/2addr v12, v13

    .line 492
    aput v12, v11, v6

    .line 493
    .line 494
    aput v3, v11, v1

    .line 495
    .line 496
    invoke-virtual {v0, v2, v5, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 504
    .line 505
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 506
    .line 507
    new-instance v1, Landroid/util/Pair;

    .line 508
    .line 509
    const-string/jumbo v2, "view_visible_always"

    .line 510
    .line 511
    .line 512
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 513
    .line 514
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 521
    .line 522
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 523
    .line 524
    .line 525
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    .line 526
    .line 527
    new-array v2, v8, [F

    .line 528
    .line 529
    fill-array-data v2, :array_7

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 533
    .line 534
    .line 535
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mEditContainer:Landroid/view/View;

    .line 536
    .line 537
    new-array v2, v8, [F

    .line 538
    .line 539
    fill-array-data v2, :array_8

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 543
    .line 544
    .line 545
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    .line 546
    .line 547
    new-array v2, v8, [F

    .line 548
    .line 549
    fill-array-data v2, :array_9

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 553
    .line 554
    .line 555
    iput v4, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 556
    .line 557
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 562
    .line 563
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 564
    .line 565
    new-instance v1, Landroid/util/Pair;

    .line 566
    .line 567
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    .line 568
    .line 569
    invoke-direct {v1, v10, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 576
    .line 577
    new-instance v1, Landroid/util/Pair;

    .line 578
    .line 579
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mEditContainer:Landroid/view/View;

    .line 580
    .line 581
    invoke-direct {v1, v10, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 588
    .line 589
    new-instance v1, Landroid/util/Pair;

    .line 590
    .line 591
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    .line 592
    .line 593
    invoke-direct {v1, v10, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-eqz v0, :cond_7

    .line 604
    .line 605
    goto/16 :goto_9

    .line 606
    .line 607
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    .line 608
    .line 609
    const/4 v1, 0x0

    .line 610
    if-eqz v0, :cond_8

    .line 611
    .line 612
    iget-object v0, v0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 613
    .line 614
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    goto :goto_4

    .line 619
    :cond_8
    move-object v0, v1

    .line 620
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    .line 621
    .line 622
    if-eqz v2, :cond_9

    .line 623
    .line 624
    iget-object v1, v2, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 625
    .line 626
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 631
    .line 632
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    new-instance v3, Ljava/util/ArrayList;

    .line 637
    .line 638
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopLargeTileBar:Lcom/android/systemui/qs/bar/TopLargeTileBar;

    .line 651
    .line 652
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedTileLayoutBar:Lcom/android/systemui/qs/bar/PagedTileLayoutBar;

    .line 657
    .line 658
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mVideoCallMicModeBar:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    .line 663
    .line 664
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMultiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    .line 669
    .line 670
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mExpandedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 675
    .line 676
    invoke-virtual {p0, v11}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    .line 677
    .line 678
    .line 679
    move-result-object v11

    .line 680
    iget-object v12, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBottomLargeTileBar:Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    .line 681
    .line 682
    invoke-virtual {p0, v12}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    .line 683
    .line 684
    .line 685
    move-result-object v12

    .line 686
    iget-object v13, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecurityFooterBar:Lcom/android/systemui/qs/bar/SecurityFooterBar;

    .line 687
    .line 688
    invoke-virtual {p0, v13}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    .line 689
    .line 690
    .line 691
    move-result-object v13

    .line 692
    new-instance v14, Ljava/util/ArrayList;

    .line 693
    .line 694
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 719
    .line 720
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 721
    .line 722
    .line 723
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 724
    .line 725
    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 733
    .line 734
    .line 735
    move-result v3

    .line 736
    if-eqz v3, :cond_b

    .line 737
    .line 738
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    check-cast v3, Landroid/view/View;

    .line 743
    .line 744
    if-eqz v3, :cond_a

    .line 745
    .line 746
    new-array v4, v8, [F

    .line 747
    .line 748
    fill-array-data v4, :array_a

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0, v3, v7, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 752
    .line 753
    .line 754
    new-array v4, v8, [F

    .line 755
    .line 756
    const/4 v11, 0x0

    .line 757
    aput v11, v4, v6

    .line 758
    .line 759
    iget-object v11, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    .line 760
    .line 761
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 762
    .line 763
    .line 764
    move-result-object v11

    .line 765
    const v12, 0x7f070348

    .line 766
    .line 767
    .line 768
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 769
    .line 770
    .line 771
    move-result v11

    .line 772
    int-to-float v11, v11

    .line 773
    const/4 v12, 0x1

    .line 774
    aput v11, v4, v12

    .line 775
    .line 776
    invoke-virtual {v0, v3, v5, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 777
    .line 778
    .line 779
    const/high16 v4, 0x3f000000    # 0.5f

    .line 780
    .line 781
    iput v4, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 782
    .line 783
    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 784
    .line 785
    new-instance v11, Landroid/util/Pair;

    .line 786
    .line 787
    invoke-direct {v11, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    goto :goto_5

    .line 794
    :cond_b
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 799
    .line 800
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    .line 801
    .line 802
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 811
    .line 812
    if-ne v0, v8, :cond_c

    .line 813
    .line 814
    const/4 v0, 0x1

    .line 815
    goto :goto_6

    .line 816
    :cond_c
    move v0, v6

    .line 817
    :goto_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    :cond_d
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 822
    .line 823
    .line 824
    move-result v3

    .line 825
    if-eqz v3, :cond_f

    .line 826
    .line 827
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v3

    .line 831
    check-cast v3, Landroid/view/View;

    .line 832
    .line 833
    if-eqz v3, :cond_d

    .line 834
    .line 835
    new-array v4, v8, [F

    .line 836
    .line 837
    fill-array-data v4, :array_b

    .line 838
    .line 839
    .line 840
    invoke-virtual {v1, v3, v7, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 841
    .line 842
    .line 843
    new-array v4, v8, [F

    .line 844
    .line 845
    if-eqz v0, :cond_e

    .line 846
    .line 847
    const/high16 v11, 0x41200000    # 10.0f

    .line 848
    .line 849
    goto :goto_8

    .line 850
    :cond_e
    const/high16 v11, 0x41a00000    # 20.0f

    .line 851
    .line 852
    :goto_8
    aput v11, v4, v6

    .line 853
    .line 854
    const/4 v11, 0x0

    .line 855
    const/4 v12, 0x1

    .line 856
    aput v11, v4, v12

    .line 857
    .line 858
    invoke-virtual {v1, v3, v5, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 859
    .line 860
    .line 861
    new-array v4, v8, [F

    .line 862
    .line 863
    fill-array-data v4, :array_c

    .line 864
    .line 865
    .line 866
    const-string/jumbo v11, "scaleX"

    .line 867
    .line 868
    .line 869
    invoke-virtual {v1, v3, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 870
    .line 871
    .line 872
    new-array v4, v8, [F

    .line 873
    .line 874
    fill-array-data v4, :array_d

    .line 875
    .line 876
    .line 877
    const-string/jumbo v11, "scaleY"

    .line 878
    .line 879
    .line 880
    invoke-virtual {v1, v3, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 881
    .line 882
    .line 883
    const/high16 v4, 0x3f000000    # 0.5f

    .line 884
    .line 885
    iput v4, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 886
    .line 887
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 888
    .line 889
    .line 890
    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 891
    .line 892
    new-instance v11, Landroid/util/Pair;

    .line 893
    .line 894
    invoke-direct {v11, v10, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    goto :goto_7

    .line 901
    :cond_f
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 906
    .line 907
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 908
    .line 909
    if-eqz v0, :cond_10

    .line 910
    .line 911
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 912
    .line 913
    if-eqz v0, :cond_10

    .line 914
    .line 915
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 916
    .line 917
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 918
    .line 919
    .line 920
    iget-object v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 921
    .line 922
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 923
    .line 924
    new-array v2, v8, [F

    .line 925
    .line 926
    fill-array-data v2, :array_e

    .line 927
    .line 928
    .line 929
    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 930
    .line 931
    .line 932
    const v1, 0x3f6e147b    # 0.93f

    .line 933
    .line 934
    .line 935
    iput v1, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 936
    .line 937
    const v1, 0x3d23d70a    # 0.04f

    .line 938
    .line 939
    .line 940
    iput v1, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 941
    .line 942
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mStackScrollLayoutAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 947
    .line 948
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 949
    .line 950
    new-instance v1, Landroid/util/Pair;

    .line 951
    .line 952
    iget-object v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 953
    .line 954
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 955
    .line 956
    invoke-direct {v1, v9, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 957
    .line 958
    .line 959
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    :cond_10
    const/4 v0, 0x1

    .line 963
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mAnimatorsInitialiezed:Z

    .line 964
    .line 965
    iget v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastPosition:F

    .line 966
    .line 967
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setQsExpansionPosition(F)V

    .line 968
    .line 969
    .line 970
    return-void

    .line 971
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    :array_2
    .array-data 4
        -0x3e100000    # -30.0f
        0x0
    .end array-data

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    :array_c
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f800000    # 1.0f
    .end array-data

    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    :array_d
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f800000    # 1.0f
    .end array-data

    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    :array_e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final updateViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 25
    .line 26
    const v1, 0x7f0a0228

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPlmn:Landroid/view/View;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarriers:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPlmn:Landroid/view/View;

    .line 41
    .line 42
    const v1, 0x7f0a0225

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarrier1:Landroid/view/View;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPlmn:Landroid/view/View;

    .line 52
    .line 53
    const v1, 0x7f0a0226

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarrier2:Landroid/view/View;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPlmn:Landroid/view/View;

    .line 63
    .line 64
    const v1, 0x7f0a0227

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarrier3:Landroid/view/View;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarriers:Ljava/util/ArrayList;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarrier1:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarriers:Ljava/util/ArrayList;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarrier2:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarriers:Ljava/util/ArrayList;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCarrier3:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 95
    .line 96
    const v1, 0x7f0a0270

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderClock:Landroid/view/View;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 106
    .line 107
    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const v1, 0x7f0a0477

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 119
    .line 120
    const v1, 0x7f0a0879

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 130
    .line 131
    const v1, 0x7f0a0483

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mButtonContainer:Landroid/view/View;

    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 141
    .line 142
    const v1, 0x7f0a0a11

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSettingContainer:Landroid/view/View;

    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 152
    .line 153
    const v1, 0x7f0a0712

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 163
    .line 164
    const v1, 0x7f0a0800

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    .line 172
    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 174
    .line 175
    const v1, 0x7f0a0392

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mEditContainer:Landroid/view/View;

    .line 183
    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 185
    .line 186
    const v1, 0x7f0a087c

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 194
    .line 195
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 196
    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 198
    .line 199
    const v1, 0x7f0a0272

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockDateContainer:Landroid/view/View;

    .line 207
    .line 208
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 209
    .line 210
    const v1, 0x7f0a0271

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockButtonContainer:Landroid/view/View;

    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockDateContainer:Landroid/view/View;

    .line 220
    .line 221
    const v1, 0x7f0a047b

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Landroid/widget/TextView;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDate:Landroid/widget/TextView;

    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 233
    .line 234
    const v1, 0x7f0a047a

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    .line 242
    .line 243
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    .line 244
    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockDateContainer:Landroid/view/View;

    .line 246
    .line 247
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDateWidthDetector:Lcom/android/systemui/qs/animator/QsExpandAnimator$1;

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 253
    .line 254
    const v1, 0x7f0a087a

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNetworkSpeedContainer:Landroid/view/View;

    .line 262
    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 264
    .line 265
    const v1, 0x7f0a0acc

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSystemIcon:Landroid/view/View;

    .line 273
    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 275
    .line 276
    const v1, 0x7f0a0145

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBatteryIcon:Landroid/view/View;

    .line 284
    .line 285
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 286
    .line 287
    const v1, 0x7f0a0822

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPrivacyContainer:Landroid/view/View;

    .line 295
    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 297
    .line 298
    const-string/jumbo v1, "qqs_expand_anim"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    .line 306
    .line 307
    if-nez v0, :cond_2

    .line 308
    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 310
    .line 311
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    .line 312
    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 314
    .line 315
    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    .line 320
    .line 321
    const v1, 0x7f0a03de

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Landroid/widget/ScrollView;

    .line 329
    .line 330
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQSScrollView:Landroid/widget/ScrollView;

    .line 331
    .line 332
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 333
    .line 334
    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    const v1, 0x7f0a0881

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 346
    .line 347
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 348
    .line 349
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 350
    .line 351
    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 353
    .line 354
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 355
    .line 356
    .line 357
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 358
    .line 359
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 360
    .line 361
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 362
    .line 363
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 364
    .line 365
    iput-object p0, v0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    .line 366
    .line 367
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 368
    .line 369
    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS_MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInCollapsed(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    check-cast v0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    .line 376
    .line 377
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    .line 378
    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 380
    .line 381
    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS:Lcom/android/systemui/qs/bar/BarType;

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 388
    .line 389
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mExpandedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 390
    .line 391
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 392
    .line 393
    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->TOP_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    check-cast v0, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    .line 400
    .line 401
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopLargeTileBar:Lcom/android/systemui/qs/bar/TopLargeTileBar;

    .line 402
    .line 403
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 404
    .line 405
    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->BOTTOM_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    check-cast v0, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    .line 412
    .line 413
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBottomLargeTileBar:Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    .line 414
    .line 415
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 416
    .line 417
    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->PAGED_TILE:Lcom/android/systemui/qs/bar/BarType;

    .line 418
    .line 419
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    check-cast v0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;

    .line 424
    .line 425
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedTileLayoutBar:Lcom/android/systemui/qs/bar/PagedTileLayoutBar;

    .line 426
    .line 427
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 428
    .line 429
    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->VIDEO_CALL_MIC_MODE:Lcom/android/systemui/qs/bar/BarType;

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    check-cast v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    .line 436
    .line 437
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mVideoCallMicModeBar:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    .line 438
    .line 439
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 440
    .line 441
    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->MULTI_SIM_PREFERRED_SLOT:Lcom/android/systemui/qs/bar/BarType;

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    check-cast v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    .line 448
    .line 449
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMultiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    .line 450
    .line 451
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 452
    .line 453
    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->SECURITY_FOOTER:Lcom/android/systemui/qs/bar/BarType;

    .line 454
    .line 455
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    check-cast v0, Lcom/android/systemui/qs/bar/SecurityFooterBar;

    .line 460
    .line 461
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecurityFooterBar:Lcom/android/systemui/qs/bar/SecurityFooterBar;

    .line 462
    .line 463
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 464
    .line 465
    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

    .line 466
    .line 467
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInCollapsed(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    check-cast v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 472
    .line 473
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 474
    .line 475
    return-void
.end method
