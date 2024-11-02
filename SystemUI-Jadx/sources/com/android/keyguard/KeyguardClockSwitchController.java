package com.android.keyguard;

import android.app.smartspace.SmartspaceSession;
import android.database.ContentObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyguard.KeyguardUnlockAnimationController;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.plugins.ClockController;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shared.clocks.ClockRegistry;
import com.android.systemui.statusbar.lockscreen.LockscreenSmartspaceController;
import com.android.systemui.statusbar.phone.NotificationIconAreaController;
import com.android.systemui.statusbar.phone.NotificationIconContainer;
import com.android.systemui.util.Assert;
import com.android.systemui.util.ViewController;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutionImpl;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.systemui.util.settings.SecureSettings;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardClockSwitchController extends ViewController implements Dumpable {
    public boolean mCanShowDoubleLineClock;
    public final AnonymousClass4 mClockChangedListener;
    public final ClockEventController mClockEventController;
    public final ClockRegistry mClockRegistry;
    public int mCurrentClockSize;
    public ViewGroup mDateWeatherView;
    public final AnonymousClass1 mDoubleLineClockObserver;
    public final DumpManager mDumpManager;
    public int mKeyguardDateWeatherViewInvisibility;
    public final KeyguardSliceViewController mKeyguardSliceViewController;
    public final KeyguardUnlockAnimationController mKeyguardUnlockAnimationController;
    public final AnonymousClass3 mKeyguardUnlockAnimationListener;
    public FrameLayout mLargeClockFrame;
    public final LogBuffer mLogBuffer;
    public final NotificationIconAreaController mNotificationIconAreaController;
    public boolean mOnlyClock;
    public final SecureSettings mSecureSettings;
    public final AnonymousClass2 mShowWeatherObserver;
    public FrameLayout mSmallClockFrame;
    public final LockscreenSmartspaceController mSmartspaceController;
    public View mSmartspaceView;
    public ViewGroup mStatusArea;
    public final StatusBarStateController mStatusBarStateController;
    public final DelayableExecutor mUiExecutor;
    public View mWeatherView;

    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.keyguard.KeyguardClockSwitchController$1] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.keyguard.KeyguardClockSwitchController$2] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.keyguard.KeyguardClockSwitchController$3] */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.android.keyguard.KeyguardClockSwitchController$4] */
    public KeyguardClockSwitchController(KeyguardClockSwitch keyguardClockSwitch, StatusBarStateController statusBarStateController, ClockRegistry clockRegistry, KeyguardSliceViewController keyguardSliceViewController, NotificationIconAreaController notificationIconAreaController, LockscreenSmartspaceController lockscreenSmartspaceController, KeyguardUnlockAnimationController keyguardUnlockAnimationController, SecureSettings secureSettings, DelayableExecutor delayableExecutor, DumpManager dumpManager, ClockEventController clockEventController, LogBuffer logBuffer) {
        super(keyguardClockSwitch);
        this.mCurrentClockSize = 1;
        this.mKeyguardDateWeatherViewInvisibility = 4;
        this.mOnlyClock = false;
        this.mCanShowDoubleLineClock = true;
        Handler handler = null;
        this.mDoubleLineClockObserver = new ContentObserver(handler) { // from class: com.android.keyguard.KeyguardClockSwitchController.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z) {
                KeyguardClockSwitchController.this.updateDoubleLineClock();
            }
        };
        this.mShowWeatherObserver = new ContentObserver(handler) { // from class: com.android.keyguard.KeyguardClockSwitchController.2
            @Override // android.database.ContentObserver
            public final void onChange(boolean z) {
                KeyguardClockSwitchController.this.setWeatherVisibility();
            }
        };
        this.mKeyguardUnlockAnimationListener = new KeyguardUnlockAnimationController.KeyguardUnlockAnimationListener() { // from class: com.android.keyguard.KeyguardClockSwitchController.3
            @Override // com.android.systemui.keyguard.KeyguardUnlockAnimationController.KeyguardUnlockAnimationListener
            public final void onUnlockAnimationFinished() {
                ViewGroup viewGroup = KeyguardClockSwitchController.this.mStatusArea;
                if (viewGroup != null) {
                    viewGroup.setClipChildren(true);
                }
            }
        };
        this.mStatusBarStateController = statusBarStateController;
        this.mClockRegistry = clockRegistry;
        this.mKeyguardSliceViewController = keyguardSliceViewController;
        this.mNotificationIconAreaController = notificationIconAreaController;
        this.mSmartspaceController = lockscreenSmartspaceController;
        this.mSecureSettings = secureSettings;
        this.mUiExecutor = delayableExecutor;
        this.mKeyguardUnlockAnimationController = keyguardUnlockAnimationController;
        this.mDumpManager = dumpManager;
        this.mClockEventController = clockEventController;
        this.mLogBuffer = logBuffer;
        ((KeyguardClockSwitch) this.mView).mLogBuffer = logBuffer;
        this.mClockChangedListener = new ClockRegistry.ClockChangeListener() { // from class: com.android.keyguard.KeyguardClockSwitchController.4
            @Override // com.android.systemui.shared.clocks.ClockRegistry.ClockChangeListener
            public final void onCurrentClockChanged() {
                KeyguardClockSwitchController keyguardClockSwitchController = KeyguardClockSwitchController.this;
                keyguardClockSwitchController.setClock(keyguardClockSwitchController.mClockRegistry.createCurrentClock());
            }

            @Override // com.android.systemui.shared.clocks.ClockRegistry.ClockChangeListener
            public final void onAvailableClocksChanged() {
            }
        };
    }

    public final void addDateWeatherView(int i) {
        int i2;
        ViewGroup viewGroup = (ViewGroup) this.mView;
        LockscreenSmartspaceController lockscreenSmartspaceController = this.mSmartspaceController;
        this.mDateWeatherView = (ViewGroup) lockscreenSmartspaceController.buildAndConnectDateView(viewGroup);
        this.mStatusArea.addView(this.mDateWeatherView, i, new LinearLayout.LayoutParams(-1, -2));
        this.mDateWeatherView.setPaddingRelative(getContext().getResources().getDimensionPixelSize(R.dimen.below_clock_padding_start), 0, getContext().getResources().getDimensionPixelSize(R.dimen.below_clock_padding_end), 0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        ViewGroup viewGroup2 = (ViewGroup) this.mView;
        ((ExecutionImpl) lockscreenSmartspaceController.execution).assertIsMainThread();
        if (lockscreenSmartspaceController.isEnabled()) {
            if (lockscreenSmartspaceController.isDateWeatherDecoupled()) {
                View buildView = lockscreenSmartspaceController.buildView(viewGroup2, lockscreenSmartspaceController.weatherPlugin, null);
                lockscreenSmartspaceController.connectSession();
                this.mWeatherView = buildView;
                if (this.mDateWeatherView.getChildCount() == 0) {
                    i2 = 0;
                } else {
                    i2 = 1;
                }
                this.mDateWeatherView.addView(this.mWeatherView, i2, layoutParams);
                this.mWeatherView.setPaddingRelative(0, 0, 4, 0);
                return;
            }
            throw new RuntimeException("Cannot build weather view when not decoupled");
        }
        throw new RuntimeException("Cannot build view when not enabled");
    }

    public final void addSmartspaceView(int i) {
        ViewGroup viewGroup = (ViewGroup) this.mView;
        LockscreenSmartspaceController lockscreenSmartspaceController = this.mSmartspaceController;
        ((ExecutionImpl) lockscreenSmartspaceController.execution).assertIsMainThread();
        if (lockscreenSmartspaceController.isEnabled()) {
            View buildView = lockscreenSmartspaceController.buildView(viewGroup, lockscreenSmartspaceController.plugin, lockscreenSmartspaceController.configPlugin);
            lockscreenSmartspaceController.connectSession();
            this.mSmartspaceView = buildView;
            if (buildView != null) {
                this.mStatusArea.addView(this.mSmartspaceView, i, new LinearLayout.LayoutParams(-1, -2));
                this.mSmartspaceView.setPaddingRelative(getContext().getResources().getDimensionPixelSize(R.dimen.below_clock_padding_start), 0, getContext().getResources().getDimensionPixelSize(R.dimen.below_clock_padding_end), 0);
                this.mKeyguardUnlockAnimationController.lockscreenSmartspace = this.mSmartspaceView;
                return;
            }
            return;
        }
        throw new RuntimeException("Cannot build view when not enabled");
    }

    public final void displayClock(int i, boolean z) {
        if (!this.mCanShowDoubleLineClock && i == 0) {
            return;
        }
        this.mCurrentClockSize = i;
        setDateWeatherVisibility();
        ClockController clockController = this.mClockEventController.clock;
        KeyguardClockSwitch keyguardClockSwitch = (KeyguardClockSwitch) this.mView;
        Integer num = keyguardClockSwitch.mDisplayedClockSize;
        boolean z2 = false;
        if (num == null || i != num.intValue()) {
            if (keyguardClockSwitch.mChildrenAreLaidOut) {
                if (i == 0) {
                    z2 = true;
                }
                keyguardClockSwitch.updateClockViews(z2, z);
            }
            keyguardClockSwitch.mDisplayedClockSize = Integer.valueOf(i);
            z2 = true;
        }
        if (clockController != null && z && z2 && i == 0) {
            this.mUiExecutor.executeDelayed(133L, new KeyguardClockSwitchController$$ExternalSyntheticLambda2(clockController, 3));
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        boolean z;
        StringBuilder sb = new StringBuilder("currentClockSizeLarge: ");
        if (this.mCurrentClockSize == 0) {
            z = true;
        } else {
            z = false;
        }
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(sb, z, printWriter, "mCanShowDoubleLineClock: "), this.mCanShowDoubleLineClock, printWriter);
        KeyguardClockSwitch keyguardClockSwitch = (KeyguardClockSwitch) this.mView;
        keyguardClockSwitch.getClass();
        printWriter.println("KeyguardClockSwitch:");
        printWriter.println("  mSmallClockFrame = " + keyguardClockSwitch.mSmallClockFrame);
        printWriter.println("  mSmallClockFrame.alpha = " + keyguardClockSwitch.mSmallClockFrame.getAlpha());
        printWriter.println("  mLargeClockFrame = " + keyguardClockSwitch.mLargeClockFrame);
        printWriter.println("  mLargeClockFrame.alpha = " + keyguardClockSwitch.mLargeClockFrame.getAlpha());
        printWriter.println("  mStatusArea = " + keyguardClockSwitch.mStatusArea);
        printWriter.println("  mDisplayedClockSize = " + keyguardClockSwitch.mDisplayedClockSize);
        ClockRegistry clockRegistry = this.mClockRegistry;
        clockRegistry.getClass();
        printWriter.println("ClockRegistry:");
        printWriter.println("  settings = " + clockRegistry.settings);
        for (Map.Entry entry : clockRegistry.availableClocks.entrySet()) {
            printWriter.println("  availableClocks[" + ((String) entry.getKey()) + "] = " + ((ClockRegistry.ClockInfo) entry.getValue()));
        }
        ClockEventController clockEventController = this.mClockEventController;
        ClockController clockController = clockEventController.clock;
        if (clockController != null) {
            clockController.dump(printWriter);
        }
        clockEventController.getClass();
    }

    @Override // com.android.systemui.util.ViewController
    public final void onInit() {
        this.mKeyguardSliceViewController.init();
        this.mSmallClockFrame = (FrameLayout) ((KeyguardClockSwitch) this.mView).findViewById(R.id.lockscreen_clock_view);
        this.mLargeClockFrame = (FrameLayout) ((KeyguardClockSwitch) this.mView).findViewById(R.id.lockscreen_clock_view_large);
        String cls = KeyguardClockSwitchController.class.toString();
        DumpManager dumpManager = this.mDumpManager;
        dumpManager.unregisterDumpable(cls);
        dumpManager.registerDumpable(KeyguardClockSwitchController.class.toString(), this);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        boolean z;
        ClockRegistry clockRegistry = this.mClockRegistry;
        clockRegistry.getClass();
        Assert.isMainThread();
        ((ArrayList) clockRegistry.clockChangeListeners).add(this.mClockChangedListener);
        setClock(clockRegistry.createCurrentClock());
        this.mClockEventController.registerListeners(this.mView);
        ((KeyguardClockSwitch) this.mView).getResources().getDimensionPixelSize(R.dimen.keyguard_clock_top_margin);
        ((KeyguardClockSwitch) this.mView).getResources().getDimensionPixelSize(R.dimen.keyguard_large_clock_top_margin);
        this.mKeyguardDateWeatherViewInvisibility = ((KeyguardClockSwitch) this.mView).getResources().getInteger(R.integer.keyguard_date_weather_view_invisibility);
        if (this.mOnlyClock) {
            ((KeyguardClockSwitch) this.mView).findViewById(R.id.keyguard_slice_view).setVisibility(8);
            ((KeyguardClockSwitch) this.mView).findViewById(R.id.left_aligned_notification_icon_container).setVisibility(8);
            return;
        }
        NotificationIconContainer notificationIconContainer = (NotificationIconContainer) ((KeyguardClockSwitch) this.mView).findViewById(R.id.left_aligned_notification_icon_container);
        NotificationIconAreaController notificationIconAreaController = this.mNotificationIconAreaController;
        NotificationIconContainer notificationIconContainer2 = notificationIconAreaController.mAodIcons;
        if (notificationIconContainer2 != null && notificationIconContainer != notificationIconContainer2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            notificationIconContainer2.setAnimationsEnabled(false);
            notificationIconAreaController.mAodIcons.removeAllViews();
        }
        notificationIconAreaController.mAodIcons = notificationIconContainer;
        notificationIconContainer.mOnLockScreen = true;
        notificationIconAreaController.updateAodIconsVisibility(false, z);
        notificationIconAreaController.updateAnimations();
        if (z) {
            notificationIconAreaController.updateAodNotificationIcons();
        }
        notificationIconAreaController.updateIconLayoutParams(notificationIconAreaController.mContext);
        this.mStatusArea = (ViewGroup) ((KeyguardClockSwitch) this.mView).findViewById(R.id.keyguard_status_area);
        LockscreenSmartspaceController lockscreenSmartspaceController = this.mSmartspaceController;
        if (lockscreenSmartspaceController.isEnabled()) {
            View findViewById = ((KeyguardClockSwitch) this.mView).findViewById(R.id.keyguard_slice_view);
            int indexOfChild = this.mStatusArea.indexOfChild(findViewById);
            findViewById.setVisibility(8);
            if (lockscreenSmartspaceController.isDateWeatherDecoupled()) {
                addDateWeatherView(indexOfChild);
                indexOfChild++;
            }
            addSmartspaceView(indexOfChild);
        }
        SecureSettings secureSettings = this.mSecureSettings;
        secureSettings.registerContentObserverForUser("lockscreen_use_double_line_clock", false, (ContentObserver) this.mDoubleLineClockObserver, -1);
        secureSettings.registerContentObserverForUser("lockscreen_weather_enabled", false, (ContentObserver) this.mShowWeatherObserver, -1);
        updateDoubleLineClock();
        setDateWeatherVisibility();
        setWeatherVisibility();
        this.mKeyguardUnlockAnimationController.listeners.add(this.mKeyguardUnlockAnimationListener);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        ClockRegistry clockRegistry = this.mClockRegistry;
        clockRegistry.getClass();
        Assert.isMainThread();
        ((ArrayList) clockRegistry.clockChangeListeners).remove(this.mClockChangedListener);
        this.mClockEventController.unregisterListeners();
        setClock(null);
        this.mSecureSettings.unregisterContentObserver(this.mDoubleLineClockObserver);
        this.mKeyguardUnlockAnimationController.listeners.remove(this.mKeyguardUnlockAnimationListener);
    }

    public final void refresh() {
        SmartspaceSession smartspaceSession;
        LockscreenSmartspaceController lockscreenSmartspaceController = this.mSmartspaceController;
        if (lockscreenSmartspaceController != null && (smartspaceSession = lockscreenSmartspaceController.session) != null) {
            smartspaceSession.requestSmartspaceUpdate();
        }
        ClockController clockController = this.mClockEventController.clock;
        if (clockController != null) {
            clockController.getSmallClock().getEvents().onTimeTick();
            clockController.getLargeClock().getEvents().onTimeTick();
        }
    }

    public final void setClock(ClockController clockController) {
        LogBuffer logBuffer;
        if (clockController != null && (logBuffer = this.mLogBuffer) != null) {
            logBuffer.log("KeyguardClockSwitchController", LogLevel.INFO, "New Clock");
        }
        this.mClockEventController.setClock(clockController);
        KeyguardClockSwitch keyguardClockSwitch = (KeyguardClockSwitch) this.mView;
        this.mStatusBarStateController.getState();
        keyguardClockSwitch.mClock = clockController;
        keyguardClockSwitch.mSmallClockFrame.removeAllViews();
        keyguardClockSwitch.mLargeClockFrame.removeAllViews();
        if (clockController == null) {
            LogBuffer logBuffer2 = keyguardClockSwitch.mLogBuffer;
            if (logBuffer2 != null) {
                logBuffer2.log("KeyguardClockSwitch", LogLevel.ERROR, "No clock being shown");
            }
        } else {
            LogBuffer logBuffer3 = keyguardClockSwitch.mLogBuffer;
            if (logBuffer3 != null) {
                logBuffer3.log("KeyguardClockSwitch", LogLevel.INFO, "Attached new clock views to switch");
            }
            keyguardClockSwitch.mSmallClockFrame.addView(clockController.getSmallClock().getView());
            keyguardClockSwitch.mLargeClockFrame.addView(clockController.getLargeClock().getView());
            keyguardClockSwitch.updateClockTargetRegions();
            keyguardClockSwitch.updateStatusArea(false);
        }
        setDateWeatherVisibility();
    }

    public final void setDateWeatherVisibility() {
        if (this.mDateWeatherView != null) {
            ((ExecutorImpl) this.mUiExecutor).execute(new KeyguardClockSwitchController$$ExternalSyntheticLambda2(this, 2));
        }
    }

    public final void setWeatherVisibility() {
        if (this.mWeatherView != null) {
            ((ExecutorImpl) this.mUiExecutor).execute(new KeyguardClockSwitchController$$ExternalSyntheticLambda2(this, 1));
        }
    }

    public final void updateDoubleLineClock() {
        boolean z = true;
        int i = 0;
        if (this.mSecureSettings.getIntForUser(1, -2, "lockscreen_use_double_line_clock") == 0) {
            z = false;
        }
        this.mCanShowDoubleLineClock = z;
        if (!z) {
            ((ExecutorImpl) this.mUiExecutor).execute(new KeyguardClockSwitchController$$ExternalSyntheticLambda2(this, i));
        }
    }
}
