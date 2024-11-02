package com.android.systemui.accessibility;

import android.R;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.drawable.Icon;
import android.hardware.input.InputManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.view.IWindowManager;
import android.view.KeyEvent;
import android.view.WindowManagerGlobal;
import android.view.accessibility.AccessibilityManager;
import com.android.internal.accessibility.dialog.AccessibilityButtonChooserActivity;
import com.android.internal.accessibility.util.AccessibilityUtils;
import com.android.internal.util.ScreenshotHelper;
import com.android.systemui.CoreStartable;
import com.android.systemui.recents.Recents;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.shade.ShadeController;
import com.android.systemui.shade.ShadeControllerImpl;
import com.android.systemui.statusbar.NotificationShadeWindowController;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.StatusBarWindowCallback;
import com.android.systemui.util.Assert;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import dagger.Lazy;
import java.util.Locale;
import java.util.Optional;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SystemActions implements CoreStartable {
    public final AccessibilityManager mA11yManager;
    public final Lazy mCentralSurfacesOptionalLazy;
    public final Context mContext;
    public boolean mDismissNotificationShadeActionRegistered;
    public final DisplayTracker mDisplayTracker;
    public Locale mLocale;
    public final NotificationShadeWindowController mNotificationShadeController;
    public final Optional mRecentsOptional;
    public final ShadeController mShadeController;
    public final UserTracker mUserTracker;
    public final SystemActionsBroadcastReceiver mReceiver = new SystemActionsBroadcastReceiver(this, 0);
    public final StatusBarWindowCallback mNotificationShadeCallback = new StatusBarWindowCallback() { // from class: com.android.systemui.accessibility.SystemActions$$ExternalSyntheticLambda1
        @Override // com.android.systemui.statusbar.phone.StatusBarWindowCallback
        public final void onStateChanged(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
            SystemActions.this.registerOrUnregisterDismissNotificationShadeAction(z, z6);
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SystemActionsBroadcastReceiver extends BroadcastReceiver {
        public static final /* synthetic */ int $r8$clinit = 0;

        public /* synthetic */ SystemActionsBroadcastReceiver(SystemActions systemActions, int i) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            action.getClass();
            final int i = 2;
            final int i2 = 1;
            final int i3 = 0;
            char c = 65535;
            switch (action.hashCode()) {
                case -1103811776:
                    if (action.equals("SYSTEM_ACTION_BACK")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1103619272:
                    if (action.equals("SYSTEM_ACTION_HOME")) {
                        c = 1;
                        break;
                    }
                    break;
                case -720484549:
                    if (action.equals("SYSTEM_ACTION_POWER_DIALOG")) {
                        c = 2;
                        break;
                    }
                    break;
                case -535129457:
                    if (action.equals("SYSTEM_ACTION_NOTIFICATIONS")) {
                        c = 3;
                        break;
                    }
                    break;
                case -181386672:
                    if (action.equals("SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT")) {
                        c = 4;
                        break;
                    }
                    break;
                case -153384569:
                    if (action.equals("SYSTEM_ACTION_LOCK_SCREEN")) {
                        c = 5;
                        break;
                    }
                    break;
                case 42571871:
                    if (action.equals("SYSTEM_ACTION_RECENTS")) {
                        c = 6;
                        break;
                    }
                    break;
                case 526987266:
                    if (action.equals("SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU")) {
                        c = 7;
                        break;
                    }
                    break;
                case 689657964:
                    if (action.equals("SYSTEM_ACTION_DPAD_CENTER")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 815482418:
                    if (action.equals("SYSTEM_ACTION_DPAD_UP")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 1245940668:
                    if (action.equals("SYSTEM_ACTION_ACCESSIBILITY_BUTTON")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 1493428793:
                    if (action.equals("SYSTEM_ACTION_HEADSET_HOOK")) {
                        c = 11;
                        break;
                    }
                    break;
                case 1579999269:
                    if (action.equals("SYSTEM_ACTION_TAKE_SCREENSHOT")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 1668921710:
                    if (action.equals("SYSTEM_ACTION_QUICK_SETTINGS")) {
                        c = '\r';
                        break;
                    }
                    break;
                case 1698779909:
                    if (action.equals("SYSTEM_ACTION_DPAD_RIGHT")) {
                        c = 14;
                        break;
                    }
                    break;
                case 1894867256:
                    if (action.equals("SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE")) {
                        c = 15;
                        break;
                    }
                    break;
                case 1994051193:
                    if (action.equals("SYSTEM_ACTION_DPAD_DOWN")) {
                        c = 16;
                        break;
                    }
                    break;
                case 1994279390:
                    if (action.equals("SYSTEM_ACTION_DPAD_LEFT")) {
                        c = 17;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    SystemActions.this.sendDownAndUpKeyEvents(4);
                    return;
                case 1:
                    SystemActions.this.sendDownAndUpKeyEvents(3);
                    return;
                case 2:
                    SystemActions.this.getClass();
                    try {
                        WindowManagerGlobal.getWindowManagerService().showGlobalActions();
                        return;
                    } catch (RemoteException unused) {
                        Log.e("SystemActions", "failed to display power dialog.");
                        return;
                    }
                case 3:
                    ((Optional) SystemActions.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new Consumer() { // from class: com.android.systemui.accessibility.SystemActions$$ExternalSyntheticLambda2
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            switch (i2) {
                                case 0:
                                    ((CentralSurfacesImpl) ((CentralSurfaces) obj)).mCommandQueueCallbacks.animateExpandSettingsPanel(null);
                                    return;
                                case 1:
                                    ((CentralSurfacesImpl) ((CentralSurfaces) obj)).mCommandQueueCallbacks.animateExpandNotificationsPanel();
                                    return;
                                default:
                                    ((Recents) obj).toggleRecentApps();
                                    return;
                            }
                        }
                    });
                    return;
                case 4:
                    SystemActions.this.mA11yManager.performAccessibilityShortcut();
                    return;
                case 5:
                    SystemActions systemActions = SystemActions.this;
                    systemActions.getClass();
                    IWindowManager windowManagerService = WindowManagerGlobal.getWindowManagerService();
                    ((PowerManager) systemActions.mContext.getSystemService(PowerManager.class)).goToSleep(SystemClock.uptimeMillis(), 7, 0);
                    try {
                        windowManagerService.lockNow((Bundle) null);
                        return;
                    } catch (RemoteException unused2) {
                        Log.e("SystemActions", "failed to lock screen.");
                        return;
                    }
                case 6:
                    SystemActions systemActions2 = SystemActions.this;
                    systemActions2.getClass();
                    systemActions2.mRecentsOptional.ifPresent(new Consumer() { // from class: com.android.systemui.accessibility.SystemActions$$ExternalSyntheticLambda2
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            switch (i) {
                                case 0:
                                    ((CentralSurfacesImpl) ((CentralSurfaces) obj)).mCommandQueueCallbacks.animateExpandSettingsPanel(null);
                                    return;
                                case 1:
                                    ((CentralSurfacesImpl) ((CentralSurfaces) obj)).mCommandQueueCallbacks.animateExpandNotificationsPanel();
                                    return;
                                default:
                                    ((Recents) obj).toggleRecentApps();
                                    return;
                            }
                        }
                    });
                    return;
                case 7:
                    SystemActions systemActions3 = SystemActions.this;
                    systemActions3.getClass();
                    Intent intent2 = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                    intent2.addFlags(268468224);
                    intent2.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                    systemActions3.mContext.startActivityAsUser(intent2, ((UserTrackerImpl) systemActions3.mUserTracker).getUserHandle());
                    return;
                case '\b':
                    SystemActions.this.sendDownAndUpKeyEvents(23);
                    return;
                case '\t':
                    SystemActions.this.sendDownAndUpKeyEvents(19);
                    return;
                case '\n':
                    SystemActions systemActions4 = SystemActions.this;
                    AccessibilityManager accessibilityManager = AccessibilityManager.getInstance(systemActions4.mContext);
                    systemActions4.mDisplayTracker.getClass();
                    accessibilityManager.notifyAccessibilityButtonClicked(0);
                    return;
                case 11:
                    SystemActions.this.handleHeadsetHook();
                    return;
                case '\f':
                    SystemActions systemActions5 = SystemActions.this;
                    systemActions5.getClass();
                    new ScreenshotHelper(systemActions5.mContext).takeScreenshot(4, new Handler(Looper.getMainLooper()), (Consumer) null);
                    return;
                case '\r':
                    ((Optional) SystemActions.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new Consumer() { // from class: com.android.systemui.accessibility.SystemActions$$ExternalSyntheticLambda2
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            switch (i3) {
                                case 0:
                                    ((CentralSurfacesImpl) ((CentralSurfaces) obj)).mCommandQueueCallbacks.animateExpandSettingsPanel(null);
                                    return;
                                case 1:
                                    ((CentralSurfacesImpl) ((CentralSurfaces) obj)).mCommandQueueCallbacks.animateExpandNotificationsPanel();
                                    return;
                                default:
                                    ((Recents) obj).toggleRecentApps();
                                    return;
                            }
                        }
                    });
                    return;
                case 14:
                    SystemActions.this.sendDownAndUpKeyEvents(22);
                    return;
                case 15:
                    ((ShadeControllerImpl) SystemActions.this.mShadeController).animateCollapseShade(0);
                    return;
                case 16:
                    SystemActions.this.sendDownAndUpKeyEvents(20);
                    return;
                case 17:
                    SystemActions.this.sendDownAndUpKeyEvents(21);
                    return;
                default:
                    return;
            }
        }

        private SystemActionsBroadcastReceiver() {
        }
    }

    public SystemActions(Context context, UserTracker userTracker, NotificationShadeWindowController notificationShadeWindowController, ShadeController shadeController, Lazy lazy, Optional<Recents> optional, DisplayTracker displayTracker) {
        this.mContext = context;
        this.mUserTracker = userTracker;
        this.mShadeController = shadeController;
        this.mRecentsOptional = optional;
        this.mDisplayTracker = displayTracker;
        this.mLocale = context.getResources().getConfiguration().getLocales().get(0);
        this.mA11yManager = (AccessibilityManager) context.getSystemService("accessibility");
        this.mNotificationShadeController = notificationShadeWindowController;
        this.mCentralSurfacesOptionalLazy = lazy;
    }

    public final RemoteAction createRemoteAction(int i, String str) {
        PendingIntent broadcast;
        Context context = this.mContext;
        Icon createWithResource = Icon.createWithResource(context, R.drawable.ic_info);
        String string = context.getString(i);
        String string2 = context.getString(i);
        int i2 = SystemActionsBroadcastReceiver.$r8$clinit;
        this.mReceiver.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1103811776:
                if (str.equals("SYSTEM_ACTION_BACK")) {
                    c = 0;
                    break;
                }
                break;
            case -1103619272:
                if (str.equals("SYSTEM_ACTION_HOME")) {
                    c = 1;
                    break;
                }
                break;
            case -720484549:
                if (str.equals("SYSTEM_ACTION_POWER_DIALOG")) {
                    c = 2;
                    break;
                }
                break;
            case -535129457:
                if (str.equals("SYSTEM_ACTION_NOTIFICATIONS")) {
                    c = 3;
                    break;
                }
                break;
            case -181386672:
                if (str.equals("SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT")) {
                    c = 4;
                    break;
                }
                break;
            case -153384569:
                if (str.equals("SYSTEM_ACTION_LOCK_SCREEN")) {
                    c = 5;
                    break;
                }
                break;
            case 42571871:
                if (str.equals("SYSTEM_ACTION_RECENTS")) {
                    c = 6;
                    break;
                }
                break;
            case 526987266:
                if (str.equals("SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU")) {
                    c = 7;
                    break;
                }
                break;
            case 689657964:
                if (str.equals("SYSTEM_ACTION_DPAD_CENTER")) {
                    c = '\b';
                    break;
                }
                break;
            case 815482418:
                if (str.equals("SYSTEM_ACTION_DPAD_UP")) {
                    c = '\t';
                    break;
                }
                break;
            case 1245940668:
                if (str.equals("SYSTEM_ACTION_ACCESSIBILITY_BUTTON")) {
                    c = '\n';
                    break;
                }
                break;
            case 1493428793:
                if (str.equals("SYSTEM_ACTION_HEADSET_HOOK")) {
                    c = 11;
                    break;
                }
                break;
            case 1579999269:
                if (str.equals("SYSTEM_ACTION_TAKE_SCREENSHOT")) {
                    c = '\f';
                    break;
                }
                break;
            case 1668921710:
                if (str.equals("SYSTEM_ACTION_QUICK_SETTINGS")) {
                    c = '\r';
                    break;
                }
                break;
            case 1698779909:
                if (str.equals("SYSTEM_ACTION_DPAD_RIGHT")) {
                    c = 14;
                    break;
                }
                break;
            case 1894867256:
                if (str.equals("SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE")) {
                    c = 15;
                    break;
                }
                break;
            case 1994051193:
                if (str.equals("SYSTEM_ACTION_DPAD_DOWN")) {
                    c = 16;
                    break;
                }
                break;
            case 1994279390:
                if (str.equals("SYSTEM_ACTION_DPAD_LEFT")) {
                    c = 17;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
                Intent intent = new Intent(str);
                intent.setPackage(context.getPackageName());
                intent.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                broadcast = PendingIntent.getBroadcast(context, 0, intent, QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY);
                break;
            default:
                broadcast = null;
                break;
        }
        return new RemoteAction(createWithResource, string, string2, broadcast);
    }

    public void handleHeadsetHook() {
        if (!AccessibilityUtils.interceptHeadsetHookForActiveCall(this.mContext)) {
            sendDownAndUpKeyEvents(79);
        }
    }

    @Override // com.android.systemui.CoreStartable
    public final void onConfigurationChanged(Configuration configuration) {
        Locale locale = this.mContext.getResources().getConfiguration().getLocales().get(0);
        if (!locale.equals(this.mLocale)) {
            this.mLocale = locale;
            registerActions();
        }
    }

    public final void registerActions() {
        RemoteAction createRemoteAction = createRemoteAction(R.string.autofill_save_title_with_2types, "SYSTEM_ACTION_BACK");
        RemoteAction createRemoteAction2 = createRemoteAction(R.string.autofill_save_type_payment_card, "SYSTEM_ACTION_HOME");
        RemoteAction createRemoteAction3 = createRemoteAction(R.string.autofill_update_title, "SYSTEM_ACTION_RECENTS");
        RemoteAction createRemoteAction4 = createRemoteAction(R.string.autofill_save_yes, "SYSTEM_ACTION_NOTIFICATIONS");
        RemoteAction createRemoteAction5 = createRemoteAction(R.string.autofill_this_form, "SYSTEM_ACTION_QUICK_SETTINGS");
        RemoteAction createRemoteAction6 = createRemoteAction(R.string.autofill_state_re, "SYSTEM_ACTION_POWER_DIALOG");
        RemoteAction createRemoteAction7 = createRemoteAction(R.string.autofill_save_type_username, "SYSTEM_ACTION_LOCK_SCREEN");
        RemoteAction createRemoteAction8 = createRemoteAction(R.string.autofill_update_title_with_2types, "SYSTEM_ACTION_TAKE_SCREENSHOT");
        RemoteAction createRemoteAction9 = createRemoteAction(R.string.autofill_save_type_password, "SYSTEM_ACTION_HEADSET_HOOK");
        RemoteAction createRemoteAction10 = createRemoteAction(R.string.autofill_save_type_generic_card, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT");
        RemoteAction createRemoteAction11 = createRemoteAction(R.string.autofill_save_type_email_address, "SYSTEM_ACTION_DPAD_UP");
        RemoteAction createRemoteAction12 = createRemoteAction(R.string.autofill_save_type_address, "SYSTEM_ACTION_DPAD_DOWN");
        RemoteAction createRemoteAction13 = createRemoteAction(R.string.autofill_save_type_credit_card, "SYSTEM_ACTION_DPAD_LEFT");
        RemoteAction createRemoteAction14 = createRemoteAction(R.string.autofill_save_type_debit_card, "SYSTEM_ACTION_DPAD_RIGHT");
        RemoteAction createRemoteAction15 = createRemoteAction(R.string.autofill_save_title_with_type, "SYSTEM_ACTION_DPAD_CENTER");
        AccessibilityManager accessibilityManager = this.mA11yManager;
        accessibilityManager.registerSystemAction(createRemoteAction, 1);
        accessibilityManager.registerSystemAction(createRemoteAction2, 2);
        accessibilityManager.registerSystemAction(createRemoteAction3, 3);
        Lazy lazy = this.mCentralSurfacesOptionalLazy;
        if (((Optional) lazy.get()).isPresent()) {
            accessibilityManager.registerSystemAction(createRemoteAction4, 4);
            accessibilityManager.registerSystemAction(createRemoteAction5, 5);
        }
        accessibilityManager.registerSystemAction(createRemoteAction6, 6);
        accessibilityManager.registerSystemAction(createRemoteAction7, 8);
        accessibilityManager.registerSystemAction(createRemoteAction8, 9);
        accessibilityManager.registerSystemAction(createRemoteAction9, 10);
        accessibilityManager.registerSystemAction(createRemoteAction10, 13);
        accessibilityManager.registerSystemAction(createRemoteAction11, 16);
        accessibilityManager.registerSystemAction(createRemoteAction12, 17);
        accessibilityManager.registerSystemAction(createRemoteAction13, 18);
        accessibilityManager.registerSystemAction(createRemoteAction14, 19);
        accessibilityManager.registerSystemAction(createRemoteAction15, 20);
        Optional optional = (Optional) lazy.get();
        registerOrUnregisterDismissNotificationShadeAction(((CentralSurfacesImpl) ((CentralSurfaces) optional.get())).isKeyguardShowing(), ((Boolean) optional.map(new SystemActions$$ExternalSyntheticLambda0()).orElse(Boolean.FALSE)).booleanValue());
    }

    public final void registerOrUnregisterDismissNotificationShadeAction(boolean z, boolean z2) {
        Assert.isMainThread();
        AccessibilityManager accessibilityManager = this.mA11yManager;
        if (z2 && !z) {
            if (!this.mDismissNotificationShadeActionRegistered) {
                accessibilityManager.registerSystemAction(createRemoteAction(R.string.autofill_save_title_with_3types, "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE"), 15);
                this.mDismissNotificationShadeActionRegistered = true;
                return;
            }
            return;
        }
        if (this.mDismissNotificationShadeActionRegistered) {
            accessibilityManager.unregisterSystemAction(15);
            this.mDismissNotificationShadeActionRegistered = false;
        }
    }

    public final void sendDownAndUpKeyEvents(int i) {
        long uptimeMillis = SystemClock.uptimeMillis();
        sendKeyEventIdentityCleared(i, 0, uptimeMillis, uptimeMillis);
        sendKeyEventIdentityCleared(i, 1, uptimeMillis, SystemClock.uptimeMillis());
    }

    public final void sendKeyEventIdentityCleared(int i, int i2, long j, long j2) {
        KeyEvent obtain = KeyEvent.obtain(j, j2, i2, i, 0, 0, -1, 0, 8, 257, null);
        ((InputManager) this.mContext.getSystemService(InputManager.class)).injectInputEvent(obtain, 0);
        obtain.recycle();
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        ((NotificationShadeWindowControllerImpl) this.mNotificationShadeController).registerCallback(this.mNotificationShadeCallback);
        Context context = this.mContext;
        int i = SystemActionsBroadcastReceiver.$r8$clinit;
        SystemActionsBroadcastReceiver systemActionsBroadcastReceiver = this.mReceiver;
        systemActionsBroadcastReceiver.getClass();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("SYSTEM_ACTION_BACK");
        intentFilter.addAction("SYSTEM_ACTION_HOME");
        intentFilter.addAction("SYSTEM_ACTION_RECENTS");
        intentFilter.addAction("SYSTEM_ACTION_NOTIFICATIONS");
        intentFilter.addAction("SYSTEM_ACTION_QUICK_SETTINGS");
        intentFilter.addAction("SYSTEM_ACTION_POWER_DIALOG");
        intentFilter.addAction("SYSTEM_ACTION_LOCK_SCREEN");
        intentFilter.addAction("SYSTEM_ACTION_TAKE_SCREENSHOT");
        intentFilter.addAction("SYSTEM_ACTION_HEADSET_HOOK");
        intentFilter.addAction("SYSTEM_ACTION_ACCESSIBILITY_BUTTON");
        intentFilter.addAction("SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU");
        intentFilter.addAction("SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT");
        intentFilter.addAction("SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE");
        intentFilter.addAction("SYSTEM_ACTION_DPAD_UP");
        intentFilter.addAction("SYSTEM_ACTION_DPAD_DOWN");
        intentFilter.addAction("SYSTEM_ACTION_DPAD_LEFT");
        intentFilter.addAction("SYSTEM_ACTION_DPAD_RIGHT");
        intentFilter.addAction("SYSTEM_ACTION_DPAD_CENTER");
        context.registerReceiverForAllUsers(systemActionsBroadcastReceiver, intentFilter, "com.android.systemui.permission.SELF", null, 2);
        registerActions();
    }
}
