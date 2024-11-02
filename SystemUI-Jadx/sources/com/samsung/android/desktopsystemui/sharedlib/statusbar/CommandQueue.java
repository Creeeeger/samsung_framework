package com.samsung.android.desktopsystemui.sharedlib.statusbar;

import android.app.ITransientNotificationCallback;
import android.content.ComponentName;
import android.graphics.Rect;
import android.graphics.drawable.Icon;
import android.hardware.biometrics.IBiometricContextListener;
import android.hardware.biometrics.IBiometricSysuiReceiver;
import android.hardware.biometrics.PromptInfo;
import android.hardware.fingerprint.IUdfpsRefreshRateRequestCallback;
import android.media.INearbyMediaDevicesProvider;
import android.media.MediaRoute2Info;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.view.KeyEvent;
import android.widget.RemoteViews;
import com.android.internal.os.SomeArgs;
import com.android.internal.statusbar.IAddTileResultCallback;
import com.android.internal.statusbar.IStatusBar;
import com.android.internal.statusbar.IUndoMediaTransferCallback;
import com.android.internal.statusbar.LetterboxDetails;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.internal.view.AppearanceRegion;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class CommandQueue extends IStatusBar.Stub {
    private static final int MGS_ABORT_TRANSIENT = 10;
    private static final int MGS_FOCUSED_DISPLAY_CHANGED = 8;
    private static final int MGS_SET_WINDOW_STATE = 11;
    private static final int MGS_SHOW_TRANSIENT = 9;
    private static final int MSG_ANIMATE_EXPAND_NOTIFICATIONS_PANEL = 13;
    private static final int MSG_ANIMATE_EXPAND_SETTINGS_PANEL = 14;
    private static final int MSG_COLLAPSE_PANELS = 12;
    private static final int MSG_DISABLE = 7;
    private static final int MSG_HANDLE_SYSTEM_KEY = 4;
    private static final int MSG_HIDE_RECENT_APPS = 2;
    private static final int MSG_SEND_KEYEVENT_DESKTOP_TASKBAR = 6;
    private static final int MSG_SHOW_RECENT_APPS = 1;
    private static final int MSG_SYSTEM_BAR_CHANGED = 5;
    private static final int MSG_TOGGLE_KEYBOARD_SHORTCUTS_MENU = 15;
    private static final int MSG_TOGGLE_RECENT_APPS = 3;
    private ArrayList<CommandQueueCallbacks> mCallbacks = new ArrayList<>();
    private final Object mLock = new Object();
    private Handler mHandler = new H(Looper.getMainLooper());

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            boolean z6;
            boolean z7 = false;
            switch (message.what) {
                case 1:
                    Iterator it = CommandQueue.this.mCallbacks.iterator();
                    while (it.hasNext()) {
                        CommandQueueCallbacks commandQueueCallbacks = (CommandQueueCallbacks) it.next();
                        if (message.arg1 != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        commandQueueCallbacks.showRecentApps(z);
                    }
                    return;
                case 2:
                    Iterator it2 = CommandQueue.this.mCallbacks.iterator();
                    while (it2.hasNext()) {
                        CommandQueueCallbacks commandQueueCallbacks2 = (CommandQueueCallbacks) it2.next();
                        if (message.arg1 != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (message.arg2 != 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        commandQueueCallbacks2.hideRecentApps(z2, z3);
                    }
                    return;
                case 3:
                    Iterator it3 = CommandQueue.this.mCallbacks.iterator();
                    while (it3.hasNext()) {
                        ((CommandQueueCallbacks) it3.next()).toggleRecentApps();
                    }
                    return;
                case 4:
                    Iterator it4 = CommandQueue.this.mCallbacks.iterator();
                    while (it4.hasNext()) {
                        ((CommandQueueCallbacks) it4.next()).handleSystemKey((KeyEvent) message.obj);
                    }
                    return;
                case 5:
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    Iterator it5 = CommandQueue.this.mCallbacks.iterator();
                    while (it5.hasNext()) {
                        CommandQueueCallbacks commandQueueCallbacks3 = (CommandQueueCallbacks) it5.next();
                        for (AppearanceRegion appearanceRegion : (AppearanceRegion[]) someArgs.arg1) {
                            int i = someArgs.argi1;
                            int i2 = someArgs.argi2;
                            Rect bounds = appearanceRegion.getBounds();
                            if (someArgs.argi3 == 1) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            Boolean valueOf = Boolean.valueOf(z4);
                            int i3 = someArgs.argi4;
                            if (someArgs.argi5 == 1) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            commandQueueCallbacks3.onSystemBarAttributesChanged(i, i2, bounds, valueOf, i3, Boolean.valueOf(z5), (String) someArgs.arg3);
                        }
                    }
                    return;
                case 6:
                    Iterator it6 = CommandQueue.this.mCallbacks.iterator();
                    while (it6.hasNext()) {
                        ((CommandQueueCallbacks) it6.next()).sendKeyEventToDesktopTaskbar((KeyEvent) message.obj);
                    }
                    return;
                case 7:
                    SomeArgs someArgs2 = (SomeArgs) message.obj;
                    Iterator it7 = CommandQueue.this.mCallbacks.iterator();
                    while (it7.hasNext()) {
                        ((CommandQueueCallbacks) it7.next()).disable(someArgs2.argi1, someArgs2.argi2, someArgs2.argi3);
                    }
                    return;
                case 8:
                    int i4 = message.arg1;
                    Iterator it8 = CommandQueue.this.mCallbacks.iterator();
                    while (it8.hasNext()) {
                        ((CommandQueueCallbacks) it8.next()).onFocusedDisplayChanged(i4);
                    }
                    return;
                case 9:
                    SomeArgs someArgs3 = (SomeArgs) message.obj;
                    int i5 = someArgs3.argi1;
                    int i6 = someArgs3.argi2;
                    if (someArgs3.argi3 == 1) {
                        z7 = true;
                    }
                    Iterator it9 = CommandQueue.this.mCallbacks.iterator();
                    while (it9.hasNext()) {
                        ((CommandQueueCallbacks) it9.next()).showTransient(i5, i6, Boolean.valueOf(z7));
                    }
                    return;
                case 10:
                    SomeArgs someArgs4 = (SomeArgs) message.obj;
                    int i7 = someArgs4.argi1;
                    int i8 = someArgs4.argi2;
                    Iterator it10 = CommandQueue.this.mCallbacks.iterator();
                    while (it10.hasNext()) {
                        ((CommandQueueCallbacks) it10.next()).abortTransient(i7, i8);
                    }
                    return;
                case 11:
                    SomeArgs someArgs5 = (SomeArgs) message.obj;
                    Iterator it11 = CommandQueue.this.mCallbacks.iterator();
                    while (it11.hasNext()) {
                        ((CommandQueueCallbacks) it11.next()).setWindowState(someArgs5.argi1, someArgs5.argi2, someArgs5.argi3);
                    }
                    return;
                case 12:
                    Iterator it12 = CommandQueue.this.mCallbacks.iterator();
                    while (it12.hasNext()) {
                        CommandQueueCallbacks commandQueueCallbacks4 = (CommandQueueCallbacks) it12.next();
                        int i9 = message.arg1;
                        if (message.arg2 != 0) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        commandQueueCallbacks4.animateCollapsePanels(i9, z6);
                    }
                    return;
                case 13:
                    Iterator it13 = CommandQueue.this.mCallbacks.iterator();
                    while (it13.hasNext()) {
                        ((CommandQueueCallbacks) it13.next()).animateExpandNotificationsPanel();
                    }
                    return;
                case 14:
                    Iterator it14 = CommandQueue.this.mCallbacks.iterator();
                    while (it14.hasNext()) {
                        ((CommandQueueCallbacks) it14.next()).animateExpandSettingsPanel((String) message.obj);
                    }
                    return;
                case 15:
                    Iterator it15 = CommandQueue.this.mCallbacks.iterator();
                    while (it15.hasNext()) {
                        ((CommandQueueCallbacks) it15.next()).toggleKeyboardShortcutsMenu(message.arg1);
                    }
                    return;
                default:
                    return;
            }
        }

        private H(Looper looper) {
            super(looper);
        }
    }

    public void abortTransient(int i, int i2) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            this.mHandler.obtainMessage(10, obtain).sendToTarget();
        }
    }

    public void addCallback(CommandQueueCallbacks commandQueueCallbacks) {
        this.mCallbacks.add(commandQueueCallbacks);
    }

    public void animateCollapsePanels() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(12);
            this.mHandler.obtainMessage(12, 0, 0).sendToTarget();
        }
    }

    public void animateExpandNotificationsPanel() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(13);
            this.mHandler.obtainMessage(13, 0, 0).sendToTarget();
        }
    }

    public void animateExpandSettingsPanel(String str) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(14);
            this.mHandler.obtainMessage(14, 0, 0, str).sendToTarget();
        }
    }

    public void clearCallback() {
        this.mCallbacks.clear();
    }

    public void disable(int i, int i2, int i3) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(7);
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            obtain.argi3 = i3;
            Message obtainMessage = this.mHandler.obtainMessage(7, obtain);
            if (Looper.myLooper() == this.mHandler.getLooper()) {
                this.mHandler.handleMessage(obtainMessage);
                obtainMessage.recycle();
            } else {
                obtainMessage.sendToTarget();
            }
        }
    }

    public void handleSystemKey(KeyEvent keyEvent) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(4, keyEvent).sendToTarget();
        }
    }

    public void hideRecentApps(boolean z, boolean z2) {
        int i;
        synchronized (this.mLock) {
            this.mHandler.removeMessages(2);
            Handler handler = this.mHandler;
            if (z2) {
                i = 1;
            } else {
                i = 0;
            }
            handler.obtainMessage(2, z ? 1 : 0, i, null).sendToTarget();
        }
    }

    public void onFocusedDisplayChanged(int i) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(8);
            this.mHandler.obtainMessage(8, i, 0, null).sendToTarget();
        }
    }

    public void onSystemBarAttributesChanged(int i, int i2, AppearanceRegion[] appearanceRegionArr, boolean z, int i3, int i4, String str, LetterboxDetails[] letterboxDetailsArr) {
        int i5;
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            if (z) {
                i5 = 1;
            } else {
                i5 = 0;
            }
            obtain.argi3 = i5;
            obtain.arg1 = appearanceRegionArr;
            obtain.argi4 = i3;
            obtain.argi5 = i4;
            obtain.arg3 = str;
            this.mHandler.obtainMessage(5, obtain).sendToTarget();
        }
    }

    public void removeCallback(CommandQueueCallbacks commandQueueCallbacks) {
        this.mCallbacks.remove(commandQueueCallbacks);
    }

    public void sendKeyEventToDesktopTaskbar(KeyEvent keyEvent) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(6, 0, 0, keyEvent).sendToTarget();
        }
    }

    public void setWindowState(int i, int i2, int i3) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(11);
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            obtain.argi3 = i3;
            Message obtainMessage = this.mHandler.obtainMessage(11, obtain);
            if (Looper.myLooper() == this.mHandler.getLooper()) {
                this.mHandler.handleMessage(obtainMessage);
                obtainMessage.recycle();
            } else {
                obtainMessage.sendToTarget();
            }
        }
    }

    public void showGlobalActionsMenu(int i) {
        synchronized (this.mLock) {
        }
    }

    public void showRecentApps(boolean z) {
        int i;
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1);
            Handler handler = this.mHandler;
            if (z) {
                i = 1;
            } else {
                i = 0;
            }
            handler.obtainMessage(1, i, 0, null).sendToTarget();
        }
    }

    public void showTransient(int i, int i2, boolean z) {
        int i3;
        synchronized (this.mLock) {
            this.mHandler.removeMessages(9);
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            if (z) {
                i3 = 1;
            } else {
                i3 = 0;
            }
            obtain.argi3 = i3;
            Message obtainMessage = this.mHandler.obtainMessage(9, obtain);
            if (Looper.myLooper() == this.mHandler.getLooper()) {
                this.mHandler.handleMessage(obtainMessage);
                obtainMessage.recycle();
            } else {
                obtainMessage.sendToTarget();
            }
        }
    }

    public void toggleKeyboardShortcutsMenu(int i) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(15);
            this.mHandler.obtainMessage(15, i, 0).sendToTarget();
        }
    }

    public void toggleRecentApps() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(3);
            Message obtainMessage = this.mHandler.obtainMessage(3, 0, 0, null);
            obtainMessage.setAsynchronous(true);
            obtainMessage.sendToTarget();
        }
    }

    public void addQsTile(ComponentName componentName) {
    }

    public void appTransitionCancelled(int i) {
    }

    public void appTransitionFinished(int i) {
    }

    public void appTransitionPending(int i) {
    }

    public void cancelRequestAddTile(String str) {
    }

    public void clickQsTile(ComponentName componentName) {
    }

    public void dismissInattentiveSleepWarning(boolean z) {
    }

    public void enterStageSplitFromRunningApp(boolean z) {
    }

    public void hideAuthenticationDialog(long j) {
    }

    public void notifyRequestedGameToolsWin(boolean z) {
    }

    public void onBiometricAuthenticated(int i) {
    }

    public void onCameraLaunchGestureDetected(int i) {
    }

    public void onDisplayReady(int i) {
    }

    public void onFlashlightKeyPressed(int i) {
    }

    public void onRecentsAnimationStateChanged(boolean z) {
    }

    public void registerNearbyMediaDevicesProvider(INearbyMediaDevicesProvider iNearbyMediaDevicesProvider) {
    }

    public void remQsTile(ComponentName componentName) {
    }

    public void removeIcon(String str) {
    }

    public void requestTileServiceListeningState(ComponentName componentName) {
    }

    public void requestWindowMagnificationConnection(boolean z) {
    }

    public void sendThreeFingerGestureKeyEvent(KeyEvent keyEvent) {
    }

    public void setBiometicContextListener(IBiometricContextListener iBiometricContextListener) {
    }

    public void setIndicatorBgColor(int i) {
    }

    public void setTopAppHidesStatusBar(boolean z) {
    }

    public void setUdfpsRefreshRateCallback(IUdfpsRefreshRateRequestCallback iUdfpsRefreshRateRequestCallback) {
    }

    public void showMediaOutputSwitcher(String str) {
    }

    public void showPinningEnterExitToast(boolean z) {
    }

    public void showRearDisplayDialog(int i) {
    }

    public void showScreenPinningRequest(int i) {
    }

    public void showWirelessChargingAnimation(int i) {
    }

    public void startAssist(Bundle bundle) {
    }

    public void suppressAmbientDisplay(boolean z) {
    }

    public void unregisterNearbyMediaDevicesProvider(INearbyMediaDevicesProvider iNearbyMediaDevicesProvider) {
    }

    public void cancelPreloadRecentApps() {
    }

    public void dismissKeyboardShortcutsMenu() {
    }

    public void goToFullscreenFromSplit() {
    }

    public void onEmergencyActionLaunchGestureDetected() {
    }

    public void preloadRecentApps() {
    }

    public void resetScheduleAutoHide() {
    }

    public void runGcForTest() {
    }

    public void showAssistDisclosure() {
    }

    public void showInattentiveSleepWarning() {
    }

    public void showPictureInPictureMenu() {
    }

    public void showPinningEscapeToast() {
    }

    public void startTracing() {
    }

    public void stopTracing() {
    }

    public void togglePanel() {
    }

    public void toggleSplitScreen() {
    }

    public void toggleTaskbar() {
    }

    public void dumpProto(String[] strArr, ParcelFileDescriptor parcelFileDescriptor) {
    }

    public void hideToast(String str, IBinder iBinder) {
    }

    public void notifyRequestedSystemKey(boolean z, boolean z2) {
    }

    public void onBiometricHelp(int i, String str) {
    }

    public void onProposedRotationChanged(int i, boolean z) {
    }

    public void passThroughShellCommand(String[] strArr, ParcelFileDescriptor parcelFileDescriptor) {
    }

    public void setBlueLightFilter(boolean z, int i) {
    }

    public void setIcon(String str, StatusBarIcon statusBarIcon) {
    }

    public void setNavigationBarLumaSamplingEnabled(int i, boolean z) {
    }

    public void showShutdownUi(boolean z, String str) {
    }

    public void startSearcleByHomeKey(boolean z, boolean z2) {
    }

    public void appTransitionStarting(int i, long j, long j2) {
    }

    public void notifySamsungPayInfo(int i, boolean z, Rect rect) {
    }

    public void onBiometricError(int i, int i2, int i3) {
    }

    public void updateMediaTapToTransferSenderDisplay(int i, MediaRoute2Info mediaRoute2Info, IUndoMediaTransferCallback iUndoMediaTransferCallback) {
    }

    public void setNavigationBarShortcut(String str, RemoteViews remoteViews, int i, int i2) {
    }

    public void updateMediaTapToTransferReceiverDisplay(int i, MediaRoute2Info mediaRoute2Info, Icon icon, CharSequence charSequence) {
    }

    public void requestAddTile(ComponentName componentName, CharSequence charSequence, CharSequence charSequence2, Icon icon, IAddTileResultCallback iAddTileResultCallback) {
    }

    public void setImeWindowStatus(int i, IBinder iBinder, int i2, int i3, boolean z) {
    }

    public void showAuthenticationDialog(PromptInfo promptInfo, IBiometricSysuiReceiver iBiometricSysuiReceiver, int[] iArr, boolean z, boolean z2, int i, long j, String str, long j2) {
    }

    public void showToast(int i, String str, IBinder iBinder, CharSequence charSequence, IBinder iBinder2, int i2, ITransientNotificationCallback iTransientNotificationCallback, int i3) {
    }
}
