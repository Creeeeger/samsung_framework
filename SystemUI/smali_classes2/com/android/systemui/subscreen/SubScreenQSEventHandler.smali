.class public Lcom/android/systemui/subscreen/SubScreenQSEventHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# static fields
.field private static final CUTOUT_HEIGHT:I = 0x42

.field private static final CUTOUT_WIDTH:I = 0x171

.field private static final DEFAULT_COVER_SCREEN_WIDTH:I = 0x2ec

.field private static final DEFAULT_DRAGGING_AREA_HEIGHT:F = 65.4f

.field private static final DEFAULT_DRAGGING_AREA_HEIGHT_IN_CLOCK_FACE:F = 130.8f


# instance fields
.field private mBlockPolicy:Z

.field private final mBlockedSupplier:Ljava/util/function/BooleanSupplier;

.field private final mCancelAnimator:Ljava/lang/Runnable;

.field private final mCollapsePanelRunnable:Ljava/lang/Runnable;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mContextSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

.field private mCoverScreenWidth:I

.field private final mCreatePanelHeightAnimatorAndRunConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

.field private final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDraggingAreaHeight:F

.field private mDraggingAreaHeightInClockFace:F

.field private final mExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

.field private mInSleep:Z

.field private mInitialExpandedHeight:D

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private final mInstantCollapseRunnable:Ljava/lang/Runnable;

.field private mIsBlockedByPalmTouch:Z

.field private mIsFlexMode:Z

.field private mIsGestureMode:Z

.field private mIsHorizontalGesture:Z

.field private mIsInDraggingArea:Z

.field private mIsMultiTouch:Z

.field private mIsNaviBarShowing:Z

.field private mIsRotation0:Z

.field private mIsRotation180:Z

.field private mIsVerticalGesture:Z

.field private final mLayoutParamsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mMaxExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

.field private final mModeChangedListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

.field private final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private final mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private final mPanelExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field private final mPanelFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field private final mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

.field private final mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field private final mScreenRecordingStateProvider:Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;

.field private mShouldBeHandledByInputMonitor:Z

.field private final mSubScreenQsWindowViewSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubScreenTimeOutHelper:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

.field private final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private final mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

.field private mTouchBlockDistance:F

.field private mTouchSlop:F

.field private mTracking:Z

