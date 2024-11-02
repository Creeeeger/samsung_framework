.class public final Lcom/android/systemui/screenshot/ScreenshotController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SCREENSHOT_REMOTE_RUNNER:Lcom/android/systemui/screenshot/ScreenshotController$1;

.field public static isAnimationRunning:Z

.field public static isSnackBarShowing:Z

.field public static final mShutterEffectLock:Ljava/lang/Object;


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mCameraSound:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

.field public final mContext:Landroid/window/WindowContext;

.field public final mCopyBroadcastReceiver:Lcom/android/systemui/screenshot/ScreenshotController$2;

.field public mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

.field public mDisplayContextWindowManager:Landroid/view/WindowManager;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mFeedbackController:Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMessageContainerController:Lcom/android/systemui/screenshot/MessageContainerController;

.field public final mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

.field public mNotifiedApps:Ljava/util/List;

.field public final mOnBackInvokedCallback:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;

.field public mPackageName:Ljava/lang/String;

.field public mPresentation:Landroid/app/Presentation;

.field public mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field public mScreenBitmap:Landroid/graphics/Bitmap;

.field public mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

.field public final mScreenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

.field public final mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

.field public final mScreenshotNotificationSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

.field public mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

.field public final mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

.field public mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

.field public mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

.field public final mSepImageCaptureImpl:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

.field public final mWindow:Lcom/android/internal/policy/PhoneWindow;

