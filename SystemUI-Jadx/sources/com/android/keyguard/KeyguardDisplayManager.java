package com.android.keyguard;

import android.R;
import android.app.Presentation;
import android.content.Context;
import android.graphics.Rect;
import android.hardware.devicestate.DeviceStateManager;
import android.hardware.display.DisplayManager;
import android.media.MediaRouter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.DisplayAddress;
import android.view.DisplayInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.android.keyguard.dagger.KeyguardStatusViewComponent;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.keyguard.KeyguardFoldController;
import com.android.systemui.keyguard.KeyguardFoldControllerImpl;
import com.android.systemui.keyguard.KeyguardVisibilityMonitor;
import com.android.systemui.navigationbar.NavigationBarController;
import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.settings.DisplayTrackerImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.function.IntConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardDisplayManager {
    public final Context mContext;
    public final DeviceStateHelper mDeviceStateHelper;
    public final KeyguardPresentationDisabler mDisableHandler;
    public final AnonymousClass1 mDisplayCallback;
    public final DisplayManager mDisplayService;
    public final DisplayTracker mDisplayTracker;
    public final KeyguardFoldController mKeyguardFoldController;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardStatusViewComponent.Factory mKeyguardStatusViewComponentFactory;
    public final AnonymousClass3 mMediaRouterCallback;
    public final Lazy mNavigationBarControllerLazy;
    public boolean mShowing;
    public MediaRouter mMediaRouter = null;
    public final KeyguardDisplayManager$$ExternalSyntheticLambda0 mVisibilityListener = new IntConsumer() { // from class: com.android.keyguard.KeyguardDisplayManager$$ExternalSyntheticLambda0
        @Override // java.util.function.IntConsumer
        public final void accept(int i) {
            KeyguardDisplayManager keyguardDisplayManager = KeyguardDisplayManager.this;
            keyguardDisplayManager.getClass();
            if (i != 0) {
                ((ArrayList) ((KeyguardVisibilityMonitor) Dependency.get(KeyguardVisibilityMonitor.class)).visibilityChangedListeners).remove(keyguardDisplayManager.mVisibilityListener);
                keyguardDisplayManager.hide();
            }
        }
    };
    public final DisplayInfo mTmpDisplayInfo = new DisplayInfo();
    public final SparseArray mPresentations = new SparseArray();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DeviceStateHelper implements DeviceStateManager.DeviceStateCallback {
        public final int mConcurrentState;
        public boolean mIsInConcurrentDisplayState;
        public final DisplayAddress.Physical mRearDisplayPhysicalAddress;

        public DeviceStateHelper(Context context, DeviceStateManager deviceStateManager, Executor executor) {
            String string = context.getResources().getString(R.string.global_action_silent_mode_on_status);
            if (TextUtils.isEmpty(string)) {
                this.mRearDisplayPhysicalAddress = null;
            } else {
                this.mRearDisplayPhysicalAddress = DisplayAddress.fromPhysicalDisplayId(Long.parseLong(string));
            }
            this.mConcurrentState = context.getResources().getInteger(R.integer.config_minNumVisibleRecentTasks_lowRam);
            deviceStateManager.registerCallback(executor, this);
        }

        public final void onStateChanged(int i) {
            boolean z;
            if (i == this.mConcurrentState) {
                z = true;
            } else {
                z = false;
            }
            this.mIsInConcurrentDisplayState = z;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.keyguard.KeyguardDisplayManager$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.android.systemui.settings.DisplayTracker$Callback, com.android.keyguard.KeyguardDisplayManager$1] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.keyguard.KeyguardDisplayManager$3] */
    public KeyguardDisplayManager(KeyguardFoldController keyguardFoldController, KeyguardPresentationDisabler keyguardPresentationDisabler, Context context, Lazy lazy, KeyguardStatusViewComponent.Factory factory, DisplayTracker displayTracker, Executor executor, Executor executor2, DeviceStateHelper deviceStateHelper, KeyguardStateController keyguardStateController) {
        ?? r0 = new DisplayTracker.Callback() { // from class: com.android.keyguard.KeyguardDisplayManager.1
            @Override // com.android.systemui.settings.DisplayTracker.Callback
            public final void onDisplayAdded(int i) {
                Trace.beginSection("KeyguardDisplayManager#onDisplayAdded(displayId=" + i + ")");
                KeyguardDisplayManager keyguardDisplayManager = KeyguardDisplayManager.this;
                Display display = keyguardDisplayManager.mDisplayService.getDisplay(i);
                if (keyguardDisplayManager.mShowing) {
                    keyguardDisplayManager.updateNavigationBarVisibility(i, false);
                    keyguardDisplayManager.showPresentation(display);
                }
                Trace.endSection();
            }

            @Override // com.android.systemui.settings.DisplayTracker.Callback
            public final void onDisplayRemoved(int i) {
                Trace.beginSection("KeyguardDisplayManager#onDisplayRemoved(displayId=" + i + ")");
                SparseArray sparseArray = KeyguardDisplayManager.this.mPresentations;
                Presentation presentation = (Presentation) sparseArray.get(i);
                if (presentation != null) {
                    presentation.dismiss();
                    sparseArray.remove(i);
                }
                Trace.endSection();
            }
        };
        this.mDisplayCallback = r0;
        this.mMediaRouterCallback = new MediaRouter.SimpleCallback() { // from class: com.android.keyguard.KeyguardDisplayManager.3
            @Override // android.media.MediaRouter.Callback
            public final void onRoutePresentationDisplayChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
                Log.d("KeyguardDisplayManager", "onRoutePresentationDisplayChanged: info=" + routeInfo);
                KeyguardDisplayManager keyguardDisplayManager = KeyguardDisplayManager.this;
                keyguardDisplayManager.updateDisplays(keyguardDisplayManager.mShowing);
            }

            @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
            public final void onRouteSelected(MediaRouter mediaRouter, int i, MediaRouter.RouteInfo routeInfo) {
                Log.d("KeyguardDisplayManager", "onRouteSelected: type=" + i + ", info=" + routeInfo);
                KeyguardDisplayManager keyguardDisplayManager = KeyguardDisplayManager.this;
                keyguardDisplayManager.updateDisplays(keyguardDisplayManager.mShowing);
            }

            @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
            public final void onRouteUnselected(MediaRouter mediaRouter, int i, MediaRouter.RouteInfo routeInfo) {
                Log.d("KeyguardDisplayManager", "onRouteUnselected: type=" + i + ", info=" + routeInfo);
                KeyguardDisplayManager keyguardDisplayManager = KeyguardDisplayManager.this;
                keyguardDisplayManager.updateDisplays(keyguardDisplayManager.mShowing);
            }
        };
        this.mKeyguardFoldController = keyguardFoldController;
        this.mDisableHandler = keyguardPresentationDisabler;
        this.mContext = context;
        this.mNavigationBarControllerLazy = lazy;
        this.mKeyguardStatusViewComponentFactory = factory;
        executor2.execute(new Runnable() { // from class: com.android.keyguard.KeyguardDisplayManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardDisplayManager keyguardDisplayManager = KeyguardDisplayManager.this;
                keyguardDisplayManager.mMediaRouter = (MediaRouter) keyguardDisplayManager.mContext.getSystemService(MediaRouter.class);
            }
        });
        this.mDisplayService = (DisplayManager) context.getSystemService(DisplayManager.class);
        this.mDisplayTracker = displayTracker;
        ((DisplayTrackerImpl) displayTracker).addDisplayChangeCallback(r0, executor);
        this.mDeviceStateHelper = deviceStateHelper;
        this.mKeyguardStateController = keyguardStateController;
        if (LsRune.KEYGUARD_SUB_DISPLAY_LARGE_FRONT) {
            ((KeyguardFoldControllerImpl) keyguardFoldController).addCallback(new KeyguardFoldController.StateListener() { // from class: com.android.keyguard.KeyguardDisplayManager$$ExternalSyntheticLambda2
                @Override // com.android.systemui.keyguard.KeyguardFoldController.StateListener
                public final void onFoldStateChanged(boolean z) {
                    final KeyguardDisplayManager keyguardDisplayManager = KeyguardDisplayManager.this;
                    keyguardDisplayManager.getClass();
                    if (LsRune.KEYGUARD_SUB_DISPLAY_LARGE_FRONT) {
                        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) keyguardDisplayManager.mKeyguardStateController;
                        if (!keyguardStateControllerImpl.mSecure) {
                            if (z) {
                                if (keyguardStateControllerImpl.mShowing) {
                                    keyguardDisplayManager.mShowing = false;
                                    keyguardDisplayManager.show();
                                    return;
                                }
                                return;
                            }
                            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.android.keyguard.KeyguardDisplayManager.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (!((KeyguardFoldControllerImpl) KeyguardDisplayManager.this.mKeyguardFoldController).isFoldOpened()) {
                                        KeyguardDisplayManager.this.hide();
                                    }
                                }
                            }, 0L);
                        }
                    }
                }
            }, 6);
        }
    }

    public final void hide() {
        if (this.mShowing) {
            MediaRouter mediaRouter = this.mMediaRouter;
            if (mediaRouter != null) {
                mediaRouter.removeCallback(this.mMediaRouterCallback);
            }
            updateDisplays(false);
        }
        this.mShowing = false;
    }

    public final void show() {
        if (!this.mShowing) {
            MediaRouter mediaRouter = this.mMediaRouter;
            if (mediaRouter != null) {
                mediaRouter.addCallback(4, this.mMediaRouterCallback, 8);
            } else {
                Log.w("KeyguardDisplayManager", "MediaRouter not yet initialized");
            }
            updateDisplays(true);
        }
        this.mShowing = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x00f9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean showPresentation(android.view.Display r9) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardDisplayManager.showPresentation(android.view.Display):boolean");
    }

    public final void updateDisplays(boolean z) {
        SparseArray sparseArray = this.mPresentations;
        if (z) {
            for (Display display : ((DisplayTrackerImpl) this.mDisplayTracker).displayManager.getDisplays()) {
                int displayId = display.getDisplayId();
                if (sparseArray.get(displayId) != null) {
                    KeyguardPresentation keyguardPresentation = (KeyguardPresentation) sparseArray.get(displayId);
                    int i = KeyguardPresentation.$r8$clinit;
                    keyguardPresentation.updateBounds();
                }
                updateNavigationBarVisibility(displayId, false);
                showPresentation(display);
            }
            return;
        }
        sparseArray.size();
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            updateNavigationBarVisibility(sparseArray.keyAt(size), true);
            ((Presentation) sparseArray.valueAt(size)).dismiss();
        }
        sparseArray.clear();
    }

    public final void updateNavigationBarVisibility(int i, boolean z) {
        NavigationBarView navigationBarView;
        this.mDisplayTracker.getClass();
        if (i == 0 || (navigationBarView = ((NavigationBarController) this.mNavigationBarControllerLazy.get()).getNavigationBarView(i)) == null) {
            return;
        }
        if (z) {
            navigationBarView.getRootView().setVisibility(0);
        } else {
            navigationBarView.getRootView().setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class KeyguardPresentation extends Presentation {
        public static final /* synthetic */ int $r8$clinit = 0;
        public View mClock;
        public KeyguardClockSwitchController mKeyguardClockSwitchController;
        public final KeyguardStatusViewComponent.Factory mKeyguardStatusViewComponentFactory;
        public int mMarginLeft;
        public int mMarginTop;
        public final AnonymousClass1 mMoveTextRunnable;
        public int mUsableHeight;
        public int mUsableWidth;

        /* JADX WARN: Type inference failed for: r3v1, types: [com.android.keyguard.KeyguardDisplayManager$KeyguardPresentation$1] */
        public KeyguardPresentation(Context context, Display display, KeyguardStatusViewComponent.Factory factory) {
            super(context, display, 2132018536, 2009);
            this.mMoveTextRunnable = new Runnable() { // from class: com.android.keyguard.KeyguardDisplayManager.KeyguardPresentation.1
                @Override // java.lang.Runnable
                public final void run() {
                    int i = KeyguardPresentation.this.mMarginLeft;
                    double random = Math.random();
                    KeyguardPresentation keyguardPresentation = KeyguardPresentation.this;
                    int width = i + ((int) (random * (keyguardPresentation.mUsableWidth - keyguardPresentation.mClock.getWidth())));
                    int i2 = KeyguardPresentation.this.mMarginTop;
                    double random2 = Math.random();
                    KeyguardPresentation keyguardPresentation2 = KeyguardPresentation.this;
                    KeyguardPresentation.this.mClock.setTranslationX(width);
                    KeyguardPresentation.this.mClock.setTranslationY(i2 + ((int) (random2 * (keyguardPresentation2.mUsableHeight - keyguardPresentation2.mClock.getHeight()))));
                    KeyguardPresentation.this.mClock.setVisibility(0);
                    KeyguardPresentation keyguardPresentation3 = KeyguardPresentation.this;
                    keyguardPresentation3.mClock.postDelayed(keyguardPresentation3.mMoveTextRunnable, 10000L);
                    KeyguardPresentation.this.mKeyguardClockSwitchController.refresh();
                }
            };
            this.mKeyguardStatusViewComponentFactory = factory;
            setCancelable(false);
            getWindow().getDecorView().semSetRoundedCorners(0);
        }

        @Override // android.app.Dialog
        public final void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            updateBounds();
            setContentView(LayoutInflater.from(getContext()).inflate(com.android.systemui.R.layout.keyguard_presentation, (ViewGroup) null));
            getWindow().getDecorView().setSystemUiVisibility(1792);
            getWindow().getAttributes().setFitInsetsTypes(0);
            getWindow().setNavigationBarContrastEnforced(false);
            getWindow().setNavigationBarColor(0);
            View findViewById = findViewById(com.android.systemui.R.id.clock);
            this.mClock = findViewById;
            FrameLayout frameLayout = (FrameLayout) findViewById.findViewById(com.android.systemui.R.id.lockscreen_clock_view);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) frameLayout.getLayoutParams();
            layoutParams.removeRule(20);
            layoutParams.addRule(13, -1);
            frameLayout.setLayoutParams(layoutParams);
            this.mClock.setVisibility(4);
            this.mClock.post(this.mMoveTextRunnable);
            KeyguardClockSwitchController keyguardClockSwitchController = this.mKeyguardStatusViewComponentFactory.build((KeyguardStatusView) findViewById(com.android.systemui.R.id.clock)).getKeyguardClockSwitchController();
            this.mKeyguardClockSwitchController = keyguardClockSwitchController;
            keyguardClockSwitchController.mOnlyClock = true;
            keyguardClockSwitchController.init();
        }

        @Override // android.app.Dialog, android.view.Window.Callback
        public final void onDetachedFromWindow() {
            this.mClock.removeCallbacks(this.mMoveTextRunnable);
        }

        @Override // android.app.Presentation
        public final void onDisplayChanged() {
            updateBounds();
            getWindow().getDecorView().requestLayout();
        }

        public final void updateBounds() {
            Rect bounds = getWindow().getWindowManager().getMaximumWindowMetrics().getBounds();
            this.mUsableWidth = (bounds.width() * 80) / 100;
            this.mUsableHeight = (bounds.height() * 80) / 100;
            this.mMarginLeft = (bounds.width() * 20) / 200;
            this.mMarginTop = (bounds.height() * 20) / 200;
        }

        @Override // android.app.Dialog, android.content.DialogInterface
        public final void cancel() {
        }
    }
}
