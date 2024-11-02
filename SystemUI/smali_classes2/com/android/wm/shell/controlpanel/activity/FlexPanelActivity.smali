.class public Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/wm/shell/controlpanel/GridUIManager;


# static fields
.field public static final mEditPanelItemSize:I

.field public static final mIsFold:Z

.field public static sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public static sTalkbackEnabled:Z


# instance fields
.field public i_22_25_0_1:Landroid/view/animation/Interpolator;

.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActions:Ljava/util/ArrayList;

.field public final mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mBaseDeviceState:I

.field public mBasicGridViewHeight:I

.field public mBasicGridViewWidth:I

.field public final mBrightnessObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;

.field public mBrightnessVolumeType:I

.field public mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

.field public final mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

.field public mCloseState:Z

.field public mCustomDimen:Ljava/util/Map;

.field public final mDesktopModeListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mDeviceState:I

.field public final mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;

.field public mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

.field public mDragEnteredTime:J

.field public mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public mEditActions:Ljava/util/ArrayList;

.field public mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

.field public mFadeIn:Landroid/view/animation/Animation;

.field public mFadeOut:Landroid/view/animation/Animation;

.field public mFirstScrollTouchedPosition:F

.field public mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

.field public mForceTouchPadRemoved:Z

.field public mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

.field public mGridLayout:Landroid/widget/GridLayout;

.field public mGridView:Landroid/widget/GridView;

.field public mImmersiveState:I

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mIsDimTouched:Z

.field public mIsDisplayTouchPad:Z

.field public mIsEditPanel:Z

.field public mIsMediaPanel:Z

.field public mIsResumeCalled:Z

.field public mIsScreenRecordingStarted:Z

.field public mLastScrollPosition:F

.field public mMediaController:Landroid/media/session/MediaController;

.field public mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public mMediaView:Landroid/widget/LinearLayout;

.field public final mModeEnableObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;

.field public mOnDragAnimation:Z

.field public mOnDragEnded:Z

.field public mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public mPanelInit:Z

.field public mPanelView:Landroid/widget/LinearLayout;

.field public mPendingShowTouchPad:Z

.field public mPrevOrientation:I

.field public final mReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;

.field public mScrollVibrationThreshold:I

.field public mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public mSliderIn:Landroid/view/animation/Animation;

.field public mSliderOut:Landroid/view/animation/Animation;

.field public final mTalkbackObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;

.field public final mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

.field public mToolbarTipPopup:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

.field public mTooltipInit:Z

.field public mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

.field public mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

.field public mUpperArea:Landroid/widget/LinearLayout;

.field public mWindowAttached:Z

.field public mX:I

.field public mY:I


