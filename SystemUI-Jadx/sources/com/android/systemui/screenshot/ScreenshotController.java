package com.android.systemui.screenshot;

import android.R;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.ExitTransitionCoordinator;
import android.app.Notification;
import android.app.Presentation;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.IRemoteAnimationRunner;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.RemoteAnimationTarget;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.window.OnBackInvokedCallback;
import android.window.WindowContext;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.policy.PhoneWindow;
import com.android.settingslib.applications.InterestingConfigChanges;
import com.android.systemui.broadcast.BroadcastSender;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.screenshot.DraggableConstraintLayout;
import com.android.systemui.screenshot.TakeScreenshotService;
import com.android.systemui.screenshot.sep.ScreenCaptureHelper;
import com.android.systemui.screenshot.sep.ScreenshotFeedbackController;
import com.android.systemui.screenshot.sep.ScreenshotSelectorView;
import com.android.systemui.screenshot.sep.SemImageCaptureImpl;
import com.android.systemui.screenshot.sep.SemScreenshotResult;
import com.android.systemui.screenshot.sep.SmartClipDataExtractor;
import com.android.systemui.screenshot.sep.SnackbarController;
import com.android.systemui.screenshot.sep.widget.SemScreenshotLayout;
import com.android.systemui.settings.DisplayTracker;
import com.samsung.systemui.splugins.edgelightingplus.PluginEdgeLightingPlus;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenshotController {
    public static boolean isAnimationRunning;
    public static boolean isSnackBarShowing;
    public final ExecutorService mBgExecutor;
    public final BroadcastSender mBroadcastSender;
    public final CallbackToFutureAdapter.SafeFuture mCameraSound;
    public final WindowContext mContext;
    public final AnonymousClass2 mCopyBroadcastReceiver;
    public TakeScreenshotService.RequestCallback mCurrentRequestCallback;
    public WindowManager mDisplayContextWindowManager;
    public final DisplayManager mDisplayManager;
    public final DisplayTracker mDisplayTracker;
    public final ScreenshotFeedbackController mFeedbackController;
    public final FeatureFlags mFlags;
    public final ImageExporter mImageExporter;
    public final Executor mMainExecutor;
    public final MessageContainerController mMessageContainerController;
    public final ScreenshotNotificationsController mNotificationsController;
    public List mNotifiedApps;
    public final ScreenshotController$$ExternalSyntheticLambda0 mOnBackInvokedCallback = new OnBackInvokedCallback() { // from class: com.android.systemui.screenshot.ScreenshotController$$ExternalSyntheticLambda0
        @Override // android.window.OnBackInvokedCallback
        public final void onBackInvoked() {
            ScreenshotController screenshotController = ScreenshotController.this;
            screenshotController.getClass();
            screenshotController.dismissScreenshot(ScreenshotEvent.SCREENSHOT_DISMISSED_OTHER);
        }
    };
    public String mPackageName = "";
    public Presentation mPresentation;
    public SaveImageInBackgroundTask mSaveInBgTask;
    public Bitmap mScreenBitmap;
    public ScreenCaptureHelper mScreenCaptureHelper;
    public final ScreenshotDetectionController mScreenshotDetectionController;
    public final TimeoutHandler mScreenshotHandler;
    public final ScreenshotNotificationSmartActionsProvider mScreenshotNotificationSmartActionsProvider;
    public ScreenshotSelectorView mScreenshotSelectorView;
    public final ScreenshotSmartActions mScreenshotSmartActions;
    public ScreenshotView mScreenshotView;
    public SemScreenshotLayout mSemScreenshotLayout;
    public final SemImageCaptureImpl mSepImageCaptureImpl;
    public final UiEventLogger mUiEventLogger;
    public final UserManager mUserManager;
    public SmartClipDataExtractor.WebData mWebData;
    public final PhoneWindow mWindow;
    public final WindowManager.LayoutParams mWindowLayoutParams;
    public final WindowManager mWindowManager;
    public static final AnonymousClass1 SCREENSHOT_REMOTE_RUNNER = new IRemoteAnimationRunner.Stub() { // from class: com.android.systemui.screenshot.ScreenshotController.1
        public final void onAnimationStart(int i, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
            try {
                iRemoteAnimationFinishedCallback.onAnimationFinished();
            } catch (RemoteException e) {
                AnonymousClass1 anonymousClass1 = ScreenshotController.SCREENSHOT_REMOTE_RUNNER;
                Log.e("Screenshot", "Error finishing screenshot remote animation", e);
            }
        }

        public final void onAnimationCancelled() {
        }
    };
    public static final Object mShutterEffectLock = new Object();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.screenshot.ScreenshotController$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass4 {
        public final /* synthetic */ ScreenshotData val$screenshot;

        public AnonymousClass4(ScreenshotData screenshotData) {
            this.val$screenshot = screenshotData;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0114  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0085  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void finishAnimation() {
            /*
                Method dump skipped, instructions count: 294
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.screenshot.ScreenshotController.AnonymousClass4.finishAnimation():void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.screenshot.ScreenshotController$6, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass6 {
        public AnonymousClass6() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface ActionsReadyListener {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class QuickShareData {
        public Notification.Action quickShareAction;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SaveImageInBackgroundData {
        public ScreenCaptureHelper captureHelper;
        public Consumer finisher;
        public Bitmap image;
        public ActionsReadyListener mActionsReadyListener;
        public ScreenshotController$$ExternalSyntheticLambda2 mQuickShareActionsReadyListener;
        public List notifiedApps;
        public UserHandle owner;
        public SmartClipDataExtractor.WebData webData;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SavedImageData {
        public Supplier editTransition;
        public UserHandle owner;
        public Notification.Action quickShareAction;
        public Supplier shareTransition;
        public List smartActions;
        public String subject;
        public Uri uri;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class ActionTransition {
            public Bundle bundle;
        }
    }

    /* renamed from: -$$Nest$mfinishDismiss, reason: not valid java name */
    public static void m1345$$Nest$mfinishDismiss(ScreenshotController screenshotController) {
        screenshotController.getClass();
        Log.d("Screenshot", "finishDismiss");
        TakeScreenshotService.RequestCallback requestCallback = screenshotController.mCurrentRequestCallback;
        if (requestCallback != null) {
            Messenger messenger = ((TakeScreenshotService.RequestCallbackImpl) requestCallback).mReplyTo;
            boolean z = TakeScreenshotService.sConfigured;
            try {
                messenger.send(Message.obtain((Handler) null, 2));
            } catch (RemoteException e) {
                Log.d("Screenshot", "ignored remote exception", e);
            }
            screenshotController.mCurrentRequestCallback = null;
        }
        screenshotController.mScreenshotView.reset();
        screenshotController.removeWindow();
        screenshotController.mScreenshotHandler.removeMessages(2);
    }

    /* JADX WARN: Type inference failed for: r1v35, types: [com.android.systemui.screenshot.ScreenshotController$2, android.content.BroadcastReceiver] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.android.systemui.screenshot.ScreenshotController$$ExternalSyntheticLambda0] */
    public ScreenshotController(Context context, FeatureFlags featureFlags, ScreenshotSmartActions screenshotSmartActions, ScreenshotNotificationsController screenshotNotificationsController, ScrollCaptureClient scrollCaptureClient, UiEventLogger uiEventLogger, ImageExporter imageExporter, ImageCapture imageCapture, SemImageCaptureImpl semImageCaptureImpl, ScreenshotDetectionController screenshotDetectionController, Executor executor, ScrollCaptureController scrollCaptureController, LongScreenshotData longScreenshotData, ActivityManager activityManager, TimeoutHandler timeoutHandler, BroadcastSender broadcastSender, ScreenshotNotificationSmartActionsProvider screenshotNotificationSmartActionsProvider, ActionIntentExecutor actionIntentExecutor, UserManager userManager, AssistContentRequester assistContentRequester, MessageContainerController messageContainerController, DisplayTracker displayTracker) {
        InterestingConfigChanges interestingConfigChanges = new InterestingConfigChanges(-2147474556);
        this.mNotifiedApps = new ArrayList();
        this.mScreenshotSmartActions = screenshotSmartActions;
        this.mNotificationsController = screenshotNotificationsController;
        this.mUiEventLogger = uiEventLogger;
        this.mImageExporter = imageExporter;
        this.mMainExecutor = executor;
        activityManager.isLowRamDevice();
        this.mScreenshotNotificationSmartActionsProvider = screenshotNotificationSmartActionsProvider;
        this.mBgExecutor = Executors.newSingleThreadExecutor();
        this.mBroadcastSender = broadcastSender;
        this.mScreenshotHandler = timeoutHandler;
        timeoutHandler.mDefaultTimeout = PluginEdgeLightingPlus.VERSION;
        timeoutHandler.mOnTimeout = new Runnable() { // from class: com.android.systemui.screenshot.ScreenshotController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenshotController screenshotController = ScreenshotController.this;
                screenshotController.getClass();
                screenshotController.dismissScreenshot(ScreenshotEvent.SCREENSHOT_INTERACTION_TIMEOUT);
            }
        };
        DisplayManager displayManager = (DisplayManager) context.getSystemService(DisplayManager.class);
        Objects.requireNonNull(displayManager);
        this.mDisplayManager = displayManager;
        this.mDisplayTracker = displayTracker;
        displayTracker.getClass();
        WindowContext createWindowContext = context.createDisplayContext(displayManager.getDisplay(0)).createWindowContext(2036, null);
        this.mContext = createWindowContext;
        WindowManager windowManager = (WindowManager) createWindowContext.getSystemService(WindowManager.class);
        this.mWindowManager = windowManager;
        this.mFlags = featureFlags;
        this.mUserManager = userManager;
        this.mMessageContainerController = messageContainerController;
        AccessibilityManager.getInstance(createWindowContext);
        WindowManager.LayoutParams floatingWindowParams = FloatingWindowUtil.getFloatingWindowParams();
        this.mWindowLayoutParams = floatingWindowParams;
        floatingWindowParams.setTitle("ScreenshotAnimation");
        PhoneWindow phoneWindow = new PhoneWindow(createWindowContext);
        phoneWindow.requestFeature(1);
        phoneWindow.requestFeature(13);
        phoneWindow.setBackgroundDrawableResource(R.color.transparent);
        this.mWindow = phoneWindow;
        phoneWindow.setWindowManager(windowManager, (IBinder) null, (String) null);
        interestingConfigChanges.applyNewConfig(context.getResources());
        ScreenshotView screenshotView = (ScreenshotView) LayoutInflater.from(createWindowContext).inflate(com.android.systemui.R.layout.screenshot, (ViewGroup) null);
        this.mScreenshotView = screenshotView;
        messageContainerController.getClass();
        messageContainerController.container = (ViewGroup) screenshotView.requireViewById(com.android.systemui.R.id.screenshot_message_container);
        messageContainerController.guideline = (Guideline) screenshotView.requireViewById(com.android.systemui.R.id.guideline);
        ViewGroup viewGroup = messageContainerController.container;
        messageContainerController.workProfileFirstRunView = (ViewGroup) (viewGroup == null ? null : viewGroup).requireViewById(com.android.systemui.R.id.work_profile_first_run);
        ViewGroup viewGroup2 = messageContainerController.container;
        messageContainerController.detectionNoticeView = (ViewGroup) (viewGroup2 == null ? null : viewGroup2).requireViewById(com.android.systemui.R.id.screenshot_detection_notice);
        ViewGroup viewGroup3 = messageContainerController.container;
        (viewGroup3 == null ? null : viewGroup3).setVisibility(8);
        Guideline guideline = messageContainerController.guideline;
        guideline = guideline == null ? null : guideline;
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) guideline.getLayoutParams();
        if (!guideline.mFilterRedundantCalls || layoutParams.guideEnd != 0) {
            layoutParams.guideEnd = 0;
            guideline.setLayoutParams(layoutParams);
        }
        ViewGroup viewGroup4 = messageContainerController.workProfileFirstRunView;
        (viewGroup4 == null ? null : viewGroup4).setVisibility(8);
        ViewGroup viewGroup5 = messageContainerController.detectionNoticeView;
        (viewGroup5 != null ? viewGroup5 : null).setVisibility(8);
        this.mScreenshotView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.android.systemui.screenshot.ScreenshotController.5
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                ScreenshotController.this.mScreenshotView.findOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, ScreenshotController.this.mOnBackInvokedCallback);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                ScreenshotController.this.mScreenshotView.findOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(ScreenshotController.this.mOnBackInvokedCallback);
            }
        });
        ScreenshotView screenshotView2 = this.mScreenshotView;
        AnonymousClass6 anonymousClass6 = new AnonymousClass6();
        screenshotView2.mUiEventLogger = uiEventLogger;
        screenshotView2.mCallbacks = anonymousClass6;
        screenshotView2.mActionExecutor = actionIntentExecutor;
        screenshotView2.mFlags = featureFlags;
        ScreenshotView screenshotView3 = this.mScreenshotView;
        displayTracker.getClass();
        screenshotView3.mDefaultDisplay = 0;
        this.mScreenshotView.getClass();
        this.mScreenshotView.setOnKeyListener(new View.OnKeyListener() { // from class: com.android.systemui.screenshot.ScreenshotController$$ExternalSyntheticLambda5
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                ScreenshotController screenshotController = ScreenshotController.this;
                screenshotController.getClass();
                if (i != 4 && i != 111) {
                    return false;
                }
                screenshotController.dismissScreenshot(ScreenshotEvent.SCREENSHOT_DISMISSED_OTHER);
                return true;
            }
        });
        this.mScreenshotView.getViewTreeObserver().addOnComputeInternalInsetsListener(this.mScreenshotView);
        phoneWindow.setContentView(this.mScreenshotView);
        this.mCameraSound = CallbackToFutureAdapter.getFuture(new ScreenshotController$$ExternalSyntheticLambda2(this, 3));
        isAnimationRunning = false;
        this.mSepImageCaptureImpl = semImageCaptureImpl;
        this.mScreenshotDetectionController = screenshotDetectionController;
        this.mFeedbackController = new ScreenshotFeedbackController(createWindowContext);
        ?? r1 = new BroadcastReceiver() { // from class: com.android.systemui.screenshot.ScreenshotController.2
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                if ("com.android.systemui.COPY".equals(intent.getAction())) {
                    ScreenshotController.this.dismissScreenshot(ScreenshotEvent.SCREENSHOT_DISMISSED_OTHER);
                }
            }
        };
        this.mCopyBroadcastReceiver = r1;
        createWindowContext.registerReceiver((BroadcastReceiver) r1, new IntentFilter("com.android.systemui.COPY"), "com.android.systemui.permission.SELF", (Handler) null, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044 A[Catch: IllegalStateException -> 0x00b9, all -> 0x00cf, TryCatch #0 {IllegalStateException -> 0x00b9, blocks: (B:6:0x0012, B:12:0x0044, B:14:0x0053, B:16:0x0057, B:23:0x009d), top: B:5:0x0012, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x009d A[Catch: IllegalStateException -> 0x00b9, all -> 0x00cf, TRY_LEAVE, TryCatch #0 {IllegalStateException -> 0x00b9, blocks: (B:6:0x0012, B:12:0x0044, B:14:0x0053, B:16:0x0057, B:23:0x009d), top: B:5:0x0012, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void attachSemScreenshotLayoutToWindow() {
        /*
            r9 = this;
            java.lang.String r0 = "mScreenshotLayout "
            java.lang.Object r1 = com.android.systemui.screenshot.ScreenshotController.mShutterEffectLock
            monitor-enter(r1)
            java.lang.String r2 = "Screenshot"
            java.lang.String r3 = "attachSemScreenshotLayoutToWindow"
            android.util.Log.i(r2, r3)     // Catch: java.lang.Throwable -> Lcf
            com.android.systemui.screenshot.sep.ScreenCaptureHelper r2 = r9.mScreenCaptureHelper     // Catch: java.lang.Throwable -> Lcf
            android.view.WindowManager$LayoutParams r2 = com.android.systemui.screenshot.sep.ScreenshotViewUtils.getLayoutParams(r2)     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r3 = "ScreenshotAnimation"
            r2.setTitle(r3)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            com.android.systemui.screenshot.sep.widget.SemScreenshotLayout r3 = r9.mSemScreenshotLayout     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            com.android.systemui.screenshot.sep.ScreenCaptureHelper r4 = r9.mScreenCaptureHelper     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            float r4 = r4.screenDegrees     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r5 = 2131365181(0x7f0a0d3d, float:1.835022E38)
            android.view.View r5 = r3.findViewById(r5)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            android.widget.ImageView r5 = (android.widget.ImageView) r5     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r3.mScreenshotImageView = r5     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r6 = 4
            r5.setVisibility(r6)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r3.mScreenDegrees = r4     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            com.android.systemui.screenshot.sep.ScreenCaptureHelper r3 = r9.mScreenCaptureHelper     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            int r3 = r3.builtInDisplayId     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            java.lang.String r4 = com.android.systemui.screenshot.sep.ScreenshotUtils.VALUE_SUB_DISPLAY_POLICY     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            java.lang.String r5 = "WATCHFACE"
            boolean r4 = r4.contains(r5)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r5 = 0
            if (r4 == 0) goto L41
            r4 = 1
            if (r3 != r4) goto L41
            goto L42
        L41:
            r4 = r5
        L42:
            if (r4 == 0) goto L9d
            com.android.systemui.screenshot.sep.widget.SemScreenshotLayout r4 = r9.mSemScreenshotLayout     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            com.android.systemui.screenshot.sep.ScreenCaptureHelper r6 = r9.mScreenCaptureHelper     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r4.addCaptureEffectViewInLayout(r6)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            android.window.WindowContext r4 = r9.mContext     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            android.view.Display r3 = com.android.systemui.screenshot.sep.ScreenshotUtils.getDisplay(r3, r4)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            if (r3 == 0) goto Lcd
            android.app.Presentation r4 = r9.mPresentation     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            if (r4 != 0) goto Lcd
            android.app.Presentation r4 = new android.app.Presentation     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            android.window.WindowContext r6 = r9.mContext     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r7 = 2408(0x968, float:3.374E-42)
            r8 = 2132018368(0x7f1404c0, float:1.967504E38)
            r4.<init>(r6, r3, r8, r7)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r9.mPresentation = r4     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            android.view.Window r3 = r4.getWindow()     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            com.android.systemui.screenshot.sep.ScreenCaptureHelper r4 = r9.mScreenCaptureHelper     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r4.getClass()     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r4 = 69207432(0x4200588, float:1.881045E-36)
            r3.addFlags(r4)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            android.view.WindowManager$LayoutParams r4 = r3.getAttributes()     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r6 = 3
            r4.layoutInDisplayCutoutMode = r6     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            android.view.View r4 = r3.getDecorView()     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            int r6 = r4.getSystemUiVisibility()     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r6 = r6 | 1024(0x400, float:1.435E-42)
            r6 = r6 | 2
            r4.setSystemUiVisibility(r6)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            com.android.systemui.screenshot.sep.widget.SemScreenshotLayout r4 = r9.mSemScreenshotLayout     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r3.addContentView(r4, r2)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            android.graphics.drawable.ColorDrawable r2 = new android.graphics.drawable.ColorDrawable     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r2.<init>(r5)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r3.setBackgroundDrawable(r2)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            android.app.Presentation r2 = r9.mPresentation     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r2.show()     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            goto Lcd
        L9d:
            com.android.systemui.screenshot.sep.widget.SemScreenshotLayout r3 = r9.mSemScreenshotLayout     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            com.android.systemui.screenshot.sep.ScreenCaptureHelper r4 = r9.mScreenCaptureHelper     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r3.addCaptureEffectViewInLayout(r4)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            com.android.systemui.screenshot.sep.ScreenCaptureHelper r3 = r9.mScreenCaptureHelper     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            android.content.Context r3 = r3.displayContext     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            java.lang.String r4 = "window"
            java.lang.Object r3 = r3.getSystemService(r4)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            android.view.WindowManager r3 = (android.view.WindowManager) r3     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r9.mDisplayContextWindowManager = r3     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            com.android.systemui.screenshot.sep.widget.SemScreenshotLayout r4 = r9.mSemScreenshotLayout     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            r3.addView(r4, r2)     // Catch: java.lang.IllegalStateException -> Lb9 java.lang.Throwable -> Lcf
            goto Lcd
        Lb9:
            r2 = move-exception
            java.lang.String r3 = "Screenshot"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lcf
            r4.<init>(r0)     // Catch: java.lang.Throwable -> Lcf
            com.android.systemui.screenshot.sep.widget.SemScreenshotLayout r9 = r9.mSemScreenshotLayout     // Catch: java.lang.Throwable -> Lcf
            r4.append(r9)     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r9 = r4.toString()     // Catch: java.lang.Throwable -> Lcf
            android.util.Log.e(r3, r9, r2)     // Catch: java.lang.Throwable -> Lcf
        Lcd:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lcf
            return
        Lcf:
            r9 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lcf
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.screenshot.ScreenshotController.attachSemScreenshotLayoutToWindow():void");
    }

    public final void detachSemScreenshotLayoutToWindow() {
        Log.i("Screenshot", "detachSemScreenshotLayoutToWindow");
        Presentation presentation = this.mPresentation;
        if (presentation != null) {
            presentation.dismiss();
            this.mPresentation = null;
            if (this.mSemScreenshotLayout.getParent() != null) {
                ((ViewGroup) this.mSemScreenshotLayout.getParent()).removeView(this.mSemScreenshotLayout);
                return;
            }
            return;
        }
        if (this.mSemScreenshotLayout.isAttachedToWindow()) {
            this.mDisplayContextWindowManager.removeViewImmediate(this.mSemScreenshotLayout);
        }
    }

    public final void dismissScreenshot(ScreenshotEvent screenshotEvent) {
        boolean z;
        ValueAnimator valueAnimator = this.mScreenshotView.mScreenshotStatic.mSwipeDismissHandler.mDismissAnimation;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        this.mUiEventLogger.log(screenshotEvent, 0, this.mPackageName);
        this.mScreenshotHandler.removeMessages(2);
        DraggableConstraintLayout.SwipeDismissHandler swipeDismissHandler = this.mScreenshotView.mScreenshotStatic.mSwipeDismissHandler;
        ValueAnimator createSwipeDismissAnimation = swipeDismissHandler.createSwipeDismissAnimation(FloatingWindowUtil.dpToPx(swipeDismissHandler.mDisplayMetrics, 1.0f));
        swipeDismissHandler.mDismissAnimation = createSwipeDismissAnimation;
        createSwipeDismissAnimation.addListener(new DraggableConstraintLayout.SwipeDismissHandler.AnonymousClass1());
        swipeDismissHandler.mDismissAnimation.start();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(35:188|(2:190|(36:194|195|(1:300)(1:199)|200|201|(3:203|204|205)|208|(1:210)(1:298)|(1:212)(1:297)|213|(1:215)|216|(1:218)(1:296)|219|(1:221)(1:295)|222|223|224|225|226|227|228|230|231|(1:233)(1:285)|234|235|(2:237|(1:239)(2:240|(2:242|(1:244)(1:245))))|246|247|(2:249|(2:251|(1:253)(1:254)))|(1:256)(1:281)|257|(1:259)|260|(2:262|(8:264|265|266|267|268|269|270|272)(1:279))(1:280)))(1:305)|304|201|(0)|208|(0)(0)|(0)(0)|213|(0)|216|(0)(0)|219|(0)(0)|222|223|224|225|226|227|228|230|231|(0)(0)|234|235|(0)|246|247|(0)|(0)(0)|257|(0)|260|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x01ff, code lost:
    
        android.util.Log.i(r4, "RemoteException is occurred.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x01f9, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x01fd, code lost:
    
        r1 = null;
        r13 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x01fc, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x01fb, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x04d1  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0528 A[Catch: SecurityException -> 0x0530, TRY_LEAVE, TryCatch #13 {SecurityException -> 0x0530, blocks: (B:128:0x051b, B:130:0x0528), top: B:127:0x051b }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x05b3  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x01be A[Catch: RemoteException -> 0x01ff, TryCatch #4 {RemoteException -> 0x01ff, blocks: (B:235:0x0193, B:237:0x01be, B:239:0x01c8, B:240:0x01cf, B:242:0x01d5, B:244:0x01f2), top: B:234:0x0193 }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0406  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleScreenshot(final com.android.systemui.screenshot.ScreenshotData r26, com.android.systemui.screenshot.TakeScreenshotService.RequestCallback r27, java.util.function.Consumer r28) {
        /*
            Method dump skipped, instructions count: 1483
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.screenshot.ScreenshotController.handleScreenshot(com.android.systemui.screenshot.ScreenshotData, com.android.systemui.screenshot.TakeScreenshotService$RequestCallback, java.util.function.Consumer):void");
    }

    public final void logSuccessOnActionsReady(SavedImageData savedImageData) {
        Uri uri = savedImageData.uri;
        UiEventLogger uiEventLogger = this.mUiEventLogger;
        if (uri == null) {
            uiEventLogger.log(ScreenshotEvent.SCREENSHOT_NOT_SAVED, 0, this.mPackageName);
            this.mNotificationsController.notifyScreenshotError(com.android.systemui.R.string.screenshot_failed_to_save_text);
            return;
        }
        uiEventLogger.log(ScreenshotEvent.SCREENSHOT_SAVED, 0, this.mPackageName);
        if (this.mUserManager.isManagedProfile(savedImageData.owner.getIdentifier())) {
            uiEventLogger.log(ScreenshotEvent.SCREENSHOT_SAVED_TO_WORK_PROFILE, 0, this.mPackageName);
        }
    }

    public final void removeWindow() {
        View peekDecorView = this.mWindow.peekDecorView();
        if (peekDecorView != null && peekDecorView.isAttachedToWindow()) {
            this.mWindowManager.removeViewImmediate(peekDecorView);
        }
        ScreenshotView screenshotView = this.mScreenshotView;
        if (screenshotView != null) {
            screenshotView.stopInputListening();
        }
    }

    public final void showScreenshotErrorMessage(final SemScreenshotResult semScreenshotResult) {
        final View view;
        synchronized (mShutterEffectLock) {
            isSnackBarShowing = true;
        }
        attachSemScreenshotLayoutToWindow();
        Presentation presentation = this.mPresentation;
        if (presentation != null) {
            view = presentation.getWindow().getDecorView();
        } else {
            view = this.mSemScreenshotLayout;
        }
        view.post(new Runnable() { // from class: com.android.systemui.screenshot.ScreenshotController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ScreenshotController screenshotController = ScreenshotController.this;
                View view2 = view;
                SemScreenshotResult semScreenshotResult2 = semScreenshotResult;
                screenshotController.getClass();
                synchronized (ScreenshotController.mShutterEffectLock) {
                    new SnackbarController(screenshotController.mContext, screenshotController.mScreenCaptureHelper.capturedDisplayId, new ScreenshotController$$ExternalSyntheticLambda2(screenshotController, 5)).showScreenshotError(view2, semScreenshotResult2);
                }
            }
        });
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ScreenshotExitTransitionCallbacksSupplier implements Supplier {
        public final boolean mDismissOnHideSharedElements;

        public ScreenshotExitTransitionCallbacksSupplier(boolean z) {
            this.mDismissOnHideSharedElements = z;
        }

        @Override // java.util.function.Supplier
        public final Object get() {
            return new AnonymousClass1();
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* renamed from: com.android.systemui.screenshot.ScreenshotController$ScreenshotExitTransitionCallbacksSupplier$1, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass1 implements ExitTransitionCoordinator.ExitTransitionCallbacks {
            public AnonymousClass1() {
            }

            public final void hideSharedElements() {
                ScreenshotExitTransitionCallbacksSupplier screenshotExitTransitionCallbacksSupplier = ScreenshotExitTransitionCallbacksSupplier.this;
                if (screenshotExitTransitionCallbacksSupplier.mDismissOnHideSharedElements) {
                    ScreenshotController.m1345$$Nest$mfinishDismiss(ScreenshotController.this);
                }
            }

            public final boolean isReturnTransitionAllowed() {
                return false;
            }

            public final void onFinish() {
            }
        }
    }
}
