package com.android.systemui.screenshot;

import android.app.Service;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.UserManager;
import android.util.Log;
import android.window.WindowContext;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.util.ScreenshotRequest;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.screenshot.TakeScreenshotService;
import com.android.systemui.screenshot.sep.ScreenCaptureHelper;
import com.android.systemui.screenshot.sep.ScreenCaptureHelperForB5CoverScreen;
import com.android.systemui.screenshot.sep.ScreenCaptureHelperForFlex;
import com.android.systemui.screenshot.sep.ScreenCaptureHelperForPartial;
import com.android.systemui.screenshot.sep.ScreenCaptureHelperForWindow;
import com.android.systemui.screenshot.sep.ScreenshotErrorController;
import com.android.systemui.screenshot.sep.ScreenshotUtils;
import com.android.systemui.screenshot.sep.SemScreenCaptureHelperFactory;
import com.android.systemui.util.SystemUIAnalytics;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class TakeScreenshotService extends Service {
    public static boolean sConfigured = false;
    public final Executor mBgExecutor;
    public Bundle mBundle;
    public final Context mContext;
    public final ScreenshotNotificationsController mNotificationsController;
    public final RequestProcessor mProcessor;
    public ScreenCaptureHelper mScreenCaptureHelper;
    public final ScreenshotController mScreenshot;
    public final ScreenshotErrorController mScreenshotErrorController;
    public final UiEventLogger mUiEventLogger;
    public final UserManager mUserManager;
    public final AnonymousClass1 mCloseSystemDialogs = new BroadcastReceiver() { // from class: com.android.systemui.screenshot.TakeScreenshotService.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            ScreenshotController screenshotController;
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction()) && (screenshotController = TakeScreenshotService.this.mScreenshot) != null && !screenshotController.mScreenshotView.mPendingSharedTransition) {
                screenshotController.dismissScreenshot(ScreenshotEvent.SCREENSHOT_DISMISSED_OTHER);
            }
        }
    };
    public final Handler mHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.android.systemui.screenshot.TakeScreenshotService$$ExternalSyntheticLambda1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            boolean z;
            ScreenCaptureHelper screenCaptureHelper;
            boolean z2;
            boolean z3;
            TakeScreenshotService takeScreenshotService = TakeScreenshotService.this;
            boolean z4 = TakeScreenshotService.sConfigured;
            takeScreenshotService.getClass();
            final Messenger messenger = message.replyTo;
            Consumer<Uri> consumer = new Consumer() { // from class: com.android.systemui.screenshot.TakeScreenshotService$$ExternalSyntheticLambda2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Messenger messenger2 = messenger;
                    Uri uri = (Uri) obj;
                    boolean z5 = TakeScreenshotService.sConfigured;
                    try {
                        messenger2.send(Message.obtain(null, 1, uri));
                    } catch (RemoteException e) {
                        Log.d("Screenshot", "ignored remote exception", e);
                    }
                }
            };
            TakeScreenshotService.RequestCallbackImpl requestCallbackImpl = new TakeScreenshotService.RequestCallbackImpl(messenger);
            ScreenshotRequest screenshotRequest = (ScreenshotRequest) message.obj;
            Bundle data = message.getData();
            takeScreenshotService.mBundle = data;
            int i = data.getInt("capturedDisplay", 0);
            SemScreenCaptureHelperFactory semScreenCaptureHelperFactory = SemScreenCaptureHelperFactory.INSTANCE;
            int i2 = message.what;
            semScreenCaptureHelperFactory.getClass();
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 100) {
                        if (i2 != 101) {
                            screenCaptureHelper = new ScreenCaptureHelper();
                        } else {
                            screenCaptureHelper = new ScreenCaptureHelperForFlex();
                        }
                    } else {
                        screenCaptureHelper = new ScreenCaptureHelperForWindow();
                    }
                } else {
                    screenCaptureHelper = new ScreenCaptureHelperForPartial();
                }
            } else {
                if (ScreenshotUtils.VALUE_SUB_DISPLAY_POLICY.contains("LARGESCREEN") && i == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    screenCaptureHelper = new ScreenCaptureHelperForB5CoverScreen();
                } else {
                    screenCaptureHelper = new ScreenCaptureHelper();
                }
            }
            takeScreenshotService.mScreenCaptureHelper = screenCaptureHelper;
            Context context = takeScreenshotService.mContext;
            if (message.arg1 > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (message.arg2 > 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            Bundle bundle = takeScreenshotService.mBundle;
            screenCaptureHelper.initializeCaptureType();
            screenCaptureHelper.mBundle = bundle;
            screenCaptureHelper.screenCaptureSweepDirection = bundle.getInt("sweepDirection", 1);
            screenCaptureHelper.capturedDisplayId = bundle.getInt("capturedDisplay", 0);
            screenCaptureHelper.screenCaptureOrigin = bundle.getInt("capturedOrigin", 1);
            screenCaptureHelper.safeInsetLeft = bundle.getInt("safeInsetLeft", 0);
            screenCaptureHelper.safeInsetTop = bundle.getInt("safeInsetTop", 0);
            screenCaptureHelper.safeInsetRight = bundle.getInt("safeInsetRight", 0);
            screenCaptureHelper.safeInsetBottom = bundle.getInt("safeInsetBottom", 0);
            screenCaptureHelper.captureSharedBundle = bundle.getBundle("captureSharedBundle");
            screenCaptureHelper.statusBarHeight = bundle.getInt("statusBarHeight", 0);
            screenCaptureHelper.navigationBarHeight = bundle.getInt("navigationBarHeight", 0);
            screenCaptureHelper.stackBounds = (Rect) bundle.getParcelable("stackBounds");
            screenCaptureHelper.isStatusBarVisible = z2;
            screenCaptureHelper.isNavigationBarVisible = z3;
            screenCaptureHelper.windowMode = 1;
            screenCaptureHelper.displayContext = context.createDisplayContext(ScreenshotUtils.getDisplay(screenCaptureHelper.capturedDisplayId, context));
            screenCaptureHelper.initializeScreenshotVariable();
            Log.i(ScreenCaptureHelper.TAG, "initialize: " + screenCaptureHelper);
            if (!TakeScreenshotService.sConfigured) {
                SystemUIAnalytics.initSystemUIAnalyticsStates(takeScreenshotService.getApplication());
                TakeScreenshotService.sConfigured = true;
            }
            takeScreenshotService.handleRequest(screenshotRequest, consumer, requestCallbackImpl);
            return true;
        }
    });

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface RequestCallback {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class RequestCallbackImpl implements RequestCallback {
        public final Messenger mReplyTo;

        public RequestCallbackImpl(Messenger messenger) {
            this.mReplyTo = messenger;
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.systemui.screenshot.TakeScreenshotService$1] */
    public TakeScreenshotService(ScreenshotController screenshotController, UserManager userManager, DevicePolicyManager devicePolicyManager, UiEventLogger uiEventLogger, ScreenshotNotificationsController screenshotNotificationsController, Context context, ScreenshotErrorController screenshotErrorController, Executor executor, FeatureFlags featureFlags, RequestProcessor requestProcessor) {
        this.mScreenshot = screenshotController;
        this.mUserManager = userManager;
        this.mUiEventLogger = uiEventLogger;
        this.mNotificationsController = screenshotNotificationsController;
        this.mContext = context;
        this.mBgExecutor = executor;
        this.mProcessor = requestProcessor;
        this.mScreenshotErrorController = screenshotErrorController;
    }

    /* JADX WARN: Code restructure failed: missing block: B:173:0x00fb, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x00f9, code lost:
    
        if (android.provider.Settings.System.getInt(r0.getContentResolver(), "enable_reserve_max_mode", 0) != 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e1, code lost:
    
        if (android.provider.Settings.Secure.getInt(r0.getContentResolver(), "enable_reserve_max_mode", 0) != 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00fd, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0231, code lost:
    
        if (r8 != false) goto L177;
     */
    /* JADX WARN: Removed duplicated region for block: B:155:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleRequest(com.android.internal.util.ScreenshotRequest r26, final java.util.function.Consumer<android.net.Uri> r27, final com.android.systemui.screenshot.TakeScreenshotService.RequestCallback r28) {
        /*
            Method dump skipped, instructions count: 936
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.screenshot.TakeScreenshotService.handleRequest(com.android.internal.util.ScreenshotRequest, java.util.function.Consumer, com.android.systemui.screenshot.TakeScreenshotService$RequestCallback):void");
    }

    public final void logFailedRequest(ScreenshotRequest screenshotRequest) {
        String packageName;
        ComponentName topComponent = screenshotRequest.getTopComponent();
        if (topComponent == null) {
            packageName = "";
        } else {
            packageName = topComponent.getPackageName();
        }
        this.mUiEventLogger.log(ScreenshotEvent.getScreenshotSource(screenshotRequest.getSource()), 0, packageName);
        this.mUiEventLogger.log(ScreenshotEvent.SCREENSHOT_CAPTURE_FAILED, 0, packageName);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        registerReceiver(this.mCloseSystemDialogs, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"), 2);
        return new Messenger(this.mHandler).getBinder();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        ScreenshotController screenshotController = this.mScreenshot;
        SaveImageInBackgroundTask saveImageInBackgroundTask = screenshotController.mSaveInBgTask;
        if (saveImageInBackgroundTask != null) {
            saveImageInBackgroundTask.mParams.mActionsReadyListener = new ScreenshotController$$ExternalSyntheticLambda2(screenshotController, 0);
        }
        screenshotController.removeWindow();
        CallbackToFutureAdapter.SafeFuture safeFuture = screenshotController.mCameraSound;
        try {
            MediaPlayer mediaPlayer = (MediaPlayer) safeFuture.get(1L, TimeUnit.SECONDS);
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            safeFuture.cancel(true);
            Log.w("Screenshot", "Error releasing shutter sound", e);
        }
        WindowContext windowContext = screenshotController.mContext;
        windowContext.unregisterReceiver(screenshotController.mCopyBroadcastReceiver);
        windowContext.release();
        screenshotController.mBgExecutor.shutdownNow();
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        this.mScreenshot.removeWindow();
        unregisterReceiver(this.mCloseSystemDialogs);
        return false;
    }

    @Override // android.app.Service
    public final void onCreate() {
    }
}