# direct methods
.method public static -$$Nest$monTableModeChanged(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "F004"

    .line 14
    .line 15
    const-string v2, "b"

    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->semIsResumed()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;

    .line 29
    .line 30
    const/4 v1, 0x7

    .line 31
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    sget-object v0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->finish()V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPadImmediate()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 59
    .line 60
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 61
    .line 62
    if-eq v0, v1, :cond_3

    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsResumeCalled:Z

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->dismissSplitTask(Landroid/os/IBinder;Z)V

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x4

    .line 10
    :goto_0
    sput v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    .line 11
    .line 12
    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeType:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDragEnteredTime:J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPendingShowTouchPad:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mWindowAttached:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsResumeCalled:Z

    .line 23
    .line 24
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;

    .line 30
    .line 31
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;

    .line 32
    .line 33
    new-instance v2, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/os/Handler;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;

    .line 42
    .line 43
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;

    .line 44
    .line 45
    new-instance v2, Landroid/os/Handler;

    .line 46
    .line 47
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/os/Handler;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mModeEnableObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;

    .line 54
    .line 55
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;

    .line 56
    .line 57
    new-instance v2, Landroid/os/Handler;

    .line 58
    .line 59
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/os/Handler;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTalkbackObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;

    .line 66
    .line 67
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;

    .line 73
    .line 74
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

    .line 80
    .line 81
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDesktopModeListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    const/16 v1, 0x1e

    .line 89
    .line 90
    iput v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollVibrationThreshold:I

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsScreenRecordingStarted:Z

    .line 93
    .line 94
    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    .line 95
    .line 96
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDimTouched:Z

    .line 97
    .line 98
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    .line 104
    .line 105
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    .line 106
    .line 107
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    .line 111
    .line 112
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    .line 118
    .line 119
    return-void
.end method

.method public static setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    int-to-float v2, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    aput v2, v1, v3

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    const/4 v4, 0x1

    .line 18
    aput v2, v1, v4

    .line 19
    .line 20
    const-string/jumbo v2, "x"

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    filled-new-array {v1}, [Landroid/animation/Animator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 32
    .line 33
    .line 34
    new-array v0, v0, [F

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    aput v1, v0, v3

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    int-to-float p1, p1

    .line 48
    aput p1, v0, v4

    .line 49
    .line 50
    const-string/jumbo p1, "y"

    .line 51
    .line 52
    .line 53
    invoke-static {p2, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    filled-new-array {p1}, [Landroid/animation/Animator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final addEditPanelNone()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    .line 8
    .line 9
    const-string v2, "edit_panel_action_list"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    :goto_0
    sget v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    .line 15
    .line 16
    mul-int/lit8 v1, v1, 0x2

    .line 17
    .line 18
    sub-int/2addr v1, v0

    .line 19
    if-ge v3, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 28
    .line 29
    invoke-virtual {p0, v2, v1, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayAdd(Ljava/lang/String;ILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-ge v0, v1, :cond_1

    .line 36
    .line 37
    :goto_1
    sget v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    .line 38
    .line 39
    sub-int/2addr v1, v0

    .line 40
    if-ge v3, v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 49
    .line 50
    invoke-virtual {p0, v2, v1, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayAdd(Ljava/lang/String;ILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    return-void
.end method

.method public final buttonLoggingByString(ILjava/util/Map;)V
    .locals 2

    .line 1
    const-string v0, "MEDIA_PANEL"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences$1(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "F003"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "F002"

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1, p2}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "F005"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {v0, p0, p2}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final checkActiveSession()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->semIsFreeform()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x2

    .line 32
    if-ne v2, v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    filled-new-array {v1}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;

    .line 45
    .line 46
    invoke-direct {v2, p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;[ILandroid/os/Handler;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v3, 0xc8

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public final checkFromValueNone(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    add-int/lit8 v1, v0, 0xa

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return p1
.end method

.method public final checkToValueNone(IZ)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_2

    .line 17
    .line 18
    add-int/lit8 v1, v0, 0xa

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 25
    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0xa

    .line 33
    .line 34
    return v0

    .line 35
    :cond_0
    return v1

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return p1
.end method

.method public final closeOperation()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPadImmediate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0101a4

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCloseState:Z

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final displayTouchPadIfNeed()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTouchPadEnabled(Landroid/content/SharedPreferences;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPendingShowTouchPad:Z

    .line 15
    .line 16
    if-nez v0, :cond_5

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mWindowAttached:Z

    .line 19
    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sget-boolean v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    if-ne v1, v0, :cond_2

    .line 39
    .line 40
    :cond_1
    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDisplayTouchPad:Z

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDisplayTouchPad:Z

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 57
    .line 58
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;-><init>(Landroid/content/Context;Z)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    .line 64
    .line 65
    .line 66
    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isWheelActive(Landroid/content/Context;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 77
    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    sget-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    .line 81
    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    new-instance v0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 87
    .line 88
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;-><init>(Landroid/content/Context;Z)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    .line 94
    .line 95
    .line 96
    :cond_5
    return-void
.end method

.method public final excuteAct(I)V
    .locals 14

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v1, Ljava/util/HashMap;

    .line 12
    .line 13
    const-string/jumbo v3, "packageName"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    .line 20
    .line 21
    const-string v2, "MEDIA_PANEL"

    .line 22
    .line 23
    if-eqz v1, :cond_7

    .line 24
    .line 25
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v1, p1, :cond_3

    .line 32
    .line 33
    const-string v1, "TOUCH_PAD_ENABLED"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences$1(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const v3, 0x7f13115e

    .line 40
    .line 41
    .line 42
    const v4, 0x7f13115f

    .line 43
    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    move v1, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v1, v4

    .line 50
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences$1(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    const-string v1, "MEDIA_TOUCH_PAD_ENABLED"

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences$1(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move v3, v4

    .line 66
    :goto_1
    move v1, v3

    .line 67
    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    .line 68
    .line 69
    invoke-virtual {p0, v1, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->buttonLoggingByString(ILjava/util/Map;)V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_3
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ne v1, p1, :cond_5

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    const v1, 0x7f130341

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    const v1, 0x7f130651

    .line 90
    .line 91
    .line 92
    :goto_2
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    .line 93
    .line 94
    invoke-virtual {p0, v1, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->buttonLoggingByString(ILjava/util/Map;)V

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences$1(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_6

    .line 105
    .line 106
    const-string v3, "F003"

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    const-string v3, "F002"

    .line 110
    .line 111
    :goto_3
    invoke-static {p1, p0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getLoggingID(ILandroid/content/Context;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v3, v4, v1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    .line 117
    .line 118
    const-string v3, "F005"

    .line 119
    .line 120
    invoke-static {p1, p0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getLoggingID(ILandroid/content/Context;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v3, v4, v1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    :goto_4
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->VolumeControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/4 v3, 0x0

    .line 134
    if-ne v1, p1, :cond_8

    .line 135
    .line 136
    const p1, 0x7f0a067a

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBrightnessVolumeView(II)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_11

    .line 143
    .line 144
    :cond_8
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->BrightnessControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    const/4 v4, 0x1

    .line 151
    const/4 v5, -0x1

    .line 152
    if-ne v1, p1, :cond_f

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string/jumbo v0, "pms_notification_panel_brightness_adjustment"

    .line 159
    .line 160
    .line 161
    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_9

    .line 166
    .line 167
    move p1, v4

    .line 168
    goto :goto_5

    .line 169
    :cond_9
    move p1, v3

    .line 170
    :goto_5
    if-eqz p1, :cond_d

    .line 171
    .line 172
    const-string p1, "false"

    .line 173
    .line 174
    filled-new-array {p1}, [Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    const-string p1, "isSettingsChangesAllowed"

    .line 179
    .line 180
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 181
    .line 182
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    const/4 v8, 0x0

    .line 191
    const/4 v11, 0x0

    .line 192
    move-object v9, p1

    .line 193
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-eqz v0, :cond_b

    .line 198
    .line 199
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    .line 201
    .line 202
    const-string/jumbo v1, "true"

    .line 203
    .line 204
    .line 205
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-eqz p1, :cond_a

    .line 218
    .line 219
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 220
    .line 221
    .line 222
    move p1, v4

    .line 223
    goto :goto_6

    .line 224
    :cond_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 225
    .line 226
    .line 227
    move p1, v3

    .line 228
    goto :goto_6

    .line 229
    :catchall_0
    move-exception p0

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 231
    .line 232
    .line 233
    throw p0

    .line 234
    :catch_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 235
    .line 236
    .line 237
    :cond_b
    move p1, v5

    .line 238
    :goto_6
    if-eq p1, v5, :cond_c

    .line 239
    .line 240
    if-nez p1, :cond_c

    .line 241
    .line 242
    const-string p1, "ControlPanelUtils"

    .line 243
    .line 244
    const-string v0, "getSettingsChangeAllowed:false"

    .line 245
    .line 246
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move p1, v3

    .line 250
    goto :goto_7

    .line 251
    :cond_c
    move p1, v4

    .line 252
    :goto_7
    if-eqz p1, :cond_d

    .line 253
    .line 254
    move p1, v4

    .line 255
    goto :goto_8

    .line 256
    :cond_d
    move p1, v3

    .line 257
    :goto_8
    if-nez p1, :cond_e

    .line 258
    .line 259
    const p1, 0x7f131151

    .line 260
    .line 261
    .line 262
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_11

    .line 270
    .line 271
    :cond_e
    const p1, 0x7f0a063c

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, p1, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBrightnessVolumeView(II)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_11

    .line 278
    .line 279
    :cond_f
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 280
    .line 281
    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    const/4 v6, 0x2

    .line 286
    const/4 v7, 0x4

    .line 287
    if-ne v1, p1, :cond_19

    .line 288
    .line 289
    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 290
    .line 291
    const v0, 0x7f0a0396

    .line 292
    .line 293
    .line 294
    if-eqz p1, :cond_11

    .line 295
    .line 296
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/widget/GridView;->getWidth()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewWidth:I

    .line 303
    .line 304
    sget-boolean p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 305
    .line 306
    if-eqz p1, :cond_10

    .line 307
    .line 308
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 309
    .line 310
    invoke-virtual {p1}, Landroid/widget/GridView;->getHeight()I

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    goto :goto_9

    .line 315
    :cond_10
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    .line 316
    .line 317
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    :goto_9
    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewHeight:I

    .line 322
    .line 323
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderOut:Landroid/view/animation/Animation;

    .line 328
    .line 329
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 330
    .line 331
    .line 332
    new-instance p1, Landroid/os/Handler;

    .line 333
    .line 334
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 335
    .line 336
    .line 337
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;

    .line 338
    .line 339
    invoke-direct {v0, p0, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    .line 340
    .line 341
    .line 342
    const-wide/16 v1, 0x64

    .line 343
    .line 344
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    .line 346
    .line 347
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    .line 348
    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;

    .line 358
    .line 359
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$19;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;II)V

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->i_22_25_0_1:Landroid/view/animation/Interpolator;

    .line 363
    .line 364
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 365
    .line 366
    .line 367
    const-wide/16 v0, 0x15e

    .line 368
    .line 369
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 373
    .line 374
    .line 375
    new-instance p1, Landroid/os/Handler;

    .line 376
    .line 377
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 378
    .line 379
    .line 380
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;

    .line 381
    .line 382
    invoke-direct {v2, p0, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    .line 387
    .line 388
    goto/16 :goto_11

    .line 389
    .line 390
    :cond_11
    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 391
    .line 392
    invoke-virtual {p0, v2, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 393
    .line 394
    .line 395
    iput-boolean v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 396
    .line 397
    iput-boolean v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 398
    .line 399
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 400
    .line 401
    invoke-virtual {p1}, Landroid/widget/GridView;->getWidth()I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewWidth:I

    .line 406
    .line 407
    sget-boolean p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 408
    .line 409
    if-eqz p1, :cond_12

    .line 410
    .line 411
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 412
    .line 413
    invoke-virtual {v1}, Landroid/widget/GridView;->getHeight()I

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    goto :goto_a

    .line 418
    :cond_12
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    .line 419
    .line 420
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    :goto_a
    iput v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewHeight:I

    .line 425
    .line 426
    const v1, 0x7f0d00e4

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 430
    .line 431
    .line 432
    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTooltipInit:Z

    .line 433
    .line 434
    const v2, 0x7f0700a5

    .line 435
    .line 436
    .line 437
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 438
    .line 439
    if-eqz v1, :cond_15

    .line 440
    .line 441
    const-string/jumbo v1, "tooltip_init"

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0, v1, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 445
    .line 446
    .line 447
    iput-boolean v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTooltipInit:Z

    .line 448
    .line 449
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    .line 450
    .line 451
    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;-><init>(Landroid/content/Context;)V

    .line 452
    .line 453
    .line 454
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mToolbarTipPopup:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    .line 455
    .line 456
    if-eqz p1, :cond_14

    .line 457
    .line 458
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 459
    .line 460
    int-to-double v10, v1

    .line 461
    const-wide v12, 0x401b0a3d70a3d70aL    # 6.76

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    mul-double/2addr v10, v12

    .line 467
    div-double/2addr v10, v8

    .line 468
    double-to-int v1, v10

    .line 469
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    const v10, 0x7f0700a6

    .line 474
    .line 475
    .line 476
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 477
    .line 478
    .line 479
    move-result v6

    .line 480
    add-int/2addr v6, v1

    .line 481
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    const v10, 0x7f0714d5

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    add-int/2addr v1, v6

    .line 493
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 502
    .line 503
    .line 504
    move-result v6

    .line 505
    if-ne v6, v4, :cond_13

    .line 506
    .line 507
    iget v6, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 508
    .line 509
    sub-int v1, v6, v1

    .line 510
    .line 511
    :cond_13
    iget-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mToolbarTipPopup:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    .line 512
    .line 513
    iget v10, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    .line 514
    .line 515
    mul-int/lit8 v10, v10, 0x4b

    .line 516
    .line 517
    div-int/lit8 v10, v10, 0x64

    .line 518
    .line 519
    invoke-virtual {v6, v1, v10}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->requestShowPopUp(II)V

    .line 520
    .line 521
    .line 522
    goto :goto_b

    .line 523
    :cond_14
    iget v10, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 524
    .line 525
    div-int/2addr v10, v6

    .line 526
    iget v6, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    .line 527
    .line 528
    mul-int/lit8 v6, v6, 0x50

    .line 529
    .line 530
    div-int/lit8 v6, v6, 0x64

    .line 531
    .line 532
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 533
    .line 534
    .line 535
    move-result-object v11

    .line 536
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 537
    .line 538
    .line 539
    move-result v11

    .line 540
    sub-int/2addr v6, v11

    .line 541
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 542
    .line 543
    .line 544
    move-result-object v11

    .line 545
    const v12, 0x7f0714d4

    .line 546
    .line 547
    .line 548
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 549
    .line 550
    .line 551
    move-result v11

    .line 552
    sub-int/2addr v6, v11

    .line 553
    invoke-virtual {v1, v10, v6}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->requestShowPopUp(II)V

    .line 554
    .line 555
    .line 556
    :cond_15
    :goto_b
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupCommonPart()V

    .line 557
    .line 558
    .line 559
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 560
    .line 561
    if-nez v1, :cond_16

    .line 562
    .line 563
    goto/16 :goto_11

    .line 564
    .line 565
    :cond_16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    check-cast v0, Landroid/widget/LinearLayout;

    .line 570
    .line 571
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    .line 572
    .line 573
    const/4 v6, 0x0

    .line 574
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 575
    .line 576
    .line 577
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    .line 578
    .line 579
    const v6, 0x7f0807a3

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    .line 587
    .line 588
    const/4 v1, -0x2

    .line 589
    if-eqz p1, :cond_17

    .line 590
    .line 591
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 592
    .line 593
    invoke-virtual {p1, v4}, Landroid/widget/GridLayout;->setOrientation(I)V

    .line 594
    .line 595
    .line 596
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 597
    .line 598
    sget v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    .line 599
    .line 600
    invoke-virtual {p1, v2}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 601
    .line 602
    .line 603
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 604
    .line 605
    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 606
    .line 607
    .line 608
    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 609
    .line 610
    int-to-double v2, v2

    .line 611
    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    mul-double/2addr v2, v4

    .line 617
    div-double/2addr v2, v8

    .line 618
    double-to-int v2, v2

    .line 619
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 620
    .line 621
    .line 622
    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 623
    .line 624
    int-to-double v2, v2

    .line 625
    const-wide v4, 0x3ffb333333333333L    # 1.7

    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    mul-double/2addr v2, v4

    .line 631
    div-double/2addr v2, v8

    .line 632
    double-to-int v2, v2

    .line 633
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 634
    .line 635
    .line 636
    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    .line 637
    .line 638
    int-to-double v2, v2

    .line 639
    const-wide v4, 0x4000cccccccccccdL    # 2.1

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    mul-double/2addr v2, v4

    .line 645
    div-double/2addr v2, v8

    .line 646
    double-to-int v2, v2

    .line 647
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 648
    .line 649
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 650
    .line 651
    invoke-virtual {v2, p1}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    .line 653
    .line 654
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    .line 655
    .line 656
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    const v3, 0x7f0700a8

    .line 661
    .line 662
    .line 663
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 664
    .line 665
    .line 666
    move-result v2

    .line 667
    int-to-float v2, v2

    .line 668
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setY(F)V

    .line 669
    .line 670
    .line 671
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    .line 672
    .line 673
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 674
    .line 675
    iget v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    .line 676
    .line 677
    int-to-double v3, v3

    .line 678
    const-wide v5, 0x404299999999999aL    # 37.2

    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    mul-double/2addr v3, v5

    .line 684
    div-double/2addr v3, v8

    .line 685
    double-to-int v3, v3

    .line 686
    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    .line 691
    .line 692
    goto :goto_c

    .line 693
    :cond_17
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 694
    .line 695
    invoke-virtual {p1, v3}, Landroid/widget/GridLayout;->setOrientation(I)V

    .line 696
    .line 697
    .line 698
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 699
    .line 700
    sget v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    .line 701
    .line 702
    invoke-virtual {p1, v3}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 703
    .line 704
    .line 705
    const/high16 p1, 0x43340000    # 180.0f

    .line 706
    .line 707
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setRotationX(F)V

    .line 708
    .line 709
    .line 710
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    .line 711
    .line 712
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 713
    .line 714
    .line 715
    move-result-object v3

    .line 716
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 717
    .line 718
    .line 719
    move-result v2

    .line 720
    mul-int/2addr v2, v5

    .line 721
    int-to-float v2, v2

    .line 722
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setY(F)V

    .line 723
    .line 724
    .line 725
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    .line 726
    .line 727
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 728
    .line 729
    iget v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 730
    .line 731
    int-to-double v3, v3

    .line 732
    const-wide v5, 0x405639999999999aL    # 88.9

    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    mul-double/2addr v3, v5

    .line 738
    div-double/2addr v3, v8

    .line 739
    double-to-int v3, v3

    .line 740
    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    .line 745
    .line 746
    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 747
    .line 748
    const-wide/16 v6, 0x0

    .line 749
    .line 750
    const-wide v8, 0x3ff6666666666666L    # 1.4

    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    const-wide/16 v10, 0x0

    .line 756
    .line 757
    const-wide/16 v12, 0x0

    .line 758
    .line 759
    move-object v4, p0

    .line 760
    invoke-static/range {v4 .. v13}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    .line 761
    .line 762
    .line 763
    :goto_c
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 764
    .line 765
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 766
    .line 767
    .line 768
    move-result-object p1

    .line 769
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    if-eqz v1, :cond_18

    .line 774
    .line 775
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    check-cast v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 780
    .line 781
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 782
    .line 783
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 788
    .line 789
    .line 790
    goto :goto_d

    .line 791
    :cond_18
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    .line 792
    .line 793
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;

    .line 798
    .line 799
    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/widget/LinearLayout;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 803
    .line 804
    .line 805
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 806
    .line 807
    if-eqz p1, :cond_22

    .line 808
    .line 809
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad()V

    .line 810
    .line 811
    .line 812
    goto :goto_11

    .line 813
    :cond_19
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 814
    .line 815
    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    if-eq v1, p1, :cond_22

    .line 820
    .line 821
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 822
    .line 823
    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 824
    .line 825
    .line 826
    move-result v1

    .line 827
    if-ne v1, p1, :cond_1a

    .line 828
    .line 829
    goto :goto_11

    .line 830
    :cond_1a
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->mActionType:Ljava/util/ArrayList;

    .line 831
    .line 832
    invoke-static {}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->values()[Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    array-length v2, v1

    .line 837
    :goto_e
    if-ge v3, v2, :cond_1c

    .line 838
    .line 839
    aget-object v5, v1, v3

    .line 840
    .line 841
    invoke-virtual {v5}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 842
    .line 843
    .line 844
    move-result v8

    .line 845
    if-ne v8, p1, :cond_1b

    .line 846
    .line 847
    goto :goto_f

    .line 848
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 849
    .line 850
    goto :goto_e

    .line 851
    :cond_1c
    sget-object v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 852
    .line 853
    :goto_f
    sget-object p1, Lcom/android/wm/shell/controlpanel/action/MenuActionType$1;->$SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action:[I

    .line 854
    .line 855
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 856
    .line 857
    .line 858
    move-result v1

    .line 859
    aget p1, p1, v1

    .line 860
    .line 861
    if-eq p1, v4, :cond_21

    .line 862
    .line 863
    if-eq p1, v6, :cond_20

    .line 864
    .line 865
    const/4 v1, 0x3

    .line 866
    if-eq p1, v1, :cond_1f

    .line 867
    .line 868
    if-eq p1, v7, :cond_1e

    .line 869
    .line 870
    const/4 v1, 0x5

    .line 871
    if-ne p1, v1, :cond_1d

    .line 872
    .line 873
    invoke-static {}, Lcom/android/wm/shell/controlpanel/action/TouchPadAction;->createAction()Lcom/android/wm/shell/controlpanel/action/TouchPadAction;

    .line 874
    .line 875
    .line 876
    move-result-object p1

    .line 877
    goto :goto_10

    .line 878
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 879
    .line 880
    const-string p1, "Wrong action"

    .line 881
    .line 882
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    throw p0

    .line 886
    :cond_1e
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;->createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;

    .line 887
    .line 888
    .line 889
    move-result-object p1

    .line 890
    goto :goto_10

    .line 891
    :cond_1f
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;->createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;

    .line 892
    .line 893
    .line 894
    move-result-object p1

    .line 895
    goto :goto_10

    .line 896
    :cond_20
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;->createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;

    .line 897
    .line 898
    .line 899
    move-result-object p1

    .line 900
    goto :goto_10

    .line 901
    :cond_21
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;

    .line 902
    .line 903
    .line 904
    move-result-object p1

    .line 905
    :goto_10
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/controlpanel/action/MenuActionType;->doControlAction(Ljava/lang/String;Lcom/android/wm/shell/controlpanel/GridUIManager;)V

    .line 910
    .line 911
    .line 912
    :cond_22
    :goto_11
    return-void
.end method

.method public final getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ge p0, v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const-string v2, "0"

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    const-string v2, "8"

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-object p1
.end method

.method public final getActionArrayForStatusLogging(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge p0, v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "0"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    const-string v1, "8"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const-string v1, "7"

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public final getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 6
    .line 7
    sub-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 22
    .line 23
    return-object p0
.end method

.method public final getEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;
    .locals 12

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/16 v3, 0x11

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    .line 34
    .line 35
    const-wide v8, 0x4014800000000000L    # 5.125

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getRatioLayoutParams(Landroid/content/Context;DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    iget v7, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 45
    .line 46
    int-to-double v7, v7

    .line 47
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 48
    .line 49
    mul-double/2addr v7, v9

    .line 50
    div-double/2addr v7, v4

    .line 51
    double-to-int v7, v7

    .line 52
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-wide v6, 0x4031cccccccccccdL    # 17.8

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    const-wide v8, 0x400a666666666666L    # 3.3

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getRatioLayoutParams(Landroid/content/Context;DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    const/16 v6, 0x10

    .line 76
    .line 77
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    .line 79
    .line 80
    const/4 v6, 0x5

    .line 81
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 86
    .line 87
    .line 88
    :goto_2
    const/high16 v6, 0x41200000    # 10.0f

    .line 89
    .line 90
    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getStringIdByActionValue(I)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    .line 103
    .line 104
    const v2, 0x7f060499

    .line 105
    .line 106
    .line 107
    invoke-static {v2, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    .line 113
    .line 114
    const/4 v2, 0x2

    .line 115
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 116
    .line 117
    .line 118
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 119
    .line 120
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-static {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getResourceIdByActionValue(I)I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    const v2, 0x7f0d003a

    .line 132
    .line 133
    .line 134
    const/4 v6, 0x0

    .line 135
    invoke-static {p0, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    const/4 v10, 0x0

    .line 146
    const/4 v11, 0x0

    .line 147
    move-object v6, p0

    .line 148
    move-object v7, v2

    .line 149
    invoke-static/range {v6 .. v11}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->makeGridButton(Landroid/content/Context;Landroid/widget/RelativeLayout;IIZZ)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_3

    .line 154
    .line 155
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const v2, 0x7f0a0443

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    .line 186
    const/4 v2, -0x2

    .line 187
    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    .line 189
    .line 190
    const-wide v2, 0x3ff3333333333333L    # 1.2

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    if-eqz v1, :cond_4

    .line 196
    .line 197
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 198
    .line 199
    int-to-double v6, v1

    .line 200
    mul-double/2addr v6, v2

    .line 201
    div-double/2addr v6, v4

    .line 202
    double-to-int v1, v6

    .line 203
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_4
    const/high16 v1, 0x43340000    # 180.0f

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setRotationX(F)V

    .line 210
    .line 211
    .line 212
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 213
    .line 214
    int-to-double v6, v1

    .line 215
    const-wide v8, 0x3ff199999999999aL    # 1.1

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    mul-double/2addr v6, v8

    .line 221
    div-double/2addr v6, v4

    .line 222
    double-to-int v1, v6

    .line 223
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 224
    .line 225
    .line 226
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 227
    .line 228
    int-to-double v6, v1

    .line 229
    mul-double/2addr v6, v8

    .line 230
    div-double/2addr v6, v4

    .line 231
    double-to-int v1, v6

    .line 232
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 233
    .line 234
    .line 235
    :goto_3
    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    .line 236
    .line 237
    int-to-double v6, p0

    .line 238
    mul-double/2addr v6, v2

    .line 239
    div-double/2addr v6, v4

    .line 240
    double-to-int p0, v6

    .line 241
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 242
    .line 243
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .line 245
    .line 246
    return-object v0
.end method

.method public final getPositionByAction(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne p1, v2, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ge v0, v1, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-ne p1, v1, :cond_2

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0xa

    .line 52
    .line 53
    return v0

    .line 54
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const/4 p0, -0x1

    .line 58
    return p0
.end method

.method public final getPreferences$1(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final onActionArrayAdd(Ljava/lang/String;ILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V
    .locals 3

    .line 1
    const-string v0, "onActionArrayAdd list :"

    .line 2
    .line 3
    const-string v1, " addAt : "

    .line 4
    .line 5
    const-string v2, " addAction : "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "FlexPanelActivity"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const-string v0, "basic_panel_action_list"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onGridViewChanged()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const-string v0, "edit_panel_action_list"

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final onActionArrayRemove(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onActionArrayRemove list :"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " removeAt : "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FlexPanelActivity"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string v0, "basic_panel_action_list"

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onGridViewChanged()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const-string v0, "edit_panel_action_list"

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V
    .locals 3

    .line 1
    const-string v0, "onActionArrayRemoveAdd list :"

    .line 2
    .line 3
    const-string v1, " removeAt : "

    .line 4
    .line 5
    const-string v2, " addAt : "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " addAction : "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "FlexPanelActivity"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const-string v0, "basic_panel_action_list"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0, p3, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0, p3, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onGridViewChanged()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    const-string v0, "edit_panel_action_list"

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 83
    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, p3, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_1

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 118
    .line 119
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {v0, p3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mWindowAttached:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPendingShowTouchPad:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->displayTouchPadIfNeed()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const v0, 0x7f0a0445

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->excuteAct(I)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$21;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$21;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v1, 0x64

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const v0, 0x7f0a0443

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->excuteAct(I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPrevOrientation:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPrevOrientation:I

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v3

    .line 14
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 15
    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    sget-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 24
    .line 25
    if-ne p1, v2, :cond_4

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "media_floating_only"

    .line 32
    .line 33
    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eq p1, v2, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isMediaPanelRequestedState(Landroid/content/Context;Landroid/media/session/MediaController;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBasicPanel()V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupMediaPanel()V

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    sget-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDisplayTouchPad:Z

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    if-eq v2, p1, :cond_5

    .line 76
    .line 77
    const/4 v0, 0x3

    .line 78
    if-ne v0, p1, :cond_6

    .line 79
    .line 80
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->displayTouchPadIfNeed()V

    .line 81
    .line 82
    .line 83
    iput-boolean v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDisplayTouchPad:Z

    .line 84
    .line 85
    :cond_6
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 11
    .line 12
    .line 13
    iput-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 14
    .line 15
    sput-object p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "enabled_accessibility_services"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v3, "com.samsung.android.marvin.talkback.TalkBackService"

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    move v0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v0, v1

    .line 42
    :goto_0
    sput-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    .line 43
    .line 44
    const-class v0, Landroid/app/ActivityManager;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/app/ActivityManager;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 53
    .line 54
    new-instance v0, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    .line 60
    .line 61
    const-string v0, "flex_panel_pref"

    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 68
    .line 69
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;

    .line 84
    .line 85
    invoke-virtual {v0, v3, v4}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v3, Ljava/util/HashMap;

    .line 99
    .line 100
    const-string/jumbo v4, "packageName"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v3, "android.intent.action.EXPAND_FLEX_PANEL"

    .line 119
    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    const-string v3, "F001"

    .line 125
    .line 126
    if-eqz v0, :cond_1

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    .line 129
    .line 130
    const-string v4, "a"

    .line 131
    .line 132
    invoke-static {v3, v4, v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v4, "android.intent.action.AUTORUN_FLEX_PANEL"

    .line 145
    .line 146
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_2

    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    .line 153
    .line 154
    const-string v4, "b"

    .line 155
    .line 156
    invoke-static {v3, v4, v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    :goto_1
    const-string v0, "FlexPanelActivity"

    .line 160
    .line 161
    const-string v3, "IllegalArgumentException : "

    .line 162
    .line 163
    const-string v4, "ClassCastException : "

    .line 164
    .line 165
    const-string v5, "NullPointerException : "

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    const-string v7, "low_power"

    .line 172
    .line 173
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-ne v6, v2, :cond_3

    .line 178
    .line 179
    move v6, v2

    .line 180
    goto :goto_2

    .line 181
    :cond_3
    move v6, v1

    .line 182
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    const-string/jumbo v8, "sem_power_mode_limited_apps_and_home_screen"

    .line 187
    .line 188
    .line 189
    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-ne v7, v2, :cond_4

    .line 194
    .line 195
    move v7, v2

    .line 196
    goto :goto_3

    .line 197
    :cond_4
    move v7, v1

    .line 198
    :goto_3
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    if-eqz v6, :cond_5

    .line 203
    .line 204
    if-nez v7, :cond_6

    .line 205
    .line 206
    :cond_5
    const/4 v6, 0x5

    .line 207
    :try_start_0
    invoke-virtual {v8, v6}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {p0, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->resizeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 216
    .line 217
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    new-array v7, v2, [Landroid/graphics/Rect;

    .line 222
    .line 223
    new-instance v8, Landroid/graphics/Rect;

    .line 224
    .line 225
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    invoke-direct {v8, v1, v1, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 234
    .line 235
    .line 236
    aput-object v8, v7, v1

    .line 237
    .line 238
    invoke-static {p0, v6, v1, v1, v7}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    aget-object v7, v7, v1

    .line 243
    .line 244
    invoke-virtual {v6, v7}, Landroid/app/SemWallpaperColors;->get(Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors$Item;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    if-eqz v6, :cond_6

    .line 249
    .line 250
    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 251
    .line 252
    .line 253
    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    if-ne v0, v2, :cond_6

    .line 255
    .line 256
    move v0, v2

    .line 257
    goto :goto_5

    .line 258
    :catch_0
    move-exception v4

    .line 259
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :catch_1
    move-exception v3

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :catch_2
    move-exception v3

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .line 319
    .line 320
    :catchall_0
    :cond_6
    :goto_4
    const/4 v0, 0x2

    .line 321
    :goto_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 337
    .line 338
    const/high16 v5, 0x1000000

    .line 339
    .line 340
    or-int/2addr v4, v5

    .line 341
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 342
    .line 343
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v3, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    const v4, 0x7f070d4a

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    iput v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollVibrationThreshold:I

    .line 362
    .line 363
    const-string v3, "media_session"

    .line 364
    .line 365
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    check-cast v3, Landroid/media/session/MediaSessionManager;

    .line 370
    .line 371
    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 372
    .line 373
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    const/4 v4, 0x0

    .line 378
    if-nez v3, :cond_7

    .line 379
    .line 380
    new-instance v3, Landroid/os/Handler;

    .line 381
    .line 382
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 383
    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_7
    move-object v3, v4

    .line 387
    :goto_6
    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 388
    .line 389
    iget-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    .line 390
    .line 391
    invoke-virtual {v5, v6, v4, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 392
    .line 393
    .line 394
    const v3, 0x7f0101a3

    .line 395
    .line 396
    .line 397
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFadeIn:Landroid/view/animation/Animation;

    .line 402
    .line 403
    const v3, 0x7f0101a4

    .line 404
    .line 405
    .line 406
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFadeOut:Landroid/view/animation/Animation;

    .line 411
    .line 412
    const v3, 0x7f010295

    .line 413
    .line 414
    .line 415
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderIn:Landroid/view/animation/Animation;

    .line 420
    .line 421
    const v3, 0x7f010296

    .line 422
    .line 423
    .line 424
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderOut:Landroid/view/animation/Animation;

    .line 429
    .line 430
    const v3, 0x7f0c0006

    .line 431
    .line 432
    .line 433
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->i_22_25_0_1:Landroid/view/animation/Interpolator;

    .line 438
    .line 439
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayX(Landroid/content/Context;)I

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    iput v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 444
    .line 445
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayY(Landroid/content/Context;)I

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    iput v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    .line 450
    .line 451
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 452
    .line 453
    invoke-static {p0, v3}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->getMediaController(Landroid/content/Context;Landroid/media/session/MediaSessionManager;)Landroid/media/session/MediaController;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 458
    .line 459
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 460
    .line 461
    const-string/jumbo v4, "panel_init"

    .line 462
    .line 463
    .line 464
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    iput-boolean v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    .line 469
    .line 470
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 471
    .line 472
    const-string/jumbo v4, "tooltip_init"

    .line 473
    .line 474
    .line 475
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    iput-boolean v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTooltipInit:Z

    .line 480
    .line 481
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 482
    .line 483
    if-eqz v3, :cond_8

    .line 484
    .line 485
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    .line 486
    .line 487
    invoke-virtual {v3, v4}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 488
    .line 489
    .line 490
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 499
    .line 500
    iput v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPrevOrientation:I

    .line 501
    .line 502
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    const-string v4, "media_floating_only"

    .line 507
    .line 508
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-eq v1, v2, :cond_b

    .line 513
    .line 514
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 515
    .line 516
    invoke-static {p0, v1}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isMediaPanelRequestedState(Landroid/content/Context;Landroid/media/session/MediaController;)Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    if-eqz v1, :cond_9

    .line 521
    .line 522
    goto :goto_7

    .line 523
    :cond_9
    if-nez p1, :cond_a

    .line 524
    .line 525
    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPendingShowTouchPad:Z

    .line 526
    .line 527
    :cond_a
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBasicPanel()V

    .line 528
    .line 529
    .line 530
    goto :goto_8

    .line 531
    :cond_b
    :goto_7
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupMediaPanel()V

    .line 532
    .line 533
    .line 534
    :goto_8
    const-string p1, "desktopmode"

    .line 535
    .line 536
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 541
    .line 542
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 543
    .line 544
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDesktopModeListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;

    .line 545
    .line 546
    invoke-virtual {p1, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 547
    .line 548
    .line 549
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    .line 550
    .line 551
    if-eqz p1, :cond_c

    .line 552
    .line 553
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 558
    .line 559
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    if-eqz p1, :cond_d

    .line 568
    .line 569
    if-ne v0, v2, :cond_d

    .line 570
    .line 571
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 572
    .line 573
    .line 574
    move-result-object p0

    .line 575
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    .line 576
    .line 577
    .line 578
    move-result-object p0

    .line 579
    const/16 p1, 0x10

    .line 580
    .line 581
    invoke-interface {p0, p1, p1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 582
    .line 583
    .line 584
    :cond_d
    return-void
.end method

.method public final onDestroy()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sput-object v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mInputMonitor:Landroid/view/InputMonitor;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mInputMonitor:Landroid/view/InputMonitor;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 43
    .line 44
    .line 45
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    new-instance v3, Landroid/os/Handler;

    .line 63
    .line 64
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda3;

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-direct {v4, v0, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPadImmediate()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 80
    .line 81
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 87
    .line 88
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 100
    .line 101
    .line 102
    :cond_6
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 103
    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 107
    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->clearController()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 115
    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    const-string v3, "TouchPadMediaPanel"

    .line 119
    .line 120
    const-string v4, "TouchPadMediaPanel clearController"

    .line 121
    .line 122
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 126
    .line 127
    if-eqz v3, :cond_8

    .line 128
    .line 129
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 130
    .line 131
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mToolbarTipPopup:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    .line 132
    .line 133
    if-eqz v0, :cond_b

    .line 134
    .line 135
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 136
    .line 137
    if-eqz v3, :cond_9

    .line 138
    .line 139
    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 140
    .line 141
    .line 142
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 143
    .line 144
    :cond_9
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    .line 145
    .line 146
    if-nez v1, :cond_a

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_a
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mWindowManager:Landroid/view/WindowManager;

    .line 150
    .line 151
    invoke-interface {v3, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    .line 155
    .line 156
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 157
    .line 158
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDesktopModeListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 161
    .line 162
    .line 163
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mWindowAttached:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "FlexPanelActivity"

    .line 6
    .line 7
    const-string v3, "onDragAnimation start, from : "

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const v5, 0x7f0a0443

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    const/4 v8, -0x1

    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const v5, 0x7f0a0445

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    if-eqz v7, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v5, v8

    .line 64
    :goto_0
    if-ne v5, v8, :cond_2

    .line 65
    .line 66
    return v6

    .line 67
    :cond_2
    const/4 v7, 0x2

    .line 68
    const-wide/16 v9, 0x1c2

    .line 69
    .line 70
    const/4 v11, 0x1

    .line 71
    if-eq v4, v7, :cond_5

    .line 72
    .line 73
    const/4 v0, 0x4

    .line 74
    if-eq v4, v0, :cond_3

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_3
    iget-boolean v0, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_4
    iput-boolean v11, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    .line 85
    .line 86
    new-instance v0, Landroid/os/Handler;

    .line 87
    .line 88
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;

    .line 92
    .line 93
    invoke-direct {v3, v1, v7}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 102
    .line 103
    .line 104
    move-result-wide v12

    .line 105
    iget-wide v14, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDragEnteredTime:J

    .line 106
    .line 107
    sub-long v14, v12, v14

    .line 108
    .line 109
    cmp-long v7, v14, v9

    .line 110
    .line 111
    if-gez v7, :cond_6

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    iput-wide v12, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDragEnteredTime:J

    .line 115
    .line 116
    sget-object v7, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 117
    .line 118
    invoke-virtual {v7}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    invoke-virtual {v1, v7}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    invoke-virtual {v1, v5, v11}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkToValueNone(IZ)I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eq v7, v8, :cond_a

    .line 131
    .line 132
    if-eq v7, v5, :cond_a

    .line 133
    .line 134
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    sget-object v12, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 139
    .line 140
    if-ne v8, v12, :cond_7

    .line 141
    .line 142
    const/16 v8, 0xa

    .line 143
    .line 144
    if-lt v7, v8, :cond_a

    .line 145
    .line 146
    iget-object v8, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    const/4 v12, 0x5

    .line 153
    if-ne v8, v12, :cond_7

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_7
    iget-boolean v8, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    .line 157
    .line 158
    if-nez v8, :cond_9

    .line 159
    .line 160
    iget-boolean v0, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    .line 161
    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    const-string/jumbo v0, "panel_init"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    iput-boolean v6, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    .line 171
    .line 172
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v3, " to : "

    .line 181
    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v7, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onDragAnimation(II)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_9
    new-instance v3, Landroid/os/Handler;

    .line 200
    .line 201
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 202
    .line 203
    .line 204
    new-instance v5, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda4;

    .line 205
    .line 206
    move-object/from16 v7, p2

    .line 207
    .line 208
    invoke-direct {v5, v1, v0, v7}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;Landroid/view/DragEvent;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v5, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .line 213
    .line 214
    :cond_a
    :goto_1
    return v11

    .line 215
    :catch_0
    move-exception v0

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v5, "failed to Drag "

    .line 219
    .line 220
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .line 232
    .line 233
    iput-boolean v6, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    .line 234
    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onDragEnded()V

    .line 236
    .line 237
    .line 238
    return v6
.end method

.method public final onDragAnimation(II)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    .line 3
    .line 4
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->i_22_25_0_1:Landroid/view/animation/Interpolator;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v2, 0x1c2

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    const/16 v4, 0xa

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    if-lt p1, v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkFromValueNone(I)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    sub-int/2addr v5, v4

    .line 33
    invoke-virtual {v2, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    if-ge p1, v4, :cond_3

    .line 51
    .line 52
    if-ge p2, v4, :cond_3

    .line 53
    .line 54
    if-ge p1, p2, :cond_1

    .line 55
    .line 56
    move v0, p1

    .line 57
    :goto_1
    if-ge v0, p2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move v0, p1

    .line 78
    :goto_2
    if-le v0, p2, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 87
    .line 88
    add-int/lit8 v0, v0, -0x1

    .line 89
    .line 90
    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$6;

    .line 99
    .line 100
    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$6;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_a

    .line 110
    .line 111
    :cond_3
    const/4 v2, 0x0

    .line 112
    if-lt p1, v4, :cond_7

    .line 113
    .line 114
    if-lt p2, v4, :cond_7

    .line 115
    .line 116
    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 117
    .line 118
    if-eqz v5, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionByPosition(I)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 125
    .line 126
    if-ne v3, v4, :cond_4

    .line 127
    .line 128
    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkFromValueNone(I)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkToValueNone(IZ)I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-ge p1, p2, :cond_5

    .line 140
    .line 141
    add-int/lit8 v0, p1, -0xa

    .line 142
    .line 143
    :goto_3
    add-int/lit8 v2, p2, -0xa

    .line 144
    .line 145
    if-ge v0, v2, :cond_6

    .line 146
    .line 147
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 148
    .line 149
    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 154
    .line 155
    add-int/lit8 v0, v0, 0x1

    .line 156
    .line 157
    invoke-virtual {v3, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    add-int/lit8 v0, p1, -0xa

    .line 166
    .line 167
    :goto_4
    add-int/lit8 v2, p2, -0xa

    .line 168
    .line 169
    if-le v0, v2, :cond_6

    .line 170
    .line 171
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 172
    .line 173
    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 178
    .line 179
    add-int/lit8 v0, v0, -0x1

    .line 180
    .line 181
    invoke-virtual {v3, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_6
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;

    .line 190
    .line 191
    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$7;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;II)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_a

    .line 201
    .line 202
    :cond_7
    if-lt p1, v4, :cond_d

    .line 203
    .line 204
    if-ge p2, v4, :cond_d

    .line 205
    .line 206
    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 207
    .line 208
    if-eqz v5, :cond_d

    .line 209
    .line 210
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkFromValueNone(I)I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    new-instance v6, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;

    .line 215
    .line 216
    invoke-direct {v6, p0, v5, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;II)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    .line 221
    .line 222
    iget-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-le v6, v3, :cond_9

    .line 229
    .line 230
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 231
    .line 232
    const/4 v6, 0x3

    .line 233
    invoke-virtual {v2, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 241
    .line 242
    sub-int/2addr p1, v4

    .line 243
    invoke-virtual {v2, p1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    add-int/lit8 p1, p1, -0x2

    .line 257
    .line 258
    :goto_5
    if-le p1, p2, :cond_8

    .line 259
    .line 260
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 261
    .line 262
    invoke-virtual {v2, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 267
    .line 268
    add-int/lit8 p1, p1, -0x1

    .line 269
    .line 270
    invoke-virtual {v3, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_8
    sub-int/2addr v5, v4

    .line 279
    :goto_6
    if-lez v5, :cond_c

    .line 280
    .line 281
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 282
    .line 283
    invoke-virtual {p1, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 288
    .line 289
    add-int/lit8 v5, v5, -0x1

    .line 290
    .line 291
    invoke-virtual {p2, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-static {v1, p1, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    .line 296
    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_9
    iget-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 300
    .line 301
    sub-int/2addr p1, v4

    .line 302
    invoke-virtual {v6, p1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    sub-int/2addr v5, v4

    .line 310
    :goto_7
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    sub-int/2addr p1, v0

    .line 317
    if-ge v5, p1, :cond_a

    .line 318
    .line 319
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 320
    .line 321
    invoke-virtual {p1, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 326
    .line 327
    add-int/lit8 v5, v5, 0x1

    .line 328
    .line 329
    invoke-virtual {v3, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-static {v1, p1, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    .line 334
    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_a
    sget-boolean p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 338
    .line 339
    if-eqz p1, :cond_b

    .line 340
    .line 341
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 348
    .line 349
    const-string v3, "basic_panel_action_list"

    .line 350
    .line 351
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayAdd(Ljava/lang/String;ILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    .line 352
    .line 353
    .line 354
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 355
    .line 356
    invoke-virtual {p1}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;

    .line 361
    .line 362
    invoke-direct {v0, p0, p2, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;ILandroid/animation/AnimatorSet;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 366
    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_b
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 370
    .line 371
    .line 372
    :goto_8
    move v0, v2

    .line 373
    :cond_c
    if-eqz v0, :cond_f

    .line 374
    .line 375
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 376
    .line 377
    .line 378
    goto :goto_a

    .line 379
    :cond_d
    if-ge p1, v4, :cond_f

    .line 380
    .line 381
    if-lt p2, v4, :cond_f

    .line 382
    .line 383
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 384
    .line 385
    if-eqz v0, :cond_f

    .line 386
    .line 387
    invoke-virtual {p0, p2, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkToValueNone(IZ)I

    .line 388
    .line 389
    .line 390
    move-result p2

    .line 391
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeEditPanelNone()V

    .line 392
    .line 393
    .line 394
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 395
    .line 396
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 401
    .line 402
    .line 403
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    add-int/lit8 v0, v0, -0x2

    .line 410
    .line 411
    :goto_9
    if-lt v0, p1, :cond_e

    .line 412
    .line 413
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 414
    .line 415
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 420
    .line 421
    add-int/lit8 v4, v0, 0x1

    .line 422
    .line 423
    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    .line 428
    .line 429
    .line 430
    add-int/lit8 v0, v0, -0x1

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 434
    .line 435
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 436
    .line 437
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-virtual {v0, v3}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 442
    .line 443
    .line 444
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 450
    .line 451
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;

    .line 456
    .line 457
    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$10;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/widget/GridLayout;ILandroid/animation/AnimatorSet;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 461
    .line 462
    .line 463
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;

    .line 464
    .line 465
    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;II)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 469
    .line 470
    .line 471
    :cond_f
    :goto_a
    return-void
.end method

.method public final onDragEnded()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "onDragEnded, dropPosition : "

    .line 17
    .line 18
    const-string v2, "FlexPanelActivity"

    .line 19
    .line 20
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, -0x1

    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/16 v3, 0xa

    .line 35
    .line 36
    if-lt v0, v3, :cond_2

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    sub-int/2addr v0, v3

    .line 43
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 44
    .line 45
    const-string v3, "edit_panel_action_list"

    .line 46
    .line 47
    invoke-virtual {p0, v3, v0, v0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-eq v0, v2, :cond_3

    .line 52
    .line 53
    const-string v2, "basic_panel_action_list"

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 56
    .line 57
    invoke-virtual {p0, v2, v0, v0, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeEditPanelNone()V

    .line 61
    .line 62
    .line 63
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v2, Ljava/util/HashMap;

    .line 78
    .line 79
    const-string/jumbo v3, "packageName"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCustomDimen:Ljava/util/Map;

    .line 86
    .line 87
    const v2, 0x7f131155

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->buttonLoggingByString(ILjava/util/Map;)V

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->updateStatusPreferences(Z)V

    .line 95
    .line 96
    .line 97
    :cond_4
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 100
    .line 101
    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    .line 102
    .line 103
    return-void
.end method

.method public final onGridViewChanged()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 4
    .line 5
    const/16 v2, 0x11

    .line 6
    .line 7
    const/4 v3, -0x2

    .line 8
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 13
    .line 14
    const-wide/high16 v6, 0x401b000000000000L    # 6.75

    .line 15
    .line 16
    const-wide v8, 0x40428ccccccccccdL    # 37.1

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-static {v0, v6, v7, v8, v9}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getRatioLayoutParams(Landroid/content/Context;DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v6, 0x7f0700a8

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 44
    .line 45
    int-to-float v1, v1

    .line 46
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 47
    .line 48
    .line 49
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 50
    .line 51
    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setY(F)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 57
    .line 58
    iget v7, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 59
    .line 60
    int-to-double v7, v7

    .line 61
    const-wide v9, 0x401b0a3d70a3d70aL    # 6.76

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    mul-double/2addr v7, v9

    .line 67
    div-double/2addr v7, v4

    .line 68
    double-to-int v4, v7

    .line 69
    const/4 v5, -0x1

    .line 70
    invoke-direct {v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setGravity(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 82
    .line 83
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    .line 85
    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 100
    .line 101
    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 102
    .line 103
    .line 104
    const/4 v6, 0x1

    .line 105
    if-eq v1, v6, :cond_5

    .line 106
    .line 107
    const/4 v7, 0x2

    .line 108
    if-eq v1, v7, :cond_4

    .line 109
    .line 110
    const/4 v7, 0x3

    .line 111
    if-eq v1, v7, :cond_3

    .line 112
    .line 113
    const/4 v7, 0x4

    .line 114
    if-eq v1, v7, :cond_2

    .line 115
    .line 116
    const-wide v7, 0x405639999999999aL    # 88.9

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    const-wide v7, 0x4051e00000000000L    # 71.5

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    const-wide v7, 0x404c0ccccccccccdL    # 56.1

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_4
    const-wide v7, 0x4042d9999999999aL    # 37.7

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    const-wide v7, 0x40374ccccccccccdL    # 23.3

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :goto_0
    iget-object v9, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    .line 149
    iget v11, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    .line 150
    .line 151
    int-to-double v11, v11

    .line 152
    const-wide v13, 0x401999999999999aL    # 6.4

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    mul-double/2addr v11, v13

    .line 158
    div-double/2addr v11, v4

    .line 159
    double-to-int v11, v11

    .line 160
    invoke-direct {v10, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .line 165
    .line 166
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    .line 168
    iget v9, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 169
    .line 170
    int-to-double v9, v9

    .line 171
    mul-double/2addr v9, v7

    .line 172
    div-double/2addr v9, v4

    .line 173
    double-to-int v9, v9

    .line 174
    iget v10, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    .line 175
    .line 176
    int-to-double v10, v10

    .line 177
    const-wide v12, 0x4012333333333333L    # 4.55

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    mul-double/2addr v10, v12

    .line 183
    div-double/2addr v10, v4

    .line 184
    double-to-int v10, v10

    .line 185
    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    .line 187
    .line 188
    iget-object v9, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 189
    .line 190
    iget v10, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 191
    .line 192
    int-to-double v11, v10

    .line 193
    const-wide v13, 0x401851eb851eb852L    # 6.08

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    mul-double/2addr v11, v13

    .line 199
    div-double/2addr v11, v4

    .line 200
    double-to-int v11, v11

    .line 201
    move-wide v15, v7

    .line 202
    int-to-double v6, v10

    .line 203
    mul-double/2addr v6, v13

    .line 204
    div-double/2addr v6, v4

    .line 205
    double-to-int v6, v6

    .line 206
    const/4 v7, 0x0

    .line 207
    invoke-virtual {v9, v11, v7, v6, v7}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 208
    .line 209
    .line 210
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 211
    .line 212
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 213
    .line 214
    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .line 216
    .line 217
    iget v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mX:I

    .line 218
    .line 219
    int-to-double v6, v2

    .line 220
    const-wide v8, 0x40263851eb851eb8L    # 11.11

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    mul-double/2addr v6, v8

    .line 226
    div-double/2addr v6, v4

    .line 227
    double-to-int v3, v6

    .line 228
    const/4 v6, 0x1

    .line 229
    if-le v1, v6, :cond_6

    .line 230
    .line 231
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 232
    .line 233
    int-to-double v7, v2

    .line 234
    mul-double/2addr v7, v15

    .line 235
    div-double/2addr v7, v4

    .line 236
    double-to-int v2, v7

    .line 237
    invoke-virtual {v6}, Landroid/widget/GridView;->getPaddingLeft()I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    sub-int/2addr v2, v4

    .line 242
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 243
    .line 244
    invoke-virtual {v0}, Landroid/widget/GridView;->getPaddingRight()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    sub-int/2addr v2, v0

    .line 249
    mul-int/2addr v3, v1

    .line 250
    sub-int/2addr v2, v3

    .line 251
    const/4 v0, 0x1

    .line 252
    sub-int/2addr v1, v0

    .line 253
    div-int/2addr v2, v1

    .line 254
    invoke-virtual {v6, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 255
    .line 256
    .line 257
    :cond_6
    :goto_1
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const v0, 0x7f0a0445

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sget-object v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onClick(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/GridItems;->ALL_ACTIONS:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const v4, 0x7f0a0443

    .line 49
    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-virtual {v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-ne v5, v6, :cond_3

    .line 80
    .line 81
    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-ne v5, v6, :cond_2

    .line 105
    .line 106
    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 107
    .line 108
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 119
    .line 120
    sget-object v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 121
    .line 122
    if-eq v3, v5, :cond_8

    .line 123
    .line 124
    sget-object v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 125
    .line 126
    if-eq v3, v5, :cond_8

    .line 127
    .line 128
    const/4 v3, -0x1

    .line 129
    if-eq v2, v3, :cond_8

    .line 130
    .line 131
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 132
    .line 133
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    const/16 v6, 0x8

    .line 138
    .line 139
    if-eq v3, v6, :cond_5

    .line 140
    .line 141
    goto/16 :goto_3

    .line 142
    .line 143
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const v3, 0x7f0a0682

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Landroid/widget/ImageButton;

    .line 155
    .line 156
    const v6, 0x7f080769

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 160
    .line 161
    .line 162
    const/4 v6, 0x0

    .line 163
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 164
    .line 165
    .line 166
    new-instance v7, Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 167
    .line 168
    invoke-direct {v7}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    .line 169
    .line 170
    .line 171
    const/high16 v8, 0x42340000    # 45.0f

    .line 172
    .line 173
    invoke-virtual {v7, v8}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    .line 177
    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    const v3, 0x7f0a036f

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    const v9, 0x7f08076a

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    const v7, 0x7f0703d0

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    new-instance v7, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;

    .line 215
    .line 216
    invoke-direct {v7, p0, v0, v3, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;ILandroid/view/View;)V

    .line 217
    .line 218
    .line 219
    const/high16 v3, 0x100000

    .line 220
    .line 221
    invoke-virtual {v0, v6, v7, v6, v3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    const-string v3, "FlexPanelActivity"

    .line 226
    .line 227
    if-eqz v0, :cond_7

    .line 228
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string/jumbo v6, "startDragAndDrop, mDraggedAction : "

    .line 232
    .line 233
    .line 234
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 238
    .line 239
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v6, " draggedPosition : "

    .line 243
    .line 244
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    const/16 v0, 0x6c

    .line 258
    .line 259
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    if-eqz p1, :cond_6

    .line 271
    .line 272
    const/16 p1, 0xa

    .line 273
    .line 274
    if-lt v2, p1, :cond_6

    .line 275
    .line 276
    const-string v0, "edit_panel_action_list"

    .line 277
    .line 278
    sub-int/2addr v2, p1

    .line 279
    invoke-virtual {p0, v0, v2, v2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    .line 280
    .line 281
    .line 282
    goto :goto_1

    .line 283
    :cond_6
    const-string p1, "basic_panel_action_list"

    .line 284
    .line 285
    invoke-virtual {p0, p1, v2, v2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    .line 286
    .line 287
    .line 288
    :goto_1
    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 289
    .line 290
    if-eqz p1, :cond_8

    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->addEditPanelNone()V

    .line 293
    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_7
    const-string/jumbo p1, "startDrag fail"

    .line 297
    .line 298
    .line 299
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 303
    .line 304
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 305
    .line 306
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 310
    .line 311
    if-eqz p1, :cond_8

    .line 312
    .line 313
    invoke-virtual {p1}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 314
    .line 315
    .line 316
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_8

    .line 327
    .line 328
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 333
    .line 334
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 335
    .line 336
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 341
    .line 342
    .line 343
    goto :goto_2

    .line 344
    :cond_8
    :goto_3
    return v1
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onPause()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mModeEnableObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTalkbackObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

    .line 43
    .line 44
    invoke-interface {v0, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    const-class v0, Landroid/app/ActivityManager;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/app/ActivityManager;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v3, 0x0

    .line 68
    if-lez v2, :cond_1

    .line 69
    .line 70
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_0
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v2, 0x2

    .line 85
    if-ne v0, v2, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move v1, v3

    .line 89
    :goto_1
    if-eqz v1, :cond_3

    .line 90
    .line 91
    new-instance v0, Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v1, "F004"

    .line 97
    .line 98
    const-string v2, "c"

    .line 99
    .line 100
    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDraggedAction:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 104
    .line 105
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 106
    .line 107
    if-eq v0, v1, :cond_4

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onDragEnded()V

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsResumeCalled:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    .line 34
    .line 35
    const-wide/16 v2, 0x1388

    .line 36
    .line 37
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "android.intent.action.COLLAPSE_FLEX_PANEL"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "com.samsung.android.app.screenrecorder.on"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "com.samsung.android.app.screenrecorder.off"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mInputMonitor:Landroid/view/InputMonitor;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v2, "caption-touch"

    .line 88
    .line 89
    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mInputMonitor:Landroid/view/InputMonitor;

    .line 94
    .line 95
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

    .line 96
    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mInputMonitor:Landroid/view/InputMonitor;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-direct {v0, p0, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;

    .line 115
    .line 116
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string/jumbo v2, "screen_brightness"

    .line 121
    .line 122
    .line 123
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;

    .line 128
    .line 129
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v2, "flex_mode_panel_enabled"

    .line 137
    .line 138
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mModeEnableObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;

    .line 143
    .line 144
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v2, "enabled_accessibility_services"

    .line 152
    .line 153
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTalkbackObserver:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;

    .line 158
    .line 159
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 160
    .line 161
    .line 162
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

    .line 167
    .line 168
    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    :catch_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCloseState:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final removeEditPanelNone()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    const-string v1, "edit_panel_action_list"

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemove(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public final removeTouchPad()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x64

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mTouchPadBg:Landroid/view/View;

    .line 9
    .line 10
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const v6, 0x7f0101a4

    .line 13
    .line 14
    .line 15
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-virtual {v4, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mCenterText:Landroid/view/View;

    .line 23
    .line 24
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-virtual {v4, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 29
    .line 30
    .line 31
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mTouchPadLine:Landroid/view/View;

    .line 32
    .line 33
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    .line 39
    .line 40
    new-instance v4, Landroid/os/Handler;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    invoke-direct {v5, v0, v6}, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/TouchPad;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 59
    .line 60
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mCustomWheelView:Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;->onFadeOutAnimation()V

    .line 73
    .line 74
    .line 75
    :cond_1
    new-instance v4, Landroid/os/Handler;

    .line 76
    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    .line 83
    .line 84
    new-instance v5, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    invoke-direct {v5, v0}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 93
    .line 94
    :cond_2
    return-void
.end method

.method public final removeTouchPadImmediate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 24
    .line 25
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 44
    .line 45
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 46
    .line 47
    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mCustomWheelView:Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 53
    .line 54
    :cond_2
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public final resizeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 14

    .line 1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 8
    .line 9
    if-nez v1, :cond_a

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/Point;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 25
    .line 26
    .line 27
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 28
    .line 29
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v0, :cond_9

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    int-to-float v6, v4

    .line 51
    const/high16 v7, 0x40000000    # 2.0f

    .line 52
    .line 53
    div-float v8, v6, v7

    .line 54
    .line 55
    int-to-float v9, v5

    .line 56
    div-float v10, v9, v7

    .line 57
    .line 58
    mul-int v11, v4, v1

    .line 59
    .line 60
    mul-int v12, v2, v5

    .line 61
    .line 62
    if-le v11, v12, :cond_1

    .line 63
    .line 64
    int-to-float v6, v1

    .line 65
    div-float/2addr v6, v9

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    int-to-float v9, v2

    .line 68
    div-float v6, v9, v6

    .line 69
    .line 70
    :goto_0
    const-string v9, "metricsHeight="

    .line 71
    .line 72
    const-string v11, " metricsWidth="

    .line 73
    .line 74
    const-string v12, "FlexPanelActivity"

    .line 75
    .line 76
    invoke-static {v9, v1, v11, v2, v12}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    int-to-float v9, v2

    .line 80
    div-float/2addr v9, v6

    .line 81
    int-to-float v11, v1

    .line 82
    div-float/2addr v11, v6

    .line 83
    div-float v6, v9, v7

    .line 84
    .line 85
    sub-float/2addr v8, v6

    .line 86
    const/4 v6, 0x0

    .line 87
    cmpg-float v13, v8, v6

    .line 88
    .line 89
    if-gez v13, :cond_2

    .line 90
    .line 91
    move v8, v6

    .line 92
    :cond_2
    div-float v7, v11, v7

    .line 93
    .line 94
    sub-float/2addr v10, v7

    .line 95
    cmpg-float v7, v10, v6

    .line 96
    .line 97
    if-gez v7, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move v6, v10

    .line 101
    :goto_1
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-nez v7, :cond_4

    .line 106
    .line 107
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-nez v7, :cond_4

    .line 112
    .line 113
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-ne v4, v7, :cond_4

    .line 118
    .line 119
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-ne v5, v7, :cond_4

    .line 124
    .line 125
    const-string v1, "It doesn\'t need to crop bitmap"

    .line 126
    .line 127
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_4
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    const/4 v10, 0x1

    .line 136
    if-lt v7, v10, :cond_8

    .line 137
    .line 138
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-lt v7, v10, :cond_8

    .line 143
    .line 144
    if-lt v2, v10, :cond_8

    .line 145
    .line 146
    if-ge v1, v10, :cond_5

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    add-int/2addr v2, v1

    .line 158
    if-gt v2, v4, :cond_7

    .line 159
    .line 160
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    add-int/2addr v2, v1

    .line 169
    if-le v2, v5, :cond_6

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_6
    const-string v1, "Cropping..."

    .line 173
    .line 174
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    goto :goto_5

    .line 198
    :cond_7
    :goto_2
    const-string v0, "Calculated crop size error"

    .line 199
    .line 200
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_8
    :goto_3
    const-string v0, "Math.round(width) < 1 || Math.round(height) < 1 || mMetricsWidth < 1 || mMetricsHeight < 1"

    .line 205
    .line 206
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :cond_9
    :goto_4
    move-object v0, v3

    .line 210
    :goto_5
    if-nez v0, :cond_a

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    :cond_a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    div-int/lit8 p1, p1, 0x2

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    div-int/lit8 v2, v2, 0x2

    .line 231
    .line 232
    const/4 v3, 0x0

    .line 233
    invoke-static {v0, v3, p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 238
    .line 239
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 244
    .line 245
    .line 246
    return-object v0
.end method

.method public final returnToMenu()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderOut:Landroid/view/animation/Animation;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v2, 0x64

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lorg/json/JSONArray;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p2, 0x0

    .line 47
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final setPreferences(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setupBasicPanel()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 5
    .line 6
    const v1, 0x7f0d0049

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupCommonPart()V

    .line 13
    .line 14
    .line 15
    const-string v1, "MEDIA_TOUCH_PAD_ENABLED"

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    const-string v1, "MEDIA_PANEL"

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->displayTouchPadIfNeed()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final setupBrightnessVolumeView(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeType:I

    .line 12
    .line 13
    if-eq v0, p2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->callOnClick()Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->callOnClick()Z

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    if-nez p2, :cond_2

    .line 61
    .line 62
    iget-object v1, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v1, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderOut:Landroid/view/animation/Animation;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Landroid/os/Handler;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda6;

    .line 87
    .line 88
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v2, 0x64

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    .line 95
    .line 96
    :goto_1
    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeType:I

    .line 97
    .line 98
    return-void
.end method

.method public final setupCommonPart()V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDimTouched:Z

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    .line 19
    .line 20
    const-wide/16 v3, 0x1388

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object v0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->finish()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    .line 33
    .line 34
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const v0, 0x7f0a0443

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/GridLayout;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 v0, 0x0

    .line 49
    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 50
    .line 51
    const v0, 0x7f0a0d36

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda5;

    .line 59
    .line 60
    invoke-direct {v4, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v3, "FlexPanelActivity"

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v5, "low_power"

    .line 77
    .line 78
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-ne v4, v2, :cond_4

    .line 83
    .line 84
    move v4, v2

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    move v4, v1

    .line 87
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const-string/jumbo v6, "sem_power_mode_limited_apps_and_home_screen"

    .line 92
    .line 93
    .line 94
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-ne v5, v2, :cond_5

    .line 99
    .line 100
    move v5, v2

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    move v5, v1

    .line 103
    :goto_2
    if-eqz v4, :cond_6

    .line 104
    .line 105
    if-eqz v5, :cond_6

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const/4 v5, 0x5

    .line 113
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->resizeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    new-instance v3, Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 125
    .line 126
    invoke-direct {v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    .line 127
    .line 128
    .line 129
    const/high16 v4, 0x43480000    # 200.0f

    .line 130
    .line 131
    invoke-virtual {v3, v4}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3}, Landroid/view/View;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v5, "IllegalArgumentException : "

    .line 142
    .line 143
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :catch_1
    move-exception v0

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v5, "ClassCastException : "

    .line 165
    .line 166
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catch_2
    move-exception v0

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v5, "NullPointerException : "

    .line 188
    .line 189
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :goto_3
    const v0, 0x7f0a0605

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroid/widget/LinearLayout;

    .line 214
    .line 215
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    .line 216
    .line 217
    const v0, 0x7f0a0444

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Landroid/widget/GridView;

    .line 225
    .line 226
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 227
    .line 228
    const v0, 0x7f0a0c83

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Landroid/widget/LinearLayout;

    .line 236
    .line 237
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mUpperArea:Landroid/widget/LinearLayout;

    .line 238
    .line 239
    const v0, 0x7f0a01b4

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 247
    .line 248
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 249
    .line 250
    iput-object p0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGridUIManager:Lcom/android/wm/shell/controlpanel/GridUIManager;

    .line 251
    .line 252
    new-instance v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 253
    .line 254
    iget-boolean v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 255
    .line 256
    invoke-direct {v0, p0, v3}, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;-><init>(Landroid/content/Context;Z)V

    .line 257
    .line 258
    .line 259
    iput-object p0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 260
    .line 261
    iput-object p0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 262
    .line 263
    iput-object p0, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 264
    .line 265
    const-string v3, "basic_panel_action_list"

    .line 266
    .line 267
    invoke-virtual {p0, v3, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    const-string v5, "edit_panel_action_list"

    .line 276
    .line 277
    invoke-virtual {p0, v5, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    add-int/2addr v6, v4

    .line 286
    sget-object v4, Lcom/android/wm/shell/controlpanel/action/GridItems;->ALL_ACTIONS:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    const-string/jumbo v7, "panel_init"

    .line 293
    .line 294
    .line 295
    if-eq v6, v4, :cond_7

    .line 296
    .line 297
    invoke-virtual {p0, v7, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 298
    .line 299
    .line 300
    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_7
    invoke-virtual {p0, v3, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {p0, v5, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 312
    .line 313
    .line 314
    new-instance v6, Ljava/util/HashSet;

    .line 315
    .line 316
    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-eq v6, v4, :cond_8

    .line 328
    .line 329
    invoke-virtual {p0, v7, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 330
    .line 331
    .line 332
    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    .line 333
    .line 334
    :cond_8
    :goto_4
    iget-boolean v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelInit:Z

    .line 335
    .line 336
    if-eqz v4, :cond_b

    .line 337
    .line 338
    new-instance v1, Ljava/util/ArrayList;

    .line 339
    .line 340
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/GridItems;->ACTIVITY_BASIC:Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    .line 344
    .line 345
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 346
    .line 347
    new-instance v1, Ljava/util/ArrayList;

    .line 348
    .line 349
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/GridItems;->ACTIVITY_EDIT_BASIC:Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 352
    .line 353
    .line 354
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 355
    .line 356
    new-instance v1, Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .line 360
    .line 361
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    if-eqz v4, :cond_9

    .line 372
    .line 373
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    check-cast v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 378
    .line 379
    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_9
    invoke-virtual {p0, v3, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 392
    .line 393
    .line 394
    new-instance v1, Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .line 398
    .line 399
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-eqz v3, :cond_a

    .line 410
    .line 411
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    check-cast v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 416
    .line 417
    invoke-virtual {v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    goto :goto_6

    .line 429
    :cond_a
    invoke-virtual {p0, v5, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_9

    .line 433
    .line 434
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .line 438
    .line 439
    iput-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 440
    .line 441
    new-instance v4, Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .line 445
    .line 446
    iput-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {p0, v3, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    move v4, v1

    .line 457
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-eqz v6, :cond_f

    .line 462
    .line 463
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    check-cast v6, Ljava/lang/String;

    .line 468
    .line 469
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    move-result v7

    .line 473
    sget-object v8, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 474
    .line 475
    invoke-virtual {v8}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 476
    .line 477
    .line 478
    move-result v8

    .line 479
    if-ne v7, v8, :cond_d

    .line 480
    .line 481
    move v4, v2

    .line 482
    :cond_d
    sget-object v7, Lcom/android/wm/shell/controlpanel/action/GridItems;->ALL_ACTIONS:Ljava/util/ArrayList;

    .line 483
    .line 484
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    :cond_e
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 489
    .line 490
    .line 491
    move-result v8

    .line 492
    if-eqz v8, :cond_c

    .line 493
    .line 494
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    check-cast v8, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 499
    .line 500
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    move-result v9

    .line 504
    invoke-virtual {v8}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 505
    .line 506
    .line 507
    move-result v10

    .line 508
    if-ne v9, v10, :cond_e

    .line 509
    .line 510
    iget-object v9, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    goto :goto_7

    .line 516
    :cond_f
    invoke-virtual {p0, v5, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    if-eqz v2, :cond_12

    .line 529
    .line 530
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    check-cast v2, Ljava/lang/String;

    .line 535
    .line 536
    sget-object v3, Lcom/android/wm/shell/controlpanel/action/GridItems;->ALL_ACTIONS:Ljava/util/ArrayList;

    .line 537
    .line 538
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    :cond_11
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    if-eqz v5, :cond_10

    .line 547
    .line 548
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    check-cast v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 553
    .line 554
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 555
    .line 556
    .line 557
    move-result v6

    .line 558
    invoke-virtual {v5}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    if-ne v6, v7, :cond_11

    .line 563
    .line 564
    iget-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 565
    .line 566
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    goto :goto_8

    .line 570
    :cond_12
    if-nez v4, :cond_13

    .line 571
    .line 572
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 573
    .line 574
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 575
    .line 576
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    :cond_13
    :goto_9
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    .line 580
    .line 581
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    if-eqz v2, :cond_14

    .line 590
    .line 591
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    check-cast v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 596
    .line 597
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    .line 598
    .line 599
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    goto :goto_a

    .line 603
    :cond_14
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 604
    .line 605
    .line 606
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 607
    .line 608
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onGridViewChanged()V

    .line 609
    .line 610
    .line 611
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 612
    .line 613
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 614
    .line 615
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 616
    .line 617
    .line 618
    sget-boolean v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    .line 619
    .line 620
    if-eqz v0, :cond_15

    .line 621
    .line 622
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    .line 623
    .line 624
    const-wide/16 v3, 0x0

    .line 625
    .line 626
    const-wide v5, 0x4000cccccccccccdL    # 2.1

    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    const-wide/16 v7, 0x0

    .line 632
    .line 633
    const-wide v9, 0x4000cccccccccccdL    # 2.1

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    move-object v1, p0

    .line 639
    move-object v2, v0

    .line 640
    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    .line 641
    .line 642
    .line 643
    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mY:I

    .line 644
    .line 645
    int-to-double v1, p0

    .line 646
    const-wide v3, 0x3ff3333333333333L    # 1.2

    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    mul-double/2addr v1, v3

    .line 652
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 653
    .line 654
    div-double/2addr v1, v3

    .line 655
    double-to-int p0, v1

    .line 656
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 657
    .line 658
    .line 659
    :cond_15
    return-void
.end method

.method public final setupMediaPanel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isSupportButton(Landroid/media/session/MediaController;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBasicPanel()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "MEDIA_PANEL"

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 23
    .line 24
    const v1, 0x7f0d00eb

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupCommonPart()V

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a063b

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 45
    .line 46
    const v2, 0x7f0a063a

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/widget/LinearLayout;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 56
    .line 57
    invoke-direct {v1, p0, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/media/session/MediaController;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->onMediaControllerConnected(Landroid/media/session/MediaController;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$14;

    .line 86
    .line 87
    invoke-direct {v2, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$14;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad()V

    .line 94
    .line 95
    .line 96
    const-string v1, "MEDIA_TOUCH_PAD_ENABLED"

    .line 97
    .line 98
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final setupTouchPadMediaPanel()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 6
    .line 7
    const v1, 0x7f0d04e2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupCommonPart()V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a0c14

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 28
    .line 29
    const v2, 0x7f0a0c13

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 39
    .line 40
    invoke-direct {v1, p0, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/media/session/MediaController;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->onMediaControllerConnected(Landroid/media/session/MediaController;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$15;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$15;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "MEDIA_TOUCH_PAD_ENABLED"

    .line 77
    .line 78
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->displayTouchPadIfNeed()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final updateStatusPreferences(Z)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "basic_panel_action_list"

    .line 12
    .line 13
    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArrayForStatusLogging(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 14
    .line 15
    .line 16
    const-string v3, "edit_panel_action_list"

    .line 17
    .line 18
    invoke-virtual {p0, v3, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArrayForStatusLogging(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    sget-object v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 50
    .line 51
    const-string v4, "TOUCH_PAD_ENABLED"

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    const-string v3, "Touchpad on"

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const-string v3, "Touchpad off"

    .line 64
    .line 65
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v3, p0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getLoggingID(ILandroid/content/Context;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 82
    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v3, "F006"

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    .line 99
    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 103
    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-nez p0, :cond_3

    .line 116
    .line 117
    const/4 p0, 0x4

    .line 118
    goto :goto_5

    .line 119
    :cond_3
    const/4 v0, 0x0

    .line 120
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 121
    .line 122
    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .line 124
    .line 125
    move p0, v0

    .line 126
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-ge v0, v2, :cond_6

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const-string v3, "0"

    .line 137
    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_5

    .line 143
    .line 144
    const-string v3, "8"

    .line 145
    .line 146
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-nez v3, :cond_5

    .line 151
    .line 152
    const-string v3, "7"

    .line 153
    .line 154
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    if-eqz v2, :cond_4

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    add-int/lit8 p0, p0, 0x1

    .line 162
    .line 163
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    goto :goto_4

    .line 168
    :catch_1
    move-exception p0

    .line 169
    move v6, v0

    .line 170
    move-object v0, p0

    .line 171
    move p0, v6

    .line 172
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    :cond_6
    :goto_5
    const-string v0, "F007"

    .line 176
    .line 177
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    .line 183
    .line 184
    :cond_7
    return-void
.end method
