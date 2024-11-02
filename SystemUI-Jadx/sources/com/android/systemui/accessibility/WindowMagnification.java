package com.android.systemui.accessibility;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.util.SparseArray;
import android.view.Display;
import android.view.SurfaceControl;
import android.view.accessibility.AccessibilityManager;
import com.android.internal.graphics.SfVsyncFrameCallbackProvider;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.LockIconView$$ExternalSyntheticOutline0;
import com.android.systemui.CoreStartable;
import com.android.systemui.accessibility.MagnificationModeSwitch;
import com.android.systemui.accessibility.MagnificationSettingsController;
import com.android.systemui.model.SysUiState;
import com.android.systemui.recents.OverviewProxyService;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.util.settings.SecureSettings;
import java.io.PrintWriter;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WindowMagnification implements CoreStartable, CommandQueue.Callbacks {
    public final AccessibilityLogger mA11yLogger;
    public final AccessibilityManager mAccessibilityManager;
    public final CommandQueue mCommandQueue;
    public final DisplayTracker mDisplayTracker;
    public final Handler mHandler;
    DisplayIdIndexSupplier mMagnificationControllerSupplier;
    final MagnificationSettingsController.Callback mMagnificationSettingsControllerCallback;
    DisplayIdIndexSupplier mMagnificationSettingsSupplier;
    public final ModeSwitchesController mModeSwitchesController;
    public final OverviewProxyService mOverviewProxyService;
    public final SysUiState mSysUiState;
    public WindowMagnificationConnectionImpl mWindowMagnificationConnectionImpl;
    final WindowMagnifierCallback mWindowMagnifierCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.accessibility.WindowMagnification$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements WindowMagnifierCallback {
        public AnonymousClass2() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.accessibility.WindowMagnification$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements MagnificationSettingsController.Callback {
        public AnonymousClass3() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ControllerSupplier extends DisplayIdIndexSupplier {
        public final Context mContext;
        public final Handler mHandler;
        public final SecureSettings mSecureSettings;
        public final SysUiState mSysUiState;
        public final WindowMagnifierCallback mWindowMagnifierCallback;

        public ControllerSupplier(Context context, Handler handler, WindowMagnifierCallback windowMagnifierCallback, DisplayManager displayManager, SysUiState sysUiState, SecureSettings secureSettings) {
            super(displayManager);
            this.mContext = context;
            this.mHandler = handler;
            this.mWindowMagnifierCallback = windowMagnifierCallback;
            this.mSysUiState = sysUiState;
            this.mSecureSettings = secureSettings;
        }

        @Override // com.android.systemui.accessibility.DisplayIdIndexSupplier
        public final Object createInstance(Display display) {
            Context createWindowContext = this.mContext.createWindowContext(display, 2039, null);
            createWindowContext.setTheme(2132018524);
            return new WindowMagnificationController(createWindowContext, this.mHandler, new WindowMagnificationAnimationController(createWindowContext), new SfVsyncFrameCallbackProvider(), null, new SurfaceControl.Transaction(), this.mWindowMagnifierCallback, this.mSysUiState, new WindowMagnification$ControllerSupplier$$ExternalSyntheticLambda0(), this.mSecureSettings);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SettingsSupplier extends DisplayIdIndexSupplier {
        public final Context mContext;
        public final SecureSettings mSecureSettings;
        public final MagnificationSettingsController.Callback mSettingsControllerCallback;

        public SettingsSupplier(Context context, MagnificationSettingsController.Callback callback, DisplayManager displayManager, SecureSettings secureSettings) {
            super(displayManager);
            this.mContext = context;
            this.mSettingsControllerCallback = callback;
            this.mSecureSettings = secureSettings;
        }

        @Override // com.android.systemui.accessibility.DisplayIdIndexSupplier
        public final Object createInstance(Display display) {
            Context createWindowContext = this.mContext.createWindowContext(display, 2039, null);
            createWindowContext.setTheme(2132018524);
            return new MagnificationSettingsController(createWindowContext, new SfVsyncFrameCallbackProvider(), this.mSettingsControllerCallback, this.mSecureSettings);
        }
    }

    public WindowMagnification(Context context, Handler handler, CommandQueue commandQueue, ModeSwitchesController modeSwitchesController, SysUiState sysUiState, OverviewProxyService overviewProxyService, SecureSettings secureSettings, DisplayTracker displayTracker, DisplayManager displayManager, AccessibilityLogger accessibilityLogger) {
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        this.mWindowMagnifierCallback = anonymousClass2;
        AnonymousClass3 anonymousClass3 = new AnonymousClass3();
        this.mMagnificationSettingsControllerCallback = anonymousClass3;
        this.mHandler = handler;
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService(AccessibilityManager.class);
        this.mCommandQueue = commandQueue;
        this.mModeSwitchesController = modeSwitchesController;
        this.mSysUiState = sysUiState;
        this.mOverviewProxyService = overviewProxyService;
        this.mDisplayTracker = displayTracker;
        this.mA11yLogger = accessibilityLogger;
        this.mMagnificationControllerSupplier = new ControllerSupplier(context, handler, anonymousClass2, displayManager, sysUiState, secureSettings);
        this.mMagnificationSettingsSupplier = new SettingsSupplier(context, anonymousClass3, displayManager, secureSettings);
        modeSwitchesController.mClickListenerDelegate = new MagnificationModeSwitch.ClickListener() { // from class: com.android.systemui.accessibility.WindowMagnification$$ExternalSyntheticLambda0
            @Override // com.android.systemui.accessibility.MagnificationModeSwitch.ClickListener
            public final void onClick(int i) {
                WindowMagnification windowMagnification = WindowMagnification.this;
                windowMagnification.getClass();
                windowMagnification.mHandler.post(new WindowMagnification$$ExternalSyntheticLambda2(i, 0, windowMagnification));
            }
        };
    }

    @Override // com.android.systemui.CoreStartable, com.android.systemui.Dumpable
    public final void dump(final PrintWriter printWriter, String[] strArr) {
        printWriter.println("WindowMagnification");
        DisplayIdIndexSupplier displayIdIndexSupplier = this.mMagnificationControllerSupplier;
        Consumer consumer = new Consumer() { // from class: com.android.systemui.accessibility.WindowMagnification$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Object obj2;
                Object obj3;
                Object obj4;
                PrintWriter printWriter2 = printWriter;
                WindowMagnificationController windowMagnificationController = (WindowMagnificationController) obj;
                printWriter2.println("WindowMagnificationController (displayId=" + windowMagnificationController.mDisplayId + "):");
                StringBuilder m = LockIconView$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("      mOverlapWithGestureInsets:"), windowMagnificationController.mOverlapWithGestureInsets, printWriter2, "      mScale:"), windowMagnificationController.mScale, printWriter2, "      mWindowBounds:");
                m.append(windowMagnificationController.mWindowBounds);
                printWriter2.println(m.toString());
                StringBuilder sb = new StringBuilder("      mMirrorViewBounds:");
                Object obj5 = "empty";
                if (!windowMagnificationController.isActivated()) {
                    obj2 = "empty";
                } else {
                    obj2 = windowMagnificationController.mMirrorViewBounds;
                }
                sb.append(obj2);
                printWriter2.println(sb.toString());
                StringBuilder sb2 = new StringBuilder("      mMagnificationFrameBoundary:");
                if (!windowMagnificationController.isActivated()) {
                    obj3 = "empty";
                } else {
                    obj3 = windowMagnificationController.mMagnificationFrameBoundary;
                }
                sb2.append(obj3);
                printWriter2.println(sb2.toString());
                StringBuilder sb3 = new StringBuilder("      mMagnificationFrame:");
                if (!windowMagnificationController.isActivated()) {
                    obj4 = "empty";
                } else {
                    obj4 = windowMagnificationController.mMagnificationFrame;
                }
                sb3.append(obj4);
                printWriter2.println(sb3.toString());
                StringBuilder sb4 = new StringBuilder("      mSourceBounds:");
                if (!windowMagnificationController.mSourceBounds.isEmpty()) {
                    obj5 = windowMagnificationController.mSourceBounds;
                }
                sb4.append(obj5);
                printWriter2.println(sb4.toString());
                StringBuilder m2 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("      mSystemGestureTop:"), windowMagnificationController.mSystemGestureTop, printWriter2, "      mMagnificationFrameOffsetX:"), windowMagnificationController.mMagnificationFrameOffsetX, printWriter2, "      mMagnificationFrameOffsetY:");
                m2.append(windowMagnificationController.mMagnificationFrameOffsetY);
                printWriter2.println(m2.toString());
            }
        };
        int i = 0;
        while (true) {
            SparseArray sparseArray = displayIdIndexSupplier.mSparseArray;
            if (i < sparseArray.size()) {
                consumer.accept(sparseArray.valueAt(i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void requestWindowMagnificationConnection(boolean z) {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        if (z) {
            if (this.mWindowMagnificationConnectionImpl == null) {
                this.mWindowMagnificationConnectionImpl = new WindowMagnificationConnectionImpl(this, this.mHandler);
            }
            accessibilityManager.setWindowMagnificationConnection(this.mWindowMagnificationConnectionImpl);
            return;
        }
        accessibilityManager.setWindowMagnificationConnection(null);
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        this.mCommandQueue.addCallback((CommandQueue.Callbacks) this);
        this.mOverviewProxyService.addCallback(new OverviewProxyService.OverviewProxyListener() { // from class: com.android.systemui.accessibility.WindowMagnification.1
            @Override // com.android.systemui.recents.OverviewProxyService.OverviewProxyListener
            public final void onConnectionChanged(boolean z) {
                if (z) {
                    WindowMagnification windowMagnification = WindowMagnification.this;
                    DisplayIdIndexSupplier displayIdIndexSupplier = windowMagnification.mMagnificationControllerSupplier;
                    windowMagnification.mDisplayTracker.getClass();
                    WindowMagnificationController windowMagnificationController = (WindowMagnificationController) displayIdIndexSupplier.mSparseArray.get(0);
                    if (windowMagnificationController != null) {
                        windowMagnificationController.updateSysUIState(true);
                        return;
                    }
                    SysUiState sysUiState = windowMagnification.mSysUiState;
                    sysUiState.setFlag(524288L, false);
                    sysUiState.commitUpdate(0);
                }
            }
        });
    }
}
