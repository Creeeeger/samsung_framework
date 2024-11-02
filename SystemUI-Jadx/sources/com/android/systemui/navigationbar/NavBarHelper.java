package com.android.systemui.navigationbar;

import android.R;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.IRotationWatcher;
import android.view.IWallpaperVisibilityListener;
import android.view.IWindowManager;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.accessibility.AccessibilityButtonModeObserver;
import com.android.systemui.accessibility.AccessibilityButtonTargetsObserver;
import com.android.systemui.accessibility.SystemActions;
import com.android.systemui.assist.AssistManager;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.navigationbar.NavBarHelper;
import com.android.systemui.navigationbar.NavigationModeController;
import com.android.systemui.navigationbar.gestural.AccessibilityGestureHandler;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler;
import com.android.systemui.navigationbar.gestural.SearcleGestureHandler;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.recents.OverviewProxyService;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.shade.NotificationShadeWindowView;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda13;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import dagger.Lazy;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavBarHelper implements AccessibilityManager.AccessibilityServicesStateChangeListener, AccessibilityButtonModeObserver.ModeChangedListener, AccessibilityButtonTargetsObserver.TargetsChangedListener, OverviewProxyService.OverviewProxyListener, NavigationModeController.ModeChangedListener, Dumpable, CommandQueue.Callbacks {
    public static final /* synthetic */ int $r8$clinit = 0;
    public long mA11yButtonState;
    public final AccessibilityButtonModeObserver mAccessibilityButtonModeObserver;
    public final AccessibilityButtonTargetsObserver mAccessibilityButtonTargetsObserver;
    public final AccessibilityGestureHandler mAccessibilityGestureHandler;
    public final AccessibilityManager mAccessibilityManager;
    public final AnonymousClass1 mAssistContentObserver;
    public final Lazy mAssistManagerLazy;
    public boolean mAssistantAvailable;
    public boolean mAssistantTouchGestureEnabled;
    public final Lazy mCentralSurfacesOptionalLazy;
    public final CommandQueue mCommandQueue;
    public final ContentResolver mContentResolver;
    public final Context mContext;
    public final EdgeBackGestureHandler mEdgeBackGestureHandler;
    public final EdgeBackGestureHandler.Factory mEdgeBackGestureHandlerFactory;
    public final Handler mHandler;
    public final KeyguardStateController mKeyguardStateController;
    public int mLastIMEhints;
    public boolean mLongPressHomeEnabled;
    public int mNavBarMode;
    public final NavBarStore mNavBarStore;
    public final AnonymousClass3 mRotationWatcher;
    public int mRotationWatcherRotation;
    public final SearcleGestureHandler mSearcleGestureHandler;
    public final List mStateListeners;
    public final SystemActions mSystemActions;
    public boolean mTogglingNavbarTaskbar;
    public final UserTracker mUserTracker;
    public final AnonymousClass2 mWallpaperVisibilityListener;
    public boolean mWallpaperVisible;
    public int mWindowState;
    public int mWindowStateDisplayId;
    public final SparseIntArray mWindowStateDisplays;
    public final IWindowManager mWm;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.navigationbar.NavBarHelper$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends IWallpaperVisibilityListener.Stub {
        public AnonymousClass2() {
        }

        public final void onWallpaperVisibilityChanged(final boolean z, final int i) {
            NavBarHelper.this.mHandler.post(new Runnable() { // from class: com.android.systemui.navigationbar.NavBarHelper$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    NavBarHelper.AnonymousClass2 anonymousClass2 = NavBarHelper.AnonymousClass2.this;
                    boolean z2 = z;
                    NavBarHelper navBarHelper = NavBarHelper.this;
                    navBarHelper.mWallpaperVisible = z2;
                    Iterator it = ((ArrayList) navBarHelper.mStateListeners).iterator();
                    while (it.hasNext()) {
                        ((NavBarHelper.NavbarTaskbarStateUpdater) it.next()).updateWallpaperVisibility(z2);
                    }
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.navigationbar.NavBarHelper$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends IRotationWatcher.Stub {
        public AnonymousClass3() {
        }

        public final void onRotationChanged(final int i) {
            NavBarHelper.this.mHandler.postAtFrontOfQueue(new Runnable() { // from class: com.android.systemui.navigationbar.NavBarHelper$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    NavBarHelper.AnonymousClass3 anonymousClass3 = NavBarHelper.AnonymousClass3.this;
                    int i2 = i;
                    NavBarHelper navBarHelper = NavBarHelper.this;
                    navBarHelper.mRotationWatcherRotation = i2;
                    Iterator it = ((ArrayList) navBarHelper.mStateListeners).iterator();
                    while (it.hasNext()) {
                        ((NavBarHelper.NavbarTaskbarStateUpdater) it.next()).updateRotationWatcherState(i2);
                    }
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [com.android.systemui.navigationbar.NavBarHelper$1] */
    public NavBarHelper(Context context, AccessibilityManager accessibilityManager, AccessibilityButtonModeObserver accessibilityButtonModeObserver, AccessibilityButtonTargetsObserver accessibilityButtonTargetsObserver, SystemActions systemActions, OverviewProxyService overviewProxyService, Lazy lazy, Lazy lazy2, KeyguardStateController keyguardStateController, NavigationModeController navigationModeController, EdgeBackGestureHandler.Factory factory, IWindowManager iWindowManager, UserTracker userTracker, DisplayTracker displayTracker, DumpManager dumpManager, CommandQueue commandQueue, NavBarStore navBarStore, BroadcastDispatcher broadcastDispatcher, DisplayManager displayManager) {
        Handler handler = new Handler(Looper.getMainLooper());
        this.mHandler = handler;
        this.mStateListeners = new ArrayList();
        this.mWindowStateDisplays = new SparseIntArray();
        this.mAssistContentObserver = new ContentObserver(handler) { // from class: com.android.systemui.navigationbar.NavBarHelper.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z, Uri uri) {
                NavBarHelper navBarHelper = NavBarHelper.this;
                int i = NavBarHelper.$r8$clinit;
                navBarHelper.updateAssistantAvailability();
            }
        };
        this.mWallpaperVisibilityListener = new AnonymousClass2();
        this.mRotationWatcher = new AnonymousClass3();
        this.mContext = context;
        this.mCommandQueue = commandQueue;
        this.mContentResolver = context.getContentResolver();
        this.mAccessibilityManager = accessibilityManager;
        this.mAssistManagerLazy = lazy;
        this.mCentralSurfacesOptionalLazy = lazy2;
        this.mKeyguardStateController = keyguardStateController;
        this.mUserTracker = userTracker;
        this.mSystemActions = systemActions;
        this.mAccessibilityButtonModeObserver = accessibilityButtonModeObserver;
        this.mAccessibilityButtonTargetsObserver = accessibilityButtonTargetsObserver;
        this.mWm = iWindowManager;
        displayTracker.getClass();
        this.mEdgeBackGestureHandler = factory.create(context);
        this.mNavBarMode = navigationModeController.addListener(this);
        commandQueue.addCallback((CommandQueue.Callbacks) this);
        overviewProxyService.addCallback((OverviewProxyService.OverviewProxyListener) this);
        dumpManager.registerDumpable(this);
        if (BasicRune.NAVBAR_ENABLED) {
            this.mEdgeBackGestureHandlerFactory = factory;
            this.mNavBarStore = navBarStore;
            this.mSearcleGestureHandler = new SearcleGestureHandler(context, this, navBarStore, (OverviewProxyService) Dependency.get(OverviewProxyService.class), broadcastDispatcher, (AssistManager) lazy.get());
        }
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN) {
            this.mAccessibilityGestureHandler = new AccessibilityGestureHandler(context, this, this.mNavBarStore, displayManager);
        }
    }

    public static int transitionMode(int i, boolean z) {
        if (z) {
            return 1;
        }
        if ((i & 6) == 6) {
            return 3;
        }
        if ((i & 4) != 0) {
            return 6;
        }
        if ((i & 256) != 0) {
            return 8;
        }
        if ((i & 2) != 0) {
            return 4;
        }
        if (BasicRune.NAVBAR_ENABLED && (i & 128) != 0) {
            return 7;
        }
        if ((i & 64) != 0) {
            return 1;
        }
        return 0;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        StringBuilder m = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "NavbarTaskbarFriendster", "  longPressHomeEnabled="), this.mLongPressHomeEnabled, printWriter, "  mAssistantTouchGestureEnabled="), this.mAssistantTouchGestureEnabled, printWriter, "  mAssistantAvailable="), this.mAssistantAvailable, printWriter, "  mNavBarMode=");
        m.append(this.mNavBarMode);
        printWriter.println(m.toString());
    }

    public final boolean isImeShown(int i) {
        NotificationShadeWindowView notificationShadeWindowView;
        boolean z;
        if (BasicRune.NAVBAR_SUPPORT_TASKBAR) {
            this.mLastIMEhints = i;
        }
        if (((Optional) this.mCentralSurfacesOptionalLazy.get()).isPresent()) {
            notificationShadeWindowView = ((CentralSurfacesImpl) ((CentralSurfaces) ((Optional) this.mCentralSurfacesOptionalLazy.get()).get())).mNotificationShadeWindowView;
        } else {
            notificationShadeWindowView = null;
        }
        boolean z2 = ((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing;
        if (notificationShadeWindowView != null && notificationShadeWindowView.isAttachedToWindow() && notificationShadeWindowView.getRootWindowInsets().isVisible(WindowInsets.Type.ime())) {
            z = true;
        } else {
            z = false;
        }
        if (BasicRune.NAVBAR_ENABLED) {
            z &= ((CentralSurfacesImpl) ((CentralSurfaces) ((Optional) this.mCentralSurfacesOptionalLazy.get()).get())).mBouncerShowing;
        }
        if (z) {
            return true;
        }
        if (!z2 && (i & 2) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.accessibility.AccessibilityButtonModeObserver.ModeChangedListener
    public final void onAccessibilityButtonModeChanged(int i) {
        updateA11yState();
    }

    @Override // com.android.systemui.accessibility.AccessibilityButtonTargetsObserver.TargetsChangedListener
    public final void onAccessibilityButtonTargetsChanged(String str) {
        updateA11yState();
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityServicesStateChangeListener
    public final void onAccessibilityServicesStateChanged(AccessibilityManager accessibilityManager) {
        updateA11yState();
    }

    @Override // com.android.systemui.recents.OverviewProxyService.OverviewProxyListener
    public final void onConnectionChanged(boolean z) {
        if (z) {
            updateAssistantAvailability();
            if (BasicRune.NAVBAR_SUPPORT_TASKBAR) {
                ((NavBarStoreImpl) this.mNavBarStore).handleEvent(this, new EventTypeFactory.EventType.OnUpdateTaskbarAvailable(), 0);
            }
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationModeController.ModeChangedListener
    public final void onNavigationModeChanged(int i) {
        this.mNavBarMode = i;
        updateAssistantAvailability();
        if (BasicRune.NAVBAR_SUPPORT_SEARCLE) {
            this.mSearcleGestureHandler.updateIsEnabled();
        }
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN) {
            this.mAccessibilityGestureHandler.updateIsEnabled();
        }
    }

    public final void registerNavTaskStateUpdater(NavbarTaskbarStateUpdater navbarTaskbarStateUpdater) {
        ((ArrayList) this.mStateListeners).add(navbarTaskbarStateUpdater);
        if (!this.mTogglingNavbarTaskbar && ((ArrayList) this.mStateListeners).size() == 1) {
            this.mAccessibilityManager.addAccessibilityServicesStateChangeListener(this);
            this.mAccessibilityButtonModeObserver.addListener(this);
            this.mAccessibilityButtonTargetsObserver.addListener(this);
            this.mContentResolver.registerContentObserver(Settings.Secure.getUriFor("assistant"), false, this.mAssistContentObserver, -1);
            this.mContentResolver.registerContentObserver(Settings.Secure.getUriFor("assist_long_press_home_enabled"), false, this.mAssistContentObserver, -1);
            this.mContentResolver.registerContentObserver(Settings.Secure.getUriFor("assist_touch_gesture_enabled"), false, this.mAssistContentObserver, -1);
            try {
                this.mWm.watchRotation(this.mRotationWatcher, 0);
            } catch (Exception e) {
                Log.w("NavBarHelper", "Failed to register rotation watcher", e);
            }
            try {
                this.mWallpaperVisible = this.mWm.registerWallpaperVisibilityListener(this.mWallpaperVisibilityListener, 0);
            } catch (Exception e2) {
                Log.w("NavBarHelper", "Failed to register wallpaper visibility listener", e2);
            }
            this.mEdgeBackGestureHandler.onNavBarAttached();
            if (BasicRune.NAVBAR_SUPPORT_SEARCLE) {
                SearcleGestureHandler searcleGestureHandler = this.mSearcleGestureHandler;
                searcleGestureHandler.isAttached = true;
                searcleGestureHandler.updateIsEnabled();
            }
            if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN) {
                AccessibilityGestureHandler accessibilityGestureHandler = this.mAccessibilityGestureHandler;
                accessibilityGestureHandler.isAttached = true;
                Log.d(accessibilityGestureHandler.tag, "onNavBarAttached");
                accessibilityGestureHandler.updateIsEnabled();
            }
            updateAssistantAvailability();
            updateA11yState();
            this.mCommandQueue.recomputeDisableFlags(this.mContext.getDisplayId(), false);
        } else {
            navbarTaskbarStateUpdater.updateAccessibilityServicesState();
            navbarTaskbarStateUpdater.updateAssistantAvailable(this.mAssistantAvailable, this.mLongPressHomeEnabled);
        }
        navbarTaskbarStateUpdater.updateWallpaperVisibility(this.mWallpaperVisible);
        navbarTaskbarStateUpdater.updateRotationWatcherState(this.mRotationWatcherRotation);
    }

    public final void removeNavTaskStateUpdater(NavbarTaskbarStateUpdater navbarTaskbarStateUpdater) {
        ((ArrayList) this.mStateListeners).remove(navbarTaskbarStateUpdater);
        if (!this.mTogglingNavbarTaskbar && ((ArrayList) this.mStateListeners).isEmpty()) {
            this.mAccessibilityManager.removeAccessibilityServicesStateChangeListener(this);
            this.mAccessibilityButtonModeObserver.removeListener(this);
            this.mAccessibilityButtonTargetsObserver.removeListener(this);
            this.mContentResolver.unregisterContentObserver(this.mAssistContentObserver);
            try {
                this.mWm.removeRotationWatcher(this.mRotationWatcher);
            } catch (Exception e) {
                Log.w("NavBarHelper", "Failed to unregister rotation watcher", e);
            }
            try {
                this.mWm.unregisterWallpaperVisibilityListener(this.mWallpaperVisibilityListener, 0);
            } catch (Exception e2) {
                Log.w("NavBarHelper", "Failed to register wallpaper visibility listener", e2);
            }
            this.mEdgeBackGestureHandler.onNavBarDetached();
            if (BasicRune.NAVBAR_SUPPORT_SEARCLE) {
                SearcleGestureHandler searcleGestureHandler = this.mSearcleGestureHandler;
                searcleGestureHandler.isAttached = false;
                searcleGestureHandler.updateIsEnabled();
            }
            if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN) {
                AccessibilityGestureHandler accessibilityGestureHandler = this.mAccessibilityGestureHandler;
                accessibilityGestureHandler.isAttached = false;
                Log.d(accessibilityGestureHandler.tag, "onNavBarDetached");
                accessibilityGestureHandler.disposeInputChannel();
            }
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void setWindowState(int i, int i2, int i3) {
        if (i2 != 2) {
            return;
        }
        this.mWindowStateDisplayId = i;
        this.mWindowState = i3;
        if (BasicRune.NAVBAR_ENABLED) {
            this.mWindowStateDisplays.put(i, i3);
            if (i3 == 0) {
                ((NavBarStoreImpl) this.mNavBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarWindowStateShowing(), i);
            } else {
                ((NavBarStoreImpl) this.mNavBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarWindowStateHidden(), i);
            }
        }
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) ((CentralSurfaces) ((Optional) this.mCentralSurfacesOptionalLazy.get()).get());
        centralSurfacesImpl.getClass();
        centralSurfacesImpl.mBubblesOptional.ifPresent(new CentralSurfacesImpl$$ExternalSyntheticLambda13(centralSurfacesImpl, 0));
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN) {
            this.mAccessibilityGestureHandler.updateIsEnabled();
        }
    }

    @Override // com.android.systemui.recents.OverviewProxyService.OverviewProxyListener
    public final void startAssistant(Bundle bundle) {
        ((AssistManager) this.mAssistManagerLazy.get()).startAssist(bundle);
    }

    public final void updateA11yState() {
        int i;
        boolean z;
        int i2;
        long j;
        boolean z2;
        long j2 = this.mA11yButtonState;
        boolean z3 = false;
        try {
            i = Integer.parseInt(this.mAccessibilityButtonModeObserver.getSettingsValue());
        } catch (NumberFormatException e) {
            Log.e("A11yButtonModeObserver", "Invalid string for  " + e);
            i = 0;
        }
        long j3 = 0;
        if (i == 1) {
            this.mA11yButtonState = 0L;
            z2 = false;
        } else {
            int size = this.mAccessibilityManager.getAccessibilityShortcutTargets(0).size();
            if (size >= 1) {
                z = true;
            } else {
                z = false;
            }
            if (BasicRune.NAVBAR_ENABLED) {
                i2 = 1;
            } else {
                i2 = 2;
            }
            if (size >= i2) {
                z3 = true;
            }
            if (z) {
                j = 16;
            } else {
                j = 0;
            }
            if (z3) {
                j3 = 32;
            }
            this.mA11yButtonState = j3 | j;
            if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN) {
                this.mAccessibilityGestureHandler.updateIsEnabled();
            }
            z2 = z3;
            z3 = z;
        }
        if (j2 != this.mA11yButtonState) {
            updateSystemAction(11, z3);
            updateSystemAction(12, z2);
        }
        Iterator it = ((ArrayList) this.mStateListeners).iterator();
        while (it.hasNext()) {
            ((NavbarTaskbarStateUpdater) it.next()).updateAccessibilityServicesState();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void updateAssistantAvailability() {
        byte b;
        boolean z;
        boolean z2;
        if (BasicRune.NAVBAR_ENABLED && this.mContext != null && this.mContentResolver != null) {
            boolean z3 = true;
            if (((AssistManager) this.mAssistManagerLazy.get()).mAssistUtils.getAssistComponentForUser(((UserTrackerImpl) this.mUserTracker).getUserId()) != null) {
                b = true;
            } else {
                b = false;
            }
            if (Settings.Secure.getIntForUser(this.mContentResolver, "assist_long_press_home_enabled", this.mContext.getResources().getBoolean(R.bool.config_bluetooth_hfp_inband_ringing_support) ? 1 : 0, ((UserTrackerImpl) this.mUserTracker).getUserId()) != 0) {
                z = true;
            } else {
                z = false;
            }
            this.mLongPressHomeEnabled = z;
            if (Settings.Secure.getIntForUser(this.mContentResolver, "assist_touch_gesture_enabled", this.mContext.getResources().getBoolean(R.bool.config_bluetooth_le_peripheral_mode_supported) ? 1 : 0, ((UserTrackerImpl) this.mUserTracker).getUserId()) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.mAssistantTouchGestureEnabled = z2;
            if (b == false || !z2 || !QuickStepContract.isGesturalMode(this.mNavBarMode)) {
                z3 = false;
            }
            this.mAssistantAvailable = z3;
            boolean z4 = this.mLongPressHomeEnabled;
            Iterator it = ((ArrayList) this.mStateListeners).iterator();
            while (it.hasNext()) {
                ((NavbarTaskbarStateUpdater) it.next()).updateAssistantAvailable(z3, z4);
            }
        }
    }

    public final void updateSystemAction(int i, boolean z) {
        int i2;
        String str;
        if (z) {
            SystemActions systemActions = this.mSystemActions;
            systemActions.getClass();
            switch (i) {
                case 1:
                    i2 = R.string.autofill_save_title_with_2types;
                    str = "SYSTEM_ACTION_BACK";
                    break;
                case 2:
                    i2 = R.string.autofill_save_type_payment_card;
                    str = "SYSTEM_ACTION_HOME";
                    break;
                case 3:
                    i2 = R.string.autofill_update_title;
                    str = "SYSTEM_ACTION_RECENTS";
                    break;
                case 4:
                    i2 = R.string.autofill_save_yes;
                    str = "SYSTEM_ACTION_NOTIFICATIONS";
                    break;
                case 5:
                    i2 = R.string.autofill_this_form;
                    str = "SYSTEM_ACTION_QUICK_SETTINGS";
                    break;
                case 6:
                    i2 = R.string.autofill_state_re;
                    str = "SYSTEM_ACTION_POWER_DIALOG";
                    break;
                case 7:
                case 14:
                default:
                    return;
                case 8:
                    i2 = R.string.autofill_save_type_username;
                    str = "SYSTEM_ACTION_LOCK_SCREEN";
                    break;
                case 9:
                    i2 = R.string.autofill_update_title_with_2types;
                    str = "SYSTEM_ACTION_TAKE_SCREENSHOT";
                    break;
                case 10:
                    i2 = R.string.autofill_save_type_password;
                    str = "SYSTEM_ACTION_HEADSET_HOOK";
                    break;
                case 11:
                    i2 = R.string.autofill_state;
                    str = "SYSTEM_ACTION_ACCESSIBILITY_BUTTON";
                    break;
                case 12:
                    i2 = R.string.autofill_shipping_designator_re;
                    str = "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU";
                    break;
                case 13:
                    i2 = R.string.autofill_save_type_generic_card;
                    str = "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT";
                    break;
                case 15:
                    i2 = R.string.autofill_save_title_with_3types;
                    str = "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE";
                    break;
                case 16:
                    i2 = R.string.autofill_save_type_email_address;
                    str = "SYSTEM_ACTION_DPAD_UP";
                    break;
                case 17:
                    i2 = R.string.autofill_save_type_address;
                    str = "SYSTEM_ACTION_DPAD_DOWN";
                    break;
                case 18:
                    i2 = R.string.autofill_save_type_credit_card;
                    str = "SYSTEM_ACTION_DPAD_LEFT";
                    break;
                case 19:
                    i2 = R.string.autofill_save_type_debit_card;
                    str = "SYSTEM_ACTION_DPAD_RIGHT";
                    break;
                case 20:
                    i2 = R.string.autofill_save_title_with_type;
                    str = "SYSTEM_ACTION_DPAD_CENTER";
                    break;
            }
            systemActions.mA11yManager.registerSystemAction(systemActions.createRemoteAction(i2, str), i);
            return;
        }
        this.mSystemActions.mA11yManager.unregisterSystemAction(i);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CurrentSysuiState {
        public final int mWindowState;
        public final int mWindowStateDisplayId;

        public CurrentSysuiState(NavBarHelper navBarHelper) {
            this.mWindowStateDisplayId = navBarHelper.mWindowStateDisplayId;
            this.mWindowState = navBarHelper.mWindowState;
        }

        public CurrentSysuiState(NavBarHelper navBarHelper, int i) {
            this.mWindowStateDisplayId = i;
            this.mWindowState = navBarHelper.mWindowStateDisplays.get(i);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface NavbarTaskbarStateUpdater {
        void updateAccessibilityServicesState();

        void updateAssistantAvailable(boolean z, boolean z2);

        default void updateAccessibilityGestureDetected(boolean z) {
        }

        default void updateRotationWatcherState(int i) {
        }

        default void updateWallpaperVisibility(boolean z) {
        }
    }
}