.field public final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$mfinishDismiss(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "finishDismiss"

    .line 5
    .line 6
    const-string v1, "Screenshot"

    .line 7
    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->mReplyTo:Landroid/os/Messenger;

    .line 19
    .line 20
    sget-boolean v3, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :try_start_0
    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v4, "ignored remote exception"

    .line 33
    .line 34
    invoke-static {v1, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    iput-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->reset()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->removeWindow()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenshotController$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotController;->SCREENSHOT_REMOTE_RUNNER:Lcom/android/systemui/screenshot/ScreenshotController$1;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotNotificationsController;Lcom/android/systemui/screenshot/ScrollCaptureClient;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ImageExporter;Lcom/android/systemui/screenshot/ImageCapture;Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;Lcom/android/systemui/screenshot/ScreenshotDetectionController;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ScrollCaptureController;Lcom/android/systemui/screenshot/LongScreenshotData;Landroid/app/ActivityManager;Lcom/android/systemui/screenshot/TimeoutHandler;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;Lcom/android/systemui/screenshot/ActionIntentExecutor;Landroid/os/UserManager;Lcom/android/systemui/screenshot/AssistContentRequester;Lcom/android/systemui/screenshot/MessageContainerController;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p15

    move-object/from16 v5, p21

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mOnBackInvokedCallback:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;

    const-string v6, ""

    .line 3
    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    .line 4
    new-instance v6, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v7, -0x7fffdc7c

    invoke-direct {v6, v7}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotifiedApps:Ljava/util/List;

    move-object/from16 v7, p3

    .line 6
    iput-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    move-object/from16 v7, p4

    .line 7
    iput-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    .line 8
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v7, p7

    .line 9
    iput-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    move-object/from16 v7, p11

    .line 10
    iput-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 11
    invoke-virtual/range {p14 .. p14}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-object/from16 v7, p17

    .line 12
    iput-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotNotificationSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBgExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v7, p16

    .line 14
    iput-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 15
    iput-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    const/16 v7, 0x1770

    .line 16
    iput v7, v4, Lcom/android/systemui/screenshot/TimeoutHandler;->mDefaultTimeout:I

    .line 17
    new-instance v7, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    .line 18
    iput-object v7, v4, Lcom/android/systemui/screenshot/TimeoutHandler;->mOnTimeout:Ljava/lang/Runnable;

    .line 19
    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v7, p22

    .line 20
    iput-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 21
    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    .line 22
    invoke-virtual {p1, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    const/16 v9, 0x7f4

    const/4 v10, 0x0

    .line 23
    invoke-virtual {v4, v9, v10}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContext;

    iput-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 24
    const-class v9, Landroid/view/WindowManager;

    invoke-virtual {v4, v9}, Landroid/window/WindowContext;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    iput-object v9, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    .line 25
    iput-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v11, p19

    .line 26
    iput-object v11, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mUserManager:Landroid/os/UserManager;

    .line 27
    iput-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mMessageContainerController:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 28
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 29
    invoke-static {}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->getFloatingWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v12, "ScreenshotAnimation"

    .line 30
    invoke-virtual {v11, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    new-instance v11, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v11, v4}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    .line 32
    invoke-virtual {v11, v12}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    const/16 v12, 0xd

    .line 33
    invoke-virtual {v11, v12}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    const v12, 0x106000d

    .line 34
    invoke-virtual {v11, v12}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundDrawableResource(I)V

    .line 35
    iput-object v11, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 36
    invoke-virtual {v11, v9, v10, v10}, Lcom/android/internal/policy/PhoneWindow;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 38
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v6, 0x7f0d0326

    invoke-virtual {v1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenshot/ScreenshotView;

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 39
    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x7f0a0939

    .line 40
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v5, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    const v6, 0x7f0a046f

    .line 41
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    iput-object v1, v5, Lcom/android/systemui/screenshot/MessageContainerController;->guideline:Landroidx/constraintlayout/widget/Guideline;

    .line 42
    iget-object v1, v5, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    move-object v1, v10

    :cond_0
    const v6, 0x7f0a0d66

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v5, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    .line 43
    iget-object v1, v5, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    move-object v1, v10

    :cond_1
    const v6, 0x7f0a0932

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v5, Lcom/android/systemui/screenshot/MessageContainerController;->detectionNoticeView:Landroid/view/ViewGroup;

    .line 44
    iget-object v1, v5, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    move-object v1, v10

    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 45
    iget-object v1, v5, Lcom/android/systemui/screenshot/MessageContainerController;->guideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez v1, :cond_3

    move-object v1, v10

    .line 46
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 47
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 48
    iget-boolean v12, v1, Landroidx/constraintlayout/widget/Guideline;->mFilterRedundantCalls:Z

    if-eqz v12, :cond_4

    iget v12, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    if-nez v12, :cond_4

    goto :goto_0

    .line 49
    :cond_4
    iput v8, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 50
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    :goto_0
    iget-object v1, v5, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    move-object v1, v10

    :cond_5
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 52
    iget-object v1, v5, Lcom/android/systemui/screenshot/MessageContainerController;->detectionNoticeView:Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v10, v1

    :goto_1
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 53
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotController$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/ScreenshotController$5;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 54
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotController$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/ScreenshotController$6;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    .line 55
    iput-object v3, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 56
    iput-object v5, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mCallbacks:Lcom/android/systemui/screenshot/ScreenshotController$6;

    move-object/from16 v3, p18

    .line 57
    iput-object v3, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mActionExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    .line 58
    iput-object v2, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 59
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iput v8, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mDefaultDisplay:I

    .line 61
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 63
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 64
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 65
    invoke-virtual {v11, v1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 66
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object v1

    .line 67
    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 68
    sput-boolean v8, Lcom/android/systemui/screenshot/ScreenshotController;->isAnimationRunning:Z

    move-object/from16 v1, p9

    .line 69
    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSepImageCaptureImpl:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    move-object/from16 v1, p10

    .line 70
    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

    .line 71
    new-instance v1, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;

    invoke-direct {v1, v4}, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mFeedbackController:Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;

    .line 72
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotController$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mCopyBroadcastReceiver:Lcom/android/systemui/screenshot/ScreenshotController$2;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.COPY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.systemui.permission.SELF"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object p0, v4

    move-object p1, v1

    move-object p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move/from16 p5, v5

    invoke-virtual/range {p0 .. p5}, Landroid/window/WindowContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final attachSemScreenshotLayoutToWindow()V
    .locals 9

    .line 1
    const-string v0, "mScreenshotLayout "

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "Screenshot"

    .line 7
    .line 8
    const-string v3, "attachSemScreenshotLayoutToWindow"

    .line 9
    .line 10
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/android/systemui/screenshot/sep/ScreenshotViewUtils;->getLayoutParams(Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    const-string v3, "ScreenshotAnimation"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 27
    .line 28
    iget v4, v4, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 29
    .line 30
    const v5, 0x7f0a0d3d

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Landroid/widget/ImageView;

    .line 38
    .line 39
    iput-object v5, v3, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iput v4, v3, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenDegrees:F

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 48
    .line 49
    iget v3, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    .line 50
    .line 51
    sget-object v4, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 52
    .line 53
    const-string v5, "WATCHFACE"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x0

    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    if-ne v3, v4, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v4, v5

    .line 67
    :goto_0
    if-eqz v4, :cond_1

    .line 68
    .line 69
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 70
    .line 71
    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 72
    .line 73
    invoke-virtual {v4, v6}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->addCaptureEffectViewInLayout(Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)V

    .line 74
    .line 75
    .line 76
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 77
    .line 78
    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getDisplay(ILandroid/content/Context;)Landroid/view/Display;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPresentation:Landroid/app/Presentation;

    .line 85
    .line 86
    if-nez v4, :cond_2

    .line 87
    .line 88
    new-instance v4, Landroid/app/Presentation;

    .line 89
    .line 90
    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 91
    .line 92
    const/16 v7, 0x968

    .line 93
    .line 94
    const v8, 0x7f1404c0

    .line 95
    .line 96
    .line 97
    invoke-direct {v4, v6, v3, v8, v7}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    .line 98
    .line 99
    .line 100
    iput-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPresentation:Landroid/app/Presentation;

    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    const v4, 0x4200588

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    const/4 v6, 0x3

    .line 122
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4}, Landroid/view/View;->getSystemUiVisibility()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    or-int/lit16 v6, v6, 0x400

    .line 133
    .line 134
    or-int/lit8 v6, v6, 0x2

    .line 135
    .line 136
    invoke-virtual {v4, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 140
    .line 141
    invoke-virtual {v3, v4, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 145
    .line 146
    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPresentation:Landroid/app/Presentation;

    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/app/Presentation;->show()V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 159
    .line 160
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 161
    .line 162
    invoke-virtual {v3, v4}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->addCaptureEffectViewInLayout(Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)V

    .line 163
    .line 164
    .line 165
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 166
    .line 167
    iget-object v3, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 168
    .line 169
    const-string/jumbo v4, "window"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Landroid/view/WindowManager;

    .line 177
    .line 178
    iput-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayContextWindowManager:Landroid/view/WindowManager;

    .line 179
    .line 180
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 181
    .line 182
    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :catch_0
    move-exception v2

    .line 187
    :try_start_2
    const-string v3, "Screenshot"

    .line 188
    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 195
    .line 196
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {v3, p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .line 205
    .line 206
    :cond_2
    :goto_1
    monitor-exit v1

    .line 207
    return-void

    .line 208
    :catchall_0
    move-exception p0

    .line 209
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    throw p0
.end method

.method public final detachSemScreenshotLayoutToWindow()V
    .locals 2

    .line 1
    const-string v0, "Screenshot"

    .line 2
    .line 3
    const-string v1, "detachSemScreenshotLayoutToWindow"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPresentation:Landroid/app/Presentation;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPresentation:Landroid/app/Presentation;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayContextWindowManager:Landroid/view/WindowManager;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 51
    .line 52
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public final dismissScreenshot(Lcom/android/systemui/screenshot/ScreenshotEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mSwipeDismissHandler:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 27
    .line 28
    invoke-interface {v2, p1, v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mSwipeDismissHandler:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 44
    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(Landroid/util/DisplayMetrics;F)F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->createSwipeDismissAnimation(F)Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    new-instance v0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$1;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$1;-><init>(Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final handleScreenshot(Lcom/android/systemui/screenshot/ScreenshotData;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;Ljava/util/function/Consumer;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v3, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 8
    .line 9
    .line 10
    move-object/from16 v0, p2

    .line 11
    .line 12
    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "handleScreenshot: screenshot.getType()="

    .line 17
    .line 18
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v4, v2, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 22
    .line 23
    const-string v5, "Screenshot"

    .line 24
    .line 25
    invoke-static {v0, v4, v5}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v0, v2, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 29
    .line 30
    const-string v4, "ignored remote exception"

    .line 31
    .line 32
    const/4 v6, 0x2

    .line 33
    const/4 v7, 0x1

    .line 34
    const/4 v8, 0x3

    .line 35
    const/4 v9, 0x0

    .line 36
    if-ne v0, v8, :cond_3

    .line 37
    .line 38
    iget-boolean v8, v2, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    .line 39
    .line 40
    if-nez v8, :cond_0

    .line 41
    .line 42
    iget-boolean v8, v2, Lcom/android/systemui/screenshot/ScreenshotData;->secureLayer:Z

    .line 43
    .line 44
    if-eqz v8, :cond_3

    .line 45
    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "handleScreenshot: disable screenshot on managed profile., disableCapture="

    .line 49
    .line 50
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v3, v2, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, ", secureLayer="

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-boolean v3, v2, Lcom/android/systemui/screenshot/ScreenshotData;->secureLayer:Z

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-boolean v0, v2, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    const/16 v0, 0x40

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/16 v0, 0x20

    .line 83
    .line 84
    :goto_0
    new-instance v2, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;

    .line 85
    .line 86
    invoke-direct {v2, v9, v0, v9, v9}, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotController;->showScreenshotErrorMessage(Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    .line 97
    .line 98
    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->mReplyTo:Landroid/os/Messenger;

    .line 99
    .line 100
    sget-boolean v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    .line 101
    .line 102
    :try_start_0
    invoke-static {v9, v7, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-static {v5, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    :goto_1
    :try_start_1
    invoke-static {v9, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catch_1
    move-exception v0

    .line 123
    invoke-static {v5, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    :cond_2
    :goto_2
    return-void

    .line 127
    :cond_3
    const/16 v8, 0x64

    .line 128
    .line 129
    const/4 v9, 0x0

    .line 130
    if-eq v0, v7, :cond_5

    .line 131
    .line 132
    if-eq v0, v6, :cond_5

    .line 133
    .line 134
    if-eq v0, v8, :cond_5

    .line 135
    .line 136
    const/16 v6, 0x65

    .line 137
    .line 138
    if-ne v0, v6, :cond_4

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    move-object/from16 v23, v3

    .line 142
    .line 143
    goto/16 :goto_13

    .line 144
    .line 145
    :cond_5
    :goto_3
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 146
    .line 147
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 148
    .line 149
    .line 150
    iget-object v6, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object v7, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 156
    .line 157
    invoke-virtual {v7, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-virtual {v7, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 162
    .line 163
    .line 164
    new-instance v7, Landroid/graphics/Rect;

    .line 165
    .line 166
    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 167
    .line 168
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 169
    .line 170
    invoke-direct {v7, v9, v9, v10, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 177
    .line 178
    iget-object v6, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mSepImageCaptureImpl:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    .line 179
    .line 180
    iget-object v10, v6, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->context:Landroid/content/Context;

    .line 181
    .line 182
    if-eqz v10, :cond_8

    .line 183
    .line 184
    invoke-static {v10}, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->isEdgePanelPresent(Landroid/content/Context;)Z

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    if-nez v11, :cond_6

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_6
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    sget-object v13, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->HANDLER_TRANSPARENCY_CONTENT_URI:Landroid/net/Uri;

    .line 196
    .line 197
    const/4 v14, 0x0

    .line 198
    const/4 v15, 0x0

    .line 199
    const/16 v16, 0x0

    .line 200
    .line 201
    const/16 v17, 0x0

    .line 202
    .line 203
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    if-eqz v11, :cond_9

    .line 208
    .line 209
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    if-eqz v12, :cond_7

    .line 214
    .line 215
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    if-eqz v12, :cond_7

    .line 220
    .line 221
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 222
    .line 223
    .line 224
    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    goto :goto_4

    .line 226
    :cond_7
    move v12, v9

    .line 227
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 233
    .line 234
    .line 235
    throw v0

    .line 236
    :cond_8
    sget-object v11, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->HANDLER_TRANSPARENCY_CONTENT_URI:Landroid/net/Uri;

    .line 237
    .line 238
    :cond_9
    :goto_5
    move v12, v9

    .line 239
    :goto_6
    invoke-static {v10}, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->isEdgePanelPresent(Landroid/content/Context;)Z

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    if-eqz v11, :cond_a

    .line 244
    .line 245
    const-string v11, "Hide edge panel"

    .line 246
    .line 247
    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    invoke-static {v8, v10}, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->resetEdgeTransparency(ILandroid/content/Context;)V

    .line 251
    .line 252
    .line 253
    const-wide/16 v13, 0x64

    .line 254
    .line 255
    :try_start_3
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 256
    .line 257
    .line 258
    goto :goto_7

    .line 259
    :catch_2
    const-string v8, "InterruptedException occurred"

    .line 260
    .line 261
    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    :cond_a
    :goto_7
    const-string/jumbo v8, "semCaptureDisplay: takeScreenshot result, bitmapIsNull="

    .line 265
    .line 266
    .line 267
    iget v14, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    .line 268
    .line 269
    iget v11, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    .line 270
    .line 271
    sget-object v13, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    const/4 v15, -0x2

    .line 278
    move-object/from16 v23, v3

    .line 279
    .line 280
    const-string v3, "any_screen_running"

    .line 281
    .line 282
    invoke-static {v13, v3, v9, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    const/4 v13, 0x1

    .line 287
    if-ne v3, v13, :cond_b

    .line 288
    .line 289
    const/4 v3, 0x1

    .line 290
    goto :goto_8

    .line 291
    :cond_b
    move v3, v9

    .line 292
    :goto_8
    if-eqz v3, :cond_c

    .line 293
    .line 294
    const/16 v3, 0xa28

    .line 295
    .line 296
    const/4 v9, 0x1

    .line 297
    goto :goto_9

    .line 298
    :cond_c
    const/16 v3, 0x7df

    .line 299
    .line 300
    :goto_9
    const/16 v13, 0x64

    .line 301
    .line 302
    if-ne v11, v13, :cond_d

    .line 303
    .line 304
    const/4 v3, 0x1

    .line 305
    :cond_d
    move v15, v3

    .line 306
    invoke-virtual {v0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getScreenshotRectToCapture()Landroid/graphics/Rect;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    iget-boolean v11, v6, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->useIdentityTransform:Z

    .line 311
    .line 312
    if-eqz v11, :cond_e

    .line 313
    .line 314
    iget v13, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    .line 315
    .line 316
    float-to-int v13, v13

    .line 317
    goto :goto_a

    .line 318
    :cond_e
    iget v13, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    .line 319
    .line 320
    :goto_a
    move/from16 v18, v13

    .line 321
    .line 322
    if-eqz v11, :cond_f

    .line 323
    .line 324
    iget v13, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    .line 325
    .line 326
    float-to-int v13, v13

    .line 327
    goto :goto_b

    .line 328
    :cond_f
    iget v13, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    .line 329
    .line 330
    :goto_b
    move/from16 v19, v13

    .line 331
    .line 332
    const-string/jumbo v13, "semCaptureDisplay: takeScreenshot param, builtInDisplayId="

    .line 333
    .line 334
    .line 335
    move-object/from16 p2, v4

    .line 336
    .line 337
    const-string v4, ", targetWindowType="

    .line 338
    .line 339
    const-string v1, ", containTargetWindow="

    .line 340
    .line 341
    invoke-static {v13, v14, v4, v15, v1}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v4, ", rectToCapture="

    .line 349
    .line 350
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    iget-object v4, v6, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->TAG:Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    :try_start_4
    iget-object v13, v6, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->windowManager:Landroid/view/IWindowManager;

    .line 366
    .line 367
    iget-boolean v1, v6, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->useIdentityTransform:Z

    .line 368
    .line 369
    const/16 v21, 0x0

    .line 370
    .line 371
    const/16 v22, 0x1

    .line 372
    .line 373
    move/from16 v16, v9

    .line 374
    .line 375
    move-object/from16 v17, v3

    .line 376
    .line 377
    move/from16 v20, v1

    .line 378
    .line 379
    invoke-interface/range {v13 .. v22}, Landroid/view/IWindowManager;->takeScreenshotToTargetWindowFromCapture(IIZLandroid/graphics/Rect;IIZZZ)Lcom/samsung/android/view/ScreenshotResult;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v1}, Lcom/samsung/android/view/ScreenshotResult;->getCapturedBitmap()Landroid/graphics/Bitmap;

    .line 384
    .line 385
    .line 386
    move-result-object v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 387
    :try_start_5
    invoke-virtual {v1}, Lcom/samsung/android/view/ScreenshotResult;->getFailedReason()I

    .line 388
    .line 389
    .line 390
    move-result v9
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 391
    :try_start_6
    invoke-virtual {v1}, Lcom/samsung/android/view/ScreenshotResult;->getSecuredWindowName()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v13
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 395
    :try_start_7
    invoke-virtual {v1}, Lcom/samsung/android/view/ScreenshotResult;->getTargetWindowName()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 399
    if-nez v3, :cond_10

    .line 400
    .line 401
    const/4 v14, 0x1

    .line 402
    goto :goto_c

    .line 403
    :cond_10
    const/4 v14, 0x0

    .line 404
    :goto_c
    :try_start_8
    new-instance v15, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v8, ", failedReason="

    .line 413
    .line 414
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v8, ", resultSecuredWindowName="

    .line 421
    .line 422
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string v8, ", resultTargetWindowName="

    .line 429
    .line 430
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v8

    .line 440
    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    const/16 v8, 0x40

    .line 444
    .line 445
    if-ne v9, v8, :cond_13

    .line 446
    .line 447
    iget-object v8, v6, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 448
    .line 449
    const/4 v14, -0x1

    .line 450
    const/4 v15, 0x0

    .line 451
    invoke-virtual {v8, v15, v14}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    .line 452
    .line 453
    .line 454
    move-result v8

    .line 455
    if-eqz v8, :cond_11

    .line 456
    .line 457
    const-string/jumbo v6, "semCaptureDisplay: screenshot disabled by dpm."

    .line 458
    .line 459
    .line 460
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    goto :goto_e

    .line 464
    :cond_11
    invoke-static {v10}, Lcom/android/systemui/screenshot/sep/EdmUtils;->isScreenCaptureEnabled(Landroid/content/Context;)Z

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    if-eqz v8, :cond_13

    .line 469
    .line 470
    new-instance v8, Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 471
    .line 472
    invoke-direct {v8}, Landroid/window/ScreenCapture$CaptureArgs$Builder;-><init>()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v8, v7}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 476
    .line 477
    .line 478
    move-result-object v8

    .line 479
    invoke-virtual {v8}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->build()Landroid/window/ScreenCapture$CaptureArgs;

    .line 480
    .line 481
    .line 482
    move-result-object v8

    .line 483
    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    .line 484
    .line 485
    .line 486
    move-result-object v14

    .line 487
    iget-object v6, v6, Lcom/android/systemui/screenshot/ImageCaptureImpl;->windowManager:Landroid/view/IWindowManager;

    .line 488
    .line 489
    const/4 v15, 0x0

    .line 490
    invoke-interface {v6, v15, v8, v14}, Landroid/view/IWindowManager;->captureDisplay(ILandroid/window/ScreenCapture$CaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v14}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    if-eqz v6, :cond_12

    .line 498
    .line 499
    invoke-virtual {v6}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    .line 500
    .line 501
    .line 502
    move-result-object v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    .line 503
    goto :goto_e

    .line 504
    :cond_12
    const/4 v3, 0x0

    .line 505
    goto :goto_e

    .line 506
    :catch_3
    const/4 v1, 0x0

    .line 507
    goto :goto_d

    .line 508
    :catch_4
    const/4 v3, 0x0

    .line 509
    :catch_5
    const/4 v9, 0x0

    .line 510
    :catch_6
    const/4 v1, 0x0

    .line 511
    const/4 v13, 0x0

    .line 512
    :catch_7
    :goto_d
    const-string v6, "RemoteException is occurred."

    .line 513
    .line 514
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    :cond_13
    :goto_e
    move-object/from16 v24, v13

    .line 518
    .line 519
    move-object v13, v3

    .line 520
    move-object/from16 v3, v24

    .line 521
    .line 522
    if-eqz v11, :cond_15

    .line 523
    .line 524
    iget v4, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    .line 525
    .line 526
    const/4 v6, 0x0

    .line 527
    cmpl-float v6, v4, v6

    .line 528
    .line 529
    if-lez v6, :cond_15

    .line 530
    .line 531
    new-instance v6, Landroid/graphics/Matrix;

    .line 532
    .line 533
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 537
    .line 538
    .line 539
    if-eqz v13, :cond_14

    .line 540
    .line 541
    const/4 v14, 0x0

    .line 542
    const/4 v15, 0x0

    .line 543
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    .line 544
    .line 545
    .line 546
    move-result v16

    .line 547
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    .line 548
    .line 549
    .line 550
    move-result v17

    .line 551
    const/16 v19, 0x0

    .line 552
    .line 553
    move-object/from16 v18, v6

    .line 554
    .line 555
    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 556
    .line 557
    .line 558
    move-result-object v13

    .line 559
    goto :goto_f

    .line 560
    :cond_14
    const/4 v13, 0x0

    .line 561
    :cond_15
    :goto_f
    if-eqz v13, :cond_16

    .line 562
    .line 563
    invoke-virtual {v0, v13}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->onPostScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    goto :goto_10

    .line 568
    :cond_16
    const/4 v0, 0x0

    .line 569
    :goto_10
    new-instance v4, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;

    .line 570
    .line 571
    invoke-direct {v4, v0, v9, v1, v3}, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-static {v10}, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->isEdgePanelPresent(Landroid/content/Context;)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_17

    .line 579
    .line 580
    const-string v0, "Show edge panel"

    .line 581
    .line 582
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .line 584
    .line 585
    invoke-static {v12, v10}, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->resetEdgeTransparency(ILandroid/content/Context;)V

    .line 586
    .line 587
    .line 588
    :cond_17
    iget-object v0, v4, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->bitmap:Landroid/graphics/Bitmap;

    .line 589
    .line 590
    iput-object v0, v2, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 591
    .line 592
    if-nez v0, :cond_19

    .line 593
    .line 594
    const-string v0, "handleScreenshot: Screenshot bitmap was null"

    .line 595
    .line 596
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    move-object/from16 v1, p0

    .line 600
    .line 601
    invoke-virtual {v1, v4}, Lcom/android/systemui/screenshot/ScreenshotController;->showScreenshotErrorMessage(Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V

    .line 602
    .line 603
    .line 604
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 605
    .line 606
    if-eqz v0, :cond_18

    .line 607
    .line 608
    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    .line 609
    .line 610
    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->mReplyTo:Landroid/os/Messenger;

    .line 611
    .line 612
    sget-boolean v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    .line 613
    .line 614
    const/4 v0, 0x1

    .line 615
    const/4 v2, 0x0

    .line 616
    :try_start_9
    invoke-static {v2, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    .line 621
    .line 622
    .line 623
    move-object/from16 v2, p2

    .line 624
    .line 625
    goto :goto_11

    .line 626
    :catch_8
    move-exception v0

    .line 627
    move-object/from16 v2, p2

    .line 628
    .line 629
    invoke-static {v5, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    .line 631
    .line 632
    :goto_11
    const/4 v0, 0x2

    .line 633
    const/4 v3, 0x0

    .line 634
    :try_start_a
    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_9

    .line 639
    .line 640
    .line 641
    goto :goto_12

    .line 642
    :catch_9
    move-exception v0

    .line 643
    invoke-static {v5, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    .line 645
    .line 646
    :cond_18
    :goto_12
    return-void

    .line 647
    :cond_19
    move-object/from16 v1, p0

    .line 648
    .line 649
    iput-object v7, v2, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    .line 650
    .line 651
    :goto_13
    const-string v0, "ScreenshotController_getSmartClipWebData"

    .line 652
    .line 653
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    const/4 v0, 0x0

    .line 657
    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    .line 658
    .line 659
    :try_start_b
    new-instance v0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 660
    .line 661
    move-object/from16 v3, v23

    .line 662
    .line 663
    :try_start_c
    invoke-direct {v0, v3}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 664
    .line 665
    .line 666
    const/4 v0, 0x1

    .line 667
    goto :goto_15

    .line 668
    :catch_a
    move-exception v0

    .line 669
    goto :goto_14

    .line 670
    :catch_b
    move-exception v0

    .line 671
    move-object/from16 v3, v23

    .line 672
    .line 673
    :goto_14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    const-string v6, "isSupportSmartClip, exxception occurred : "

    .line 676
    .line 677
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .line 693
    .line 694
    const/4 v0, 0x0

    .line 695
    :goto_15
    if-nez v0, :cond_1a

    .line 696
    .line 697
    const-string v0, "canExtractWebData : SmartClip is not supported"

    .line 698
    .line 699
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .line 701
    .line 702
    goto :goto_17

    .line 703
    :cond_1a
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 712
    .line 713
    const/4 v4, 0x1

    .line 714
    if-ne v0, v4, :cond_1b

    .line 715
    .line 716
    move v0, v4

    .line 717
    goto :goto_16

    .line 718
    :cond_1b
    const/4 v0, 0x0

    .line 719
    :goto_16
    if-ne v0, v4, :cond_1c

    .line 720
    .line 721
    const-string v0, "canExtractWebData : Desktop mode enabled"

    .line 722
    .line 723
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .line 725
    .line 726
    :goto_17
    const/4 v0, 0x1

    .line 727
    goto :goto_19

    .line 728
    :cond_1c
    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    .line 729
    .line 730
    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    const-string v4, "isMultiWindowStyleAppExist : mode = "

    .line 738
    .line 739
    invoke-static {v4, v0, v5}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 740
    .line 741
    .line 742
    if-nez v0, :cond_1d

    .line 743
    .line 744
    const/4 v0, 0x0

    .line 745
    goto :goto_18

    .line 746
    :cond_1d
    and-int/lit8 v4, v0, 0x1

    .line 747
    .line 748
    if-eqz v4, :cond_1e

    .line 749
    .line 750
    const-string v4, "isMultiWindowStyleAppExist : MODE_FREEFORM"

    .line 751
    .line 752
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .line 754
    .line 755
    :cond_1e
    and-int/lit8 v4, v0, 0x4

    .line 756
    .line 757
    if-eqz v4, :cond_1f

    .line 758
    .line 759
    const-string v4, "isMultiWindowStyleAppExist : MODE_PICTURE_IN_PICTURE"

    .line 760
    .line 761
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .line 763
    .line 764
    :cond_1f
    and-int/lit8 v0, v0, 0x2

    .line 765
    .line 766
    if-eqz v0, :cond_20

    .line 767
    .line 768
    const-string v0, "isMultiWindowStyleAppExist : MODE_SPLIT_SCREEN"

    .line 769
    .line 770
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    .line 772
    .line 773
    :cond_20
    const/4 v0, 0x1

    .line 774
    :goto_18
    const/4 v4, 0x1

    .line 775
    if-ne v0, v4, :cond_21

    .line 776
    .line 777
    const-string v0, "canExtractWebData : MultiWindow style app exists"

    .line 778
    .line 779
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .line 781
    .line 782
    move v0, v4

    .line 783
    :goto_19
    const/4 v4, 0x0

    .line 784
    goto :goto_1a

    .line 785
    :cond_21
    move v0, v4

    .line 786
    :goto_1a
    if-ne v4, v0, :cond_32

    .line 787
    .line 788
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 789
    .line 790
    iget v4, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    .line 791
    .line 792
    iget v0, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    .line 793
    .line 794
    div-int/lit8 v4, v4, 0x2

    .line 795
    .line 796
    div-int/lit8 v0, v0, 0x2

    .line 797
    .line 798
    new-instance v6, Landroid/graphics/Rect;

    .line 799
    .line 800
    add-int/lit8 v7, v4, 0x1

    .line 801
    .line 802
    add-int/lit8 v8, v0, 0x1

    .line 803
    .line 804
    invoke-direct {v6, v4, v0, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 805
    .line 806
    .line 807
    const-string/jumbo v0, "spengestureservice"

    .line 808
    .line 809
    .line 810
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 815
    .line 816
    const/4 v4, 0x1

    .line 817
    const/4 v7, 0x0

    .line 818
    invoke-virtual {v0, v6, v7, v4, v4}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    if-nez v0, :cond_22

    .line 823
    .line 824
    const-string v0, "getWebData : Failed to extract the SmartClip data"

    .line 825
    .line 826
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    .line 828
    .line 829
    goto/16 :goto_25

    .line 830
    .line 831
    :cond_22
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentRect()Landroid/graphics/Rect;

    .line 832
    .line 833
    .line 834
    move-result-object v4

    .line 835
    if-eqz v4, :cond_23

    .line 836
    .line 837
    new-instance v6, Ljava/lang/StringBuilder;

    .line 838
    .line 839
    const-string v8, "getWebData : content Rect w="

    .line 840
    .line 841
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 845
    .line 846
    .line 847
    move-result v8

    .line 848
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    const-string v8, ", h="

    .line 852
    .line 853
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 857
    .line 858
    .line 859
    move-result v8

    .line 860
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    const-string v8, " "

    .line 864
    .line 865
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v4

    .line 875
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .line 877
    .line 878
    :cond_23
    const-string/jumbo v4, "url"

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0, v4}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    .line 882
    .line 883
    .line 884
    move-result-object v4

    .line 885
    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    .line 886
    .line 887
    .line 888
    move-result v6

    .line 889
    if-lez v6, :cond_31

    .line 890
    .line 891
    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    .line 892
    .line 893
    .line 894
    move-result-object v4

    .line 895
    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 896
    .line 897
    .line 898
    move-result v6

    .line 899
    const-string v8, "https://"

    .line 900
    .line 901
    const-string v9, "http://"

    .line 902
    .line 903
    if-eqz v6, :cond_27

    .line 904
    .line 905
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v6

    .line 909
    check-cast v6, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 910
    .line 911
    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v6

    .line 915
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v10

    .line 919
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 920
    .line 921
    .line 922
    move-result v11

    .line 923
    if-nez v11, :cond_26

    .line 924
    .line 925
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 926
    .line 927
    .line 928
    move-result v10

    .line 929
    if-eqz v10, :cond_25

    .line 930
    .line 931
    goto :goto_1b

    .line 932
    :cond_25
    const/4 v10, 0x0

    .line 933
    goto :goto_1c

    .line 934
    :cond_26
    :goto_1b
    const/4 v10, 0x1

    .line 935
    :goto_1c
    const/4 v11, 0x1

    .line 936
    if-ne v10, v11, :cond_24

    .line 937
    .line 938
    goto :goto_1d

    .line 939
    :cond_27
    move-object v6, v7

    .line 940
    :goto_1d
    new-instance v4, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    .line 941
    .line 942
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getAppPackageName()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    invoke-direct {v4, v6, v0}, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    iget-object v0, v4, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    .line 950
    .line 951
    if-eqz v0, :cond_2f

    .line 952
    .line 953
    iget-object v6, v4, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    .line 954
    .line 955
    if-nez v6, :cond_28

    .line 956
    .line 957
    goto :goto_22

    .line 958
    :cond_28
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 963
    .line 964
    .line 965
    move-result v9

    .line 966
    if-nez v9, :cond_2a

    .line 967
    .line 968
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 969
    .line 970
    .line 971
    move-result v0

    .line 972
    if-eqz v0, :cond_29

    .line 973
    .line 974
    goto :goto_1e

    .line 975
    :cond_29
    const/4 v0, 0x0

    .line 976
    goto :goto_1f

    .line 977
    :cond_2a
    :goto_1e
    const/4 v0, 0x1

    .line 978
    :goto_1f
    if-nez v0, :cond_2b

    .line 979
    .line 980
    const-string v0, "isValidWebData : Not valid url"

    .line 981
    .line 982
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    .line 984
    .line 985
    goto :goto_23

    .line 986
    :cond_2b
    sget-object v0, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    .line 987
    .line 988
    const/4 v8, 0x0

    .line 989
    :goto_20
    const/4 v9, 0x3

    .line 990
    if-ge v8, v9, :cond_2d

    .line 991
    .line 992
    aget-object v9, v0, v8

    .line 993
    .line 994
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 995
    .line 996
    .line 997
    move-result v9

    .line 998
    const/4 v10, 0x1

    .line 999
    if-ne v9, v10, :cond_2c

    .line 1000
    .line 1001
    const/4 v0, 0x1

    .line 1002
    goto :goto_21

    .line 1003
    :cond_2c
    add-int/lit8 v8, v8, 0x1

    .line 1004
    .line 1005
    goto :goto_20

    .line 1006
    :cond_2d
    const/4 v0, 0x0

    .line 1007
    :goto_21
    if-nez v0, :cond_2e

    .line 1008
    .line 1009
    const-string v0, "isValidWebData : Not white app"

    .line 1010
    .line 1011
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    .line 1013
    .line 1014
    goto :goto_23

    .line 1015
    :cond_2e
    const/4 v0, 0x1

    .line 1016
    goto :goto_24

    .line 1017
    :cond_2f
    :goto_22
    const-string v0, "isValidWebData : url or appPkgName is null"

    .line 1018
    .line 1019
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    .line 1021
    .line 1022
    :goto_23
    const/4 v0, 0x0

    .line 1023
    :goto_24
    if-nez v0, :cond_30

    .line 1024
    .line 1025
    const-string v0, "getWebData : Invalid web data"

    .line 1026
    .line 1027
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .line 1029
    .line 1030
    goto :goto_25

    .line 1031
    :cond_30
    move-object v7, v4

    .line 1032
    :cond_31
    :goto_25
    iput-object v7, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    .line 1033
    .line 1034
    if-eqz v7, :cond_32

    .line 1035
    .line 1036
    const-string v0, "handleScreenshot: mWebData is extracted."

    .line 1037
    .line 1038
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .line 1040
    .line 1041
    :cond_32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1042
    .line 1043
    .line 1044
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

    .line 1045
    .line 1046
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    .line 1048
    .line 1049
    iget v4, v2, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    .line 1050
    .line 1051
    const/4 v6, 0x3

    .line 1052
    if-ne v4, v6, :cond_33

    .line 1053
    .line 1054
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 1055
    .line 1056
    goto :goto_28

    .line 1057
    :cond_33
    iget-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotDetectionController;->windowManager:Landroid/view/IWindowManager;

    .line 1058
    .line 1059
    const/4 v6, 0x0

    .line 1060
    invoke-interface {v4, v6}, Landroid/view/IWindowManager;->notifyScreenshotListeners(I)Ljava/util/List;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v4

    .line 1064
    new-instance v6, Ljava/util/ArrayList;

    .line 1065
    .line 1066
    const/16 v7, 0xa

    .line 1067
    .line 1068
    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1069
    .line 1070
    .line 1071
    move-result v7

    .line 1072
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1073
    .line 1074
    .line 1075
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v4

    .line 1079
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v7

    .line 1083
    if-eqz v7, :cond_36

    .line 1084
    .line 1085
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v7

    .line 1089
    check-cast v7, Landroid/content/ComponentName;

    .line 1090
    .line 1091
    const-wide/16 v8, 0x200

    .line 1092
    .line 1093
    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v10

    .line 1097
    iget-object v11, v0, Lcom/android/systemui/screenshot/ScreenshotDetectionController;->packageManager:Landroid/content/pm/PackageManager;

    .line 1098
    .line 1099
    invoke-virtual {v11, v7, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v10

    .line 1103
    invoke-virtual {v10, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v10

    .line 1107
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 1108
    .line 1109
    .line 1110
    move-result v12

    .line 1111
    if-nez v12, :cond_34

    .line 1112
    .line 1113
    const/4 v12, 0x1

    .line 1114
    goto :goto_27

    .line 1115
    :cond_34
    const/4 v12, 0x0

    .line 1116
    :goto_27
    if-eqz v12, :cond_35

    .line 1117
    .line 1118
    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v8

    .line 1122
    invoke-virtual {v11, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v7

    .line 1126
    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1127
    .line 1128
    :cond_35
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    goto :goto_26

    .line 1132
    :cond_36
    move-object v0, v6

    .line 1133
    :goto_28
    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mNotifiedApps:Ljava/util/List;

    .line 1134
    .line 1135
    iget-object v0, v2, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 1136
    .line 1137
    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1138
    .line 1139
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    .line 1140
    .line 1141
    iget-object v4, v2, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    .line 1142
    .line 1143
    if-nez v4, :cond_37

    .line 1144
    .line 1145
    const-string v4, ""

    .line 1146
    .line 1147
    goto :goto_29

    .line 1148
    :cond_37
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v4

    .line 1152
    :goto_29
    iput-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    .line 1153
    .line 1154
    new-instance v4, Landroid/content/Intent;

    .line 1155
    .line 1156
    const-string v6, "com.android.systemui.SCREENSHOT"

    .line 1157
    .line 1158
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    iget-object v6, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 1162
    .line 1163
    invoke-virtual {v6, v4}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast$1(Landroid/content/Intent;)V

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v3}, Landroid/window/WindowContext;->getResources()Landroid/content/res/Resources;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v4

    .line 1170
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v4

    .line 1174
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 1175
    .line 1176
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1177
    .line 1178
    const/4 v6, 0x0

    .line 1179
    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1180
    .line 1181
    .line 1182
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1183
    .line 1184
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1185
    .line 1186
    .line 1187
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda3;

    .line 1188
    .line 1189
    const/4 v6, 0x1

    .line 1190
    invoke-direct {v4, v1, v2, v6}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;I)V

    .line 1191
    .line 1192
    .line 1193
    iget-object v6, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1194
    .line 1195
    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v7

    .line 1199
    invoke-virtual {v7}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1200
    .line 1201
    .line 1202
    move-result v8

    .line 1203
    if-eqz v8, :cond_38

    .line 1204
    .line 1205
    invoke-virtual {v4}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda3;->run()V

    .line 1206
    .line 1207
    .line 1208
    goto :goto_2a

    .line 1209
    :cond_38
    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v8

    .line 1213
    new-instance v9, Lcom/android/systemui/screenshot/ScreenshotController$9;

    .line 1214
    .line 1215
    invoke-direct {v9, v1, v7, v4}, Lcom/android/systemui/screenshot/ScreenshotController$9;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 1219
    .line 1220
    .line 1221
    :goto_2a
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 1222
    .line 1223
    invoke-virtual {v4}, Lcom/android/systemui/screenshot/ScreenshotView;->reset()V

    .line 1224
    .line 1225
    .line 1226
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 1227
    .line 1228
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v4

    .line 1232
    if-eqz v4, :cond_3a

    .line 1233
    .line 1234
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 1235
    .line 1236
    iget-object v4, v4, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 1237
    .line 1238
    iget-object v4, v4, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mSwipeDismissHandler:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;

    .line 1239
    .line 1240
    iget-object v4, v4, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 1241
    .line 1242
    if-eqz v4, :cond_39

    .line 1243
    .line 1244
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 1245
    .line 1246
    .line 1247
    move-result v4

    .line 1248
    if-eqz v4, :cond_39

    .line 1249
    .line 1250
    const/4 v4, 0x1

    .line 1251
    goto :goto_2b

    .line 1252
    :cond_39
    const/4 v4, 0x0

    .line 1253
    :goto_2b
    if-nez v4, :cond_3a

    .line 1254
    .line 1255
    sget-object v4, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 1256
    .line 1257
    iget-object v7, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 1258
    .line 1259
    const/4 v8, 0x0

    .line 1260
    invoke-interface {v7, v4, v8, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 1261
    .line 1262
    .line 1263
    :cond_3a
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 1264
    .line 1265
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    .line 1266
    .line 1267
    iput-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotView;->mPackageName:Ljava/lang/String;

    .line 1268
    .line 1269
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    .line 1270
    .line 1271
    invoke-interface {v4}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v4

    .line 1275
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v4

    .line 1279
    invoke-virtual {v0, v4}, Lcom/android/systemui/screenshot/ScreenshotView;->updateOrientation(Landroid/view/WindowInsets;)V

    .line 1280
    .line 1281
    .line 1282
    iget-object v4, v2, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 1283
    .line 1284
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1285
    .line 1286
    .line 1287
    move-result v0

    .line 1288
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 1289
    .line 1290
    .line 1291
    move-result v0

    .line 1292
    if-eqz v0, :cond_3b

    .line 1293
    .line 1294
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1295
    .line 1296
    .line 1297
    move-result v0

    .line 1298
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1299
    .line 1300
    .line 1301
    move-result v0

    .line 1302
    if-nez v0, :cond_3b

    .line 1303
    .line 1304
    invoke-static {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    :try_start_d
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    const-string/jumbo v3, "restriction_property_screencapture_save_to_owner"

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getRestriction(Ljava/lang/String;)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-eqz v0, :cond_3b

    .line 1320
    .line 1321
    const-string v0, "Save to owner because of the security policy!"

    .line 1322
    .line 1323
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    .line 1325
    .line 1326
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_c

    .line 1327
    .line 1328
    goto :goto_2c

    .line 1329
    :catch_c
    move-exception v0

    .line 1330
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    const-string v7, "Exception: "

    .line 1333
    .line 1334
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v0

    .line 1344
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    .line 1346
    .line 1347
    :cond_3b
    :goto_2c
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    .line 1348
    .line 1349
    const/4 v3, 0x1

    .line 1350
    invoke-direct {v0, v1, v3}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    .line 1351
    .line 1352
    .line 1353
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    .line 1354
    .line 1355
    const/4 v5, 0x2

    .line 1356
    invoke-direct {v3, v1, v5}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    .line 1357
    .line 1358
    .line 1359
    new-instance v12, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    .line 1360
    .line 1361
    invoke-direct {v12}, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;-><init>()V

    .line 1362
    .line 1363
    .line 1364
    iget-object v5, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1365
    .line 1366
    iput-object v5, v12, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 1367
    .line 1368
    move-object/from16 v5, p3

    .line 1369
    .line 1370
    iput-object v5, v12, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    .line 1371
    .line 1372
    iput-object v0, v12, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;

    .line 1373
    .line 1374
    iput-object v3, v12, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mQuickShareActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    .line 1375
    .line 1376
    iput-object v4, v12, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->owner:Landroid/os/UserHandle;

    .line 1377
    .line 1378
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 1379
    .line 1380
    iput-object v0, v12, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 1381
    .line 1382
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    .line 1383
    .line 1384
    iput-object v0, v12, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->webData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    .line 1385
    .line 1386
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mNotifiedApps:Ljava/util/List;

    .line 1387
    .line 1388
    iput-object v0, v12, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->notifiedApps:Ljava/util/List;

    .line 1389
    .line 1390
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 1391
    .line 1392
    if-eqz v0, :cond_3c

    .line 1393
    .line 1394
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    .line 1395
    .line 1396
    const/4 v4, 0x4

    .line 1397
    invoke-direct {v3, v1, v4}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    .line 1398
    .line 1399
    .line 1400
    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    .line 1401
    .line 1402
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;

    .line 1403
    .line 1404
    :cond_3c
    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 1405
    .line 1406
    iget-object v8, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 1407
    .line 1408
    iget-object v9, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 1409
    .line 1410
    iget-object v10, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    .line 1411
    .line 1412
    iget-object v11, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    .line 1413
    .line 1414
    new-instance v13, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;

    .line 1415
    .line 1416
    invoke-direct {v13, v1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    .line 1417
    .line 1418
    .line 1419
    iget-object v14, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotNotificationSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    .line 1420
    .line 1421
    move-object v7, v0

    .line 1422
    invoke-direct/range {v7 .. v14}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/screenshot/ImageExporter;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;Ljava/util/function/Supplier;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;)V

    .line 1423
    .line 1424
    .line 1425
    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 1426
    .line 1427
    const/4 v3, 0x0

    .line 1428
    new-array v4, v3, [Ljava/lang/Void;

    .line 1429
    .line 1430
    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1431
    .line 1432
    .line 1433
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 1434
    .line 1435
    invoke-virtual {v0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isShowScreenshotAnimation()Z

    .line 1436
    .line 1437
    .line 1438
    move-result v0

    .line 1439
    if-eqz v0, :cond_3d

    .line 1440
    .line 1441
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotController;->attachSemScreenshotLayoutToWindow()V

    .line 1442
    .line 1443
    .line 1444
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 1445
    .line 1446
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 1447
    .line 1448
    .line 1449
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 1450
    .line 1451
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda3;

    .line 1452
    .line 1453
    invoke-direct {v4, v1, v2, v3}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;I)V

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1457
    .line 1458
    .line 1459
    goto :goto_2d

    .line 1460
    :cond_3d
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mFeedbackController:Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;

    .line 1461
    .line 1462
    invoke-virtual {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->semPlayCameraSound()V

    .line 1463
    .line 1464
    .line 1465
    :goto_2d
    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v0

    .line 1469
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda4;

    .line 1470
    .line 1471
    invoke-direct {v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda4;-><init>()V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1475
    .line 1476
    .line 1477
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    .line 1478
    .line 1479
    const/4 v1, 0x2

    .line 1480
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1481
    .line 1482
    .line 1483
    return-void
.end method

.method public final logSuccessOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {v2, p1, v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    .line 16
    .line 17
    const p1, 0x7f130ec4

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->owner:Landroid/os/UserHandle;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUserManager:Landroid/os/UserManager;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED_TO_WORK_PROFILE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v2, p1, v1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public final removeWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->peekDecorView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->stopInputListening()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final showScreenshotErrorMessage(Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    sput-boolean v1, Lcom/android/systemui/screenshot/ScreenshotController;->isSnackBarShowing:Z

    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->attachSemScreenshotLayoutToWindow()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPresentation:Landroid/app/Presentation;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 25
    .line 26
    :goto_0
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda7;

    .line 27
    .line 28
    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/view/View;Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method