.field private final mUpdatePanelExpansionConsumer:Ljava/util/function/DoubleConsumer;

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWindowManagerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6Hv0HyDtO1jT3kxL8BIEPWtOOMs(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->onPocketModeChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCollapsePanelRunnable(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCollapsePanelRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContextSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mContextSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstantCollapseRunnable(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInstantCollapseRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsGestureMode(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsGestureMode:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsNaviBarShowing(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsNaviBarShowing:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsRotation0(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation0:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsRotation180(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation180:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLayoutParamsSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mLayoutParamsSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPanelExpandedSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/BooleanSupplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPanelLogger(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Lcom/android/systemui/log/SecPanelLogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSubScreenQsWindowViewSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mWindowManagerSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmInSleep(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInSleep:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsFlexMode(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsFlexMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsGestureMode(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsGestureMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsNaviBarShowing(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsNaviBarShowing:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsRotation0(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation0:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsRotation180(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation180:Z

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/function/BooleanSupplier;Landroid/hardware/display/DisplayManager;Ljava/util/function/DoubleSupplier;Ljava/util/function/Supplier;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/navigationbar/NavigationModeController;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Lcom/android/systemui/log/SecPanelLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;Ljava/util/function/Supplier;Lcom/android/systemui/model/SysUiState;Ljava/util/function/DoubleConsumer;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/function/Supplier;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            "Ljava/util/function/BooleanSupplier;",
            "Landroid/hardware/display/DisplayManager;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ljava/util/function/DoubleSupplier;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Lcom/android/systemui/log/SecPanelLogger;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            "Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;",
            ">;",
            "Lcom/android/systemui/model/SysUiState;",
            "Ljava/util/function/DoubleConsumer;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object/from16 v2, p10

    .line 4
    .line 5
    move-object/from16 v3, p16

    .line 6
    .line 7
    move-object/from16 v4, p19

    .line 8
    .line 9
    move-object/from16 v5, p23

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsVerticalGesture:Z

    .line 16
    .line 17
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsMultiTouch:Z

    .line 18
    .line 19
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsHorizontalGesture:Z

    .line 20
    .line 21
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsInDraggingArea:Z

    .line 22
    .line 23
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBlockedByPalmTouch:Z

    .line 24
    .line 25
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTracking:Z

    .line 26
    .line 27
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mBlockPolicy:Z

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    iput-boolean v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mShouldBeHandledByInputMonitor:Z

    .line 31
    .line 32
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsFlexMode:Z

    .line 33
    .line 34
    new-instance v8, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$1;

    .line 35
    .line 36
    invoke-direct {v8, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$1;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    .line 37
    .line 38
    .line 39
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 40
    .line 41
    iput-boolean v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation0:Z

    .line 42
    .line 43
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation180:Z

    .line 44
    .line 45
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;

    .line 46
    .line 47
    invoke-direct {v7, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    .line 48
    .line 49
    .line 50
    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 51
    .line 52
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsGestureMode:Z

    .line 53
    .line 54
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$3;

    .line 55
    .line 56
    invoke-direct {v7, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$3;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    .line 57
    .line 58
    .line 59
    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mModeChangedListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    .line 60
    .line 61
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsNaviBarShowing:Z

    .line 62
    .line 63
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$4;

    .line 64
    .line 65
    invoke-direct {v7, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$4;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    .line 66
    .line 67
    .line 68
    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    .line 69
    .line 70
    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInSleep:Z

    .line 71
    .line 72
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;

    .line 73
    .line 74
    invoke-direct {v7, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    .line 75
    .line 76
    .line 77
    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 78
    .line 79
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$6;

    .line 80
    .line 81
    invoke-direct {v7, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$6;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    .line 82
    .line 83
    .line 84
    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 85
    .line 86
    move-object v7, p1

    .line 87
    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCancelAnimator:Ljava/lang/Runnable;

    .line 88
    .line 89
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCollapsePanelRunnable:Ljava/lang/Runnable;

    .line 90
    .line 91
    move-object v7, p3

    .line 92
    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInstantCollapseRunnable:Ljava/lang/Runnable;

    .line 93
    .line 94
    move-object v7, p4

    .line 95
    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mContextSupplier:Ljava/util/function/Supplier;

    .line 96
    .line 97
    const-class v8, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 98
    .line 99
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    check-cast v8, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 104
    .line 105
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 106
    .line 107
    move-object v8, p5

    .line 108
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCreatePanelHeightAnimatorAndRunConsumer:Ljava/util/function/BiConsumer;

    .line 109
    .line 110
    move-object/from16 v8, p6

    .line 111
    .line 112
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 113
    .line 114
    move-object/from16 v8, p7

    .line 115
    .line 116
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mBlockedSupplier:Ljava/util/function/BooleanSupplier;

    .line 117
    .line 118
    move-object/from16 v8, p8

    .line 119
    .line 120
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 121
    .line 122
    move-object/from16 v8, p9

    .line 123
    .line 124
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 125
    .line 126
    iput-object v2, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mLayoutParamsSupplier:Ljava/util/function/Supplier;

    .line 127
    .line 128
    move-object/from16 v8, p11

    .line 129
    .line 130
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 131
    .line 132
    move-object/from16 v8, p12

    .line 133
    .line 134
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mMaxExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 135
    .line 136
    move-object/from16 v8, p13

    .line 137
    .line 138
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 139
    .line 140
    move-object/from16 v8, p14

    .line 141
    .line 142
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 143
    .line 144
    move-object/from16 v8, p15

    .line 145
    .line 146
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 147
    .line 148
    iput-object v3, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 149
    .line 150
    move-object/from16 v8, p17

    .line 151
    .line 152
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 153
    .line 154
    move-object/from16 v8, p18

    .line 155
    .line 156
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mScreenRecordingStateProvider:Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;

    .line 157
    .line 158
    iput-object v4, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

    .line 159
    .line 160
    move-object/from16 v8, p20

    .line 161
    .line 162
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 163
    .line 164
    move-object/from16 v8, p21

    .line 165
    .line 166
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mUpdatePanelExpansionConsumer:Ljava/util/function/DoubleConsumer;

    .line 167
    .line 168
    move-object/from16 v8, p22

    .line 169
    .line 170
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 171
    .line 172
    iput-object v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mWindowManagerSupplier:Ljava/util/function/Supplier;

    .line 173
    .line 174
    new-instance v8, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    .line 175
    .line 176
    new-instance v9, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    invoke-direct {v9, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v8, v9, p2, v3}, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/systemui/log/SecPanelLogger;)V

    .line 182
    .line 183
    .line 184
    iput-object v8, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    .line 185
    .line 186
    new-instance v1, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    .line 187
    .line 188
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;-><init>(Ljava/util/function/Supplier;Lcom/android/systemui/log/SecPanelLogger;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    .line 189
    .line 190
    .line 191
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenTimeOutHelper:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    .line 192
    .line 193
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    iput-object v2, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 198
    .line 199
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Landroid/content/Context;

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v2, "cover_screen_timeout"

    .line 210
    .line 211
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    iget-object v3, v1, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentObserver:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;

    .line 216
    .line 217
    invoke-virtual {v0, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    .line 219
    .line 220
    iput-object v0, v1, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentResolver:Landroid/content/ContentResolver;

    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->readScreenTimeOut()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    const-string v2, "init: "

    .line 227
    .line 228
    const-string v3, "SubScreenTimeOutHelper"

    .line 229
    .line 230
    invoke-static {v2, v0, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iput v0, v1, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    .line 234
    .line 235
    return-void
.end method

.method private calculateDraggingHeight(ZZ)F
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mScreenRecordingStateProvider:Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;->mTileState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-ne p1, v2, :cond_1

    .line 16
    .line 17
    move p1, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move p1, v0

    .line 20
    :goto_1
    if-nez p1, :cond_2

    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_2
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeight:F

    .line 26
    .line 27
    const/high16 p1, 0x42840000    # 66.0f

    .line 28
    .line 29
    add-float/2addr p0, p1

    .line 30
    goto :goto_2

    .line 31
    :cond_3
    if-eqz v0, :cond_4

    .line 32
    .line 33
    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeightInClockFace:F

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_4
    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeight:F

    .line 37
    .line 38
    :goto_2
    return p0
.end method

.method private calculateIsInDraggingArea(ZF)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchY:F

    .line 2
    .line 3
    cmpg-float p2, v0, p2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-gez p2, :cond_0

    .line 8
    .line 9
    move p2, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p2, v1

    .line 12
    :goto_0
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsNaviBarShowing:Z

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsGestureMode:Z

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchX:F

    .line 25
    .line 26
    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverScreenWidth:I

    .line 27
    .line 28
    add-int/lit16 p0, p0, -0x171

    .line 29
    .line 30
    int-to-float p0, p0

    .line 31
    cmpg-float p0, p1, p0

    .line 32
    .line 33
    if-gez p0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v1

    .line 37
    :goto_1
    move p2, v0

    .line 38
    :cond_2
    return p2
.end method

.method private disposeInputEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private handleDownEvent(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mClockFaceShowing:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCancelAnimator:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchX:F

    .line 11
    .line 12
    iput p2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchY:F

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iput-wide v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialExpandedHeight:D

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsFlexMode:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation180:Z

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->calculateDraggingHeight(ZZ)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->calculateIsInDraggingArea(ZF)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsInDraggingArea:Z

    .line 42
    .line 43
    const-string v1, "ACTION_DOWN: [isClockFaceShowing: "

    .line 44
    .line 45
    const-string v3, "][mIsNaviBarShowing: "

    .line 46
    .line 47
    invoke-static {v1, v0, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsNaviBarShowing:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "][mIsGestureMode: "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsGestureMode:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "][mIsFlexMode: "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsFlexMode:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, "][mIsRotation180: "

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation180:Z

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, "][x: "

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, ", y: "

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, "][draggingHeight: "

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, "][mIsInDraggingArea: "

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsInDraggingArea:Z

    .line 116
    .line 117
    const-string p2, "]"

    .line 118
    .line 119
    invoke-static {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 124
    .line 125
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method private handleMoveEvent(FZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCancelAnimator:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTracking:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsVerticalGesture:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mUpdatePanelExpansionConsumer:Ljava/util/function/DoubleConsumer;

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialExpandedHeight:D

    .line 14
    .line 15
    float-to-double v4, p1

    .line 16
    add-double/2addr v2, v4

    .line 17
    invoke-interface {v1, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 30
    .line 31
    const-string p2, "MotionEvent is intercepted."

    .line 32
    .line 33
    check-cast p1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 39
    .line 40
    const-string p1, "mIsVerticalGesture"

    .line 41
    .line 42
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v0
.end method

.method private handleUpEvent(ZZ)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsVerticalGesture:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsMultiTouch:Z

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    if-nez p2, :cond_3

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    const/16 p2, 0x3e8

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 p2, 0x0

    .line 28
    cmpl-float p2, p1, p2

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mMaxExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 46
    .line 47
    div-double/2addr v4, v6

    .line 48
    cmpl-double p2, v2, v4

    .line 49
    .line 50
    if-lez p2, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    if-lez p2, :cond_1

    .line 56
    .line 57
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCreatePanelHeightAnimatorAndRunConsumer:Ljava/util/function/BiConsumer;

    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {p2, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 73
    .line 74
    .line 75
    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsVerticalGesture:Z

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsHorizontalGesture:Z

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsInDraggingArea:Z

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBlockedByPalmTouch:Z

    .line 82
    .line 83
    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsMultiTouch:Z

    .line 84
    .line 85
    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTracking:Z

    .line 86
    .line 87
    return-void
.end method

.method private needToBlockTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mBlockedSupplier:Ljava/util/function/BooleanSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v2, 0x0

    .line 16
    cmpl-float p1, p1, v2

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    move p1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v3

    .line 25
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInSleep:Z

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v5, v3

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    move v5, v2

    .line 39
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mBlockPolicy:Z

    .line 40
    .line 41
    if-eq v6, v5, :cond_6

    .line 42
    .line 43
    if-eqz v5, :cond_4

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCancelAnimator:Ljava/lang/Runnable;

    .line 50
    .line 51
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 52
    .line 53
    .line 54
    iget-object v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCollapsePanelRunnable:Ljava/lang/Runnable;

    .line 55
    .line 56
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 57
    .line 58
    .line 59
    iput-boolean v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsVerticalGesture:Z

    .line 60
    .line 61
    :cond_4
    if-eqz v5, :cond_5

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    iput-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBlockedByPalmTouch:Z

    .line 66
    .line 67
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v3, "needToBlockTouchEvent: ["

    .line 70
    .line 71
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-boolean v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mBlockPolicy:Z

    .line 75
    .line 76
    const-string v6, " -> "

    .line 77
    .line 78
    const-string v7, "] : blocked["

    .line 79
    .line 80
    invoke-static {v2, v3, v6, v5, v7}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v3, "] : runningFactoryApp["

    .line 84
    .line 85
    const-string v6, " : palmEvent["

    .line 86
    .line 87
    invoke-static {v2, v0, v3, v1, v6}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, "] : inSleep["

    .line 94
    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, "]"

    .line 102
    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 111
    .line 112
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iput-boolean v5, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mBlockPolicy:Z

    .line 118
    .line 119
    :cond_6
    return v5
.end method

.method private onCommonTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->needToBlockTouchEvent(Landroid/view/MotionEvent;)Z

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
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 18
    .line 19
    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 24
    .line 25
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_5

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-eq p1, v4, :cond_4

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    if-eq p1, v4, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    if-eq p1, v0, :cond_4

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchX:F

    .line 45
    .line 46
    sub-float/2addr v0, p1

    .line 47
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchY:F

    .line 48
    .line 49
    sub-float/2addr v2, p1

    .line 50
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    .line 59
    .line 60
    iget-boolean v4, v4, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iget v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchBlockDistance:F

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchSlop:F

    .line 68
    .line 69
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTracking:Z

    .line 70
    .line 71
    if-nez v5, :cond_3

    .line 72
    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    cmpl-float v3, v0, v4

    .line 76
    .line 77
    if-lez v3, :cond_6

    .line 78
    .line 79
    cmpl-float p1, v0, p1

    .line 80
    .line 81
    if-lez p1, :cond_6

    .line 82
    .line 83
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBlockedByPalmTouch:Z

    .line 84
    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleMoveEvent(FZ)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-direct {p0, v3, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleUpEvent(ZZ)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleDownEvent(FF)V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_1
    return v1
.end method

.method private onPocketModeChanged()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mLayoutParamsSupplier:Ljava/util/function/Supplier;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mWindowManagerSupplier:Ljava/util/function/Supplier;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/view/WindowManager;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    .line 33
    .line 34
    iget-boolean v3, v3, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 37
    .line 38
    const-string v5, "onPocketModeChanged: "

    .line 39
    .line 40
    invoke-static {v5, v3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v4, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 52
    .line 53
    or-int/lit8 v4, v4, 0x8

    .line 54
    .line 55
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 59
    .line 60
    and-int/lit8 v4, v4, -0x9

    .line 61
    .line 62
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 63
    .line 64
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenTimeOutHelper:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    const/16 p0, 0x1388

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    .line 75
    .line 76
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v5, "getScreenTimeOutWhenPocketModeChanged: "

    .line 79
    .line 80
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, " : "

    .line 87
    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v4, "SubScreenTimeOutHelper"

    .line 99
    .line 100
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    int-to-long v3, p0

    .line 104
    invoke-virtual {v1, v3, v4}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_2
    return-void
.end method

.method private receiveInputEvent(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    .line 2
    .line 3
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

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
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string/jumbo v1, "quickpanel"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 26
    .line 27
    new-instance p1, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$7;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$7;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 47
    .line 48
    return-void
.end method

.method private registerEvents()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 6
    .line 7
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mModeChangedListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsGestureMode:Z

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 56
    .line 57
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private unregisterEvents()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/List;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mModeChangedListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 55
    .line 56
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private updateResources(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchSlop:F

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f070da8

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-float v0, v0

    .line 24
    iput v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchBlockDistance:F

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-float v0, v0

    .line 42
    const v1, 0x3dcccccd    # 0.1f

    .line 43
    .line 44
    .line 45
    mul-float/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeight:F

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    int-to-float v0, v0

    .line 58
    const v1, 0x3e4ccccd    # 0.2f

    .line 59
    .line 60
    .line 61
    mul-float/2addr v0, v1

    .line 62
    iput v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeightInClockFace:F

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getScreenWidth(Landroid/content/Context;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverScreenWidth:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 77
    .line 78
    const-string/jumbo v0, "updateResources: context is abnormal"

    .line 79
    .line 80
    .line 81
    check-cast p1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const p1, 0x4282cccd    # 65.4f

    .line 87
    .line 88
    .line 89
    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeight:F

    .line 90
    .line 91
    const p1, 0x4302cccd    # 130.8f

    .line 92
    .line 93
    .line 94
    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeightInClockFace:F

    .line 95
    .line 96
    const/16 p1, 0x2ec

    .line 97
    .line 98
    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverScreenWidth:I

    .line 99
    .line 100
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v2, 0x4

    .line 16
    if-ne p1, v2, :cond_1

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 21
    .line 22
    const-string v0, "Back button pressed"

    .line 23
    .line 24
    check-cast p1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCollapsePanelRunnable:Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return v1
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
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
    const-string v1, "SubScreenQSTouchHandler ============================================= "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "    mDraggingAreaHeight = "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeight:F

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "    mIsRotation0 = "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation0:Z

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public getScreenTimeOut()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenTimeOutHelper:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    .line 4
    .line 5
    return p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->needToBlockTouchEvent(Landroid/view/MotionEvent;)Z

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
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 18
    .line 19
    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 24
    .line 25
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x1

    .line 33
    if-eqz v4, :cond_c

    .line 34
    .line 35
    if-eq v4, v5, :cond_a

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    if-eq v4, v6, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    if-eq v4, v0, :cond_a

    .line 42
    .line 43
    const/16 v0, 0x105

    .line 44
    .line 45
    if-eq v4, v0, :cond_1

    .line 46
    .line 47
    const/16 v0, 0x106

    .line 48
    .line 49
    if-eq v4, v0, :cond_1

    .line 50
    .line 51
    const/16 v0, 0x205

    .line 52
    .line 53
    if-eq v4, v0, :cond_1

    .line 54
    .line 55
    const/16 v0, 0x206

    .line 56
    .line 57
    if-eq v4, v0, :cond_1

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v3, "Multi touch is delivered : "

    .line 66
    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-boolean v5, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsMultiTouch:Z

    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mShouldBeHandledByInputMonitor:Z

    .line 91
    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    return v1

    .line 95
    :cond_3
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchX:F

    .line 96
    .line 97
    sub-float/2addr v0, p1

    .line 98
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchY:F

    .line 99
    .line 100
    sub-float/2addr v2, p1

    .line 101
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/high16 v4, 0x40000000    # 2.0f

    .line 110
    .line 111
    mul-float/2addr v4, v0

    .line 112
    cmpl-float v4, p1, v4

    .line 113
    .line 114
    if-lez v4, :cond_4

    .line 115
    .line 116
    iget v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchSlop:F

    .line 117
    .line 118
    cmpl-float v4, p1, v4

    .line 119
    .line 120
    if-lez v4, :cond_4

    .line 121
    .line 122
    iput-boolean v5, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsHorizontalGesture:Z

    .line 123
    .line 124
    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 125
    .line 126
    const-string v6, "mIsHorizontalGesture"

    .line 127
    .line 128
    check-cast v4, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 129
    .line 130
    invoke-virtual {v4, v6}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    .line 134
    .line 135
    iget-boolean v4, v4, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    .line 136
    .line 137
    if-eqz v4, :cond_5

    .line 138
    .line 139
    iget v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchBlockDistance:F

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    iget v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchSlop:F

    .line 143
    .line 144
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTracking:Z

    .line 145
    .line 146
    if-nez v6, :cond_9

    .line 147
    .line 148
    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsMultiTouch:Z

    .line 149
    .line 150
    if-nez v6, :cond_e

    .line 151
    .line 152
    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation0:Z

    .line 153
    .line 154
    if-nez v6, :cond_6

    .line 155
    .line 156
    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsFlexMode:Z

    .line 157
    .line 158
    if-eqz v6, :cond_e

    .line 159
    .line 160
    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation180:Z

    .line 161
    .line 162
    if-eqz v6, :cond_e

    .line 163
    .line 164
    :cond_6
    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsHorizontalGesture:Z

    .line 165
    .line 166
    if-nez v6, :cond_e

    .line 167
    .line 168
    if-nez v3, :cond_7

    .line 169
    .line 170
    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsInDraggingArea:Z

    .line 171
    .line 172
    if-eqz v6, :cond_e

    .line 173
    .line 174
    :cond_7
    if-eqz v3, :cond_8

    .line 175
    .line 176
    move v3, v0

    .line 177
    goto :goto_1

    .line 178
    :cond_8
    move v3, v2

    .line 179
    :goto_1
    cmpl-float v3, v3, v4

    .line 180
    .line 181
    if-lez v3, :cond_e

    .line 182
    .line 183
    cmpl-float p1, v0, p1

    .line 184
    .line 185
    if-lez p1, :cond_e

    .line 186
    .line 187
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBlockedByPalmTouch:Z

    .line 188
    .line 189
    if-nez p1, :cond_e

    .line 190
    .line 191
    :cond_9
    invoke-direct {p0, v2, v5}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleMoveEvent(FZ)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    return p0

    .line 196
    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mShouldBeHandledByInputMonitor:Z

    .line 197
    .line 198
    if-nez p1, :cond_b

    .line 199
    .line 200
    return v1

    .line 201
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 202
    .line 203
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    invoke-direct {p0, v3, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleUpEvent(ZZ)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_c
    xor-int/lit8 p1, v3, 0x1

    .line 212
    .line 213
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mShouldBeHandledByInputMonitor:Z

    .line 214
    .line 215
    if-nez p1, :cond_d

    .line 216
    .line 217
    return v1

    .line 218
    :cond_d
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleDownEvent(FF)V

    .line 219
    .line 220
    .line 221
    :cond_e
    :goto_2
    return v1
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mContextSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->updateResources(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->registerEvents()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->receiveInputEvent(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->disposeInputEvent()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->unregisterEvents()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenTimeOutHelper:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentResolver:Landroid/content/ContentResolver;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentObserver:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->onCommonTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->onCommonTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
