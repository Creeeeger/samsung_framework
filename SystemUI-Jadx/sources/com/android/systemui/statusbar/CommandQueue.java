package com.android.systemui.statusbar;

import android.app.ITransientNotificationCallback;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Icon;
import android.hardware.biometrics.IBiometricContextListener;
import android.hardware.biometrics.IBiometricSysuiReceiver;
import android.hardware.biometrics.PromptInfo;
import android.hardware.fingerprint.IUdfpsRefreshRateRequestCallback;
import android.media.INearbyMediaDevicesProvider;
import android.media.MediaRoute2Info;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.widget.RemoteViews;
import com.android.internal.os.SomeArgs;
import com.android.internal.statusbar.IAddTileResultCallback;
import com.android.internal.statusbar.IStatusBar;
import com.android.internal.statusbar.IUndoMediaTransferCallback;
import com.android.internal.statusbar.LetterboxDetails;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.internal.util.GcUtils;
import com.android.internal.view.AppearanceRegion;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.dump.DumpHandler;
import com.android.systemui.log.SecPanelLogger;
import com.android.systemui.log.SecPanelLoggerImpl;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.settings.DisplayTrackerImpl;
import com.android.systemui.shade.SecPanelBlockExpandingHelper;
import com.android.systemui.shared.tracing.FrameProtoTracer;
import com.android.systemui.statusbar.commandline.CommandRegistry;
import com.android.systemui.statusbar.policy.CallbackController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.tracing.ProtoTracer;
import com.android.systemui.util.SafeUIState;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.EnterpriseDeviceManager;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CommandQueue extends IStatusBar.Stub implements CallbackController {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ArrayList mCallbacks;
    public final SparseArray mDisplayDisabled;
    public final DisplayTracker mDisplayTracker;
    public final DumpHandler mDumpHandler;
    public final H mHandler;
    public int mLastUpdatedImeDisplayId;
    public final Object mLock;
    public final ProtoTracer mProtoTracer;
    public final CommandRegistry mRegistry;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public /* synthetic */ H(CommandQueue commandQueue, Looper looper, int i) {
            this(looper);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000b. Please report as an issue. */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            boolean z6;
            boolean z7;
            boolean z8;
            boolean z9;
            boolean z10;
            boolean z11;
            boolean z12;
            boolean z13;
            boolean z14;
            boolean z15;
            boolean z16;
            boolean z17;
            boolean z18;
            boolean z19;
            int i = 0;
            boolean z20 = true;
            switch (message.what & (-65536)) {
                case 65536:
                    int i2 = message.arg1;
                    if (i2 != 1) {
                        if (i2 == 2) {
                            while (i < CommandQueue.this.mCallbacks.size()) {
                                ((Callbacks) CommandQueue.this.mCallbacks.get(i)).removeIcon((String) message.obj);
                                i++;
                            }
                            return;
                        }
                        return;
                    }
                    Pair pair = (Pair) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).setIcon((String) pair.first, (StatusBarIcon) pair.second);
                        i++;
                    }
                    return;
                case 131072:
                case 8257536:
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    for (int i3 = 0; i3 < CommandQueue.this.mCallbacks.size(); i3++) {
                        Callbacks callbacks = (Callbacks) CommandQueue.this.mCallbacks.get(i3);
                        int i4 = someArgs.argi1;
                        int i5 = someArgs.argi2;
                        int i6 = someArgs.argi3;
                        if (someArgs.argi4 != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        callbacks.disable(i4, i5, i6, z);
                    }
                    return;
                case 196608:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).animateExpandNotificationsPanel();
                        i++;
                    }
                    return;
                case 262144:
                    for (int i7 = 0; i7 < CommandQueue.this.mCallbacks.size(); i7++) {
                        Callbacks callbacks2 = (Callbacks) CommandQueue.this.mCallbacks.get(i7);
                        int i8 = message.arg1;
                        if (message.arg2 != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        callbacks2.animateCollapsePanels(i8, z2);
                    }
                    return;
                case EnterpriseDeviceManager.PASSWORD_QUALITY_ALPHANUMERIC /* 327680 */:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).animateExpandSettingsPanel((String) message.obj);
                        i++;
                    }
                    return;
                case 393216:
                    SomeArgs someArgs2 = (SomeArgs) message.obj;
                    for (int i9 = 0; i9 < CommandQueue.this.mCallbacks.size(); i9++) {
                        Callbacks callbacks3 = (Callbacks) CommandQueue.this.mCallbacks.get(i9);
                        int i10 = someArgs2.argi1;
                        int i11 = someArgs2.argi2;
                        AppearanceRegion[] appearanceRegionArr = (AppearanceRegion[]) someArgs2.arg1;
                        if (someArgs2.argi3 == 1) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        callbacks3.onSystemBarAttributesChanged(i10, i11, appearanceRegionArr, z3, someArgs2.argi4, someArgs2.argi5, (String) someArgs2.arg3, (LetterboxDetails[]) someArgs2.arg4);
                    }
                    someArgs2.recycle();
                    return;
                case 458752:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).onDisplayReady(message.arg1);
                        i++;
                    }
                    return;
                case 524288:
                    SomeArgs someArgs3 = (SomeArgs) message.obj;
                    CommandQueue commandQueue = CommandQueue.this;
                    int i12 = someArgs3.argi1;
                    IBinder iBinder = (IBinder) someArgs3.arg1;
                    int i13 = someArgs3.argi2;
                    int i14 = someArgs3.argi3;
                    if (someArgs3.argi4 != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    CommandQueue.m1408$$Nest$mhandleShowImeButton(commandQueue, i12, iBinder, i13, i14, z4);
                    return;
                case 589824:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).toggleRecentApps();
                        i++;
                    }
                    return;
                case 655360:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).preloadRecentApps();
                        i++;
                    }
                    return;
                case 720896:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).cancelPreloadRecentApps();
                        i++;
                    }
                    return;
                case 786432:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).setWindowState(message.arg1, message.arg2, ((Integer) message.obj).intValue());
                        i++;
                    }
                    return;
                case 851968:
                    for (int i15 = 0; i15 < CommandQueue.this.mCallbacks.size(); i15++) {
                        Callbacks callbacks4 = (Callbacks) CommandQueue.this.mCallbacks.get(i15);
                        if (message.arg1 != 0) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        callbacks4.showRecentApps(z5);
                    }
                    return;
                case 917504:
                    for (int i16 = 0; i16 < CommandQueue.this.mCallbacks.size(); i16++) {
                        Callbacks callbacks5 = (Callbacks) CommandQueue.this.mCallbacks.get(i16);
                        if (message.arg1 != 0) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (message.arg2 != 0) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        callbacks5.hideRecentApps(z6, z7);
                    }
                    return;
                case 1179648:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).showScreenPinningRequest(message.arg1);
                        i++;
                    }
                    return;
                case 1245184:
                    for (int i17 = 0; i17 < CommandQueue.this.mCallbacks.size(); i17++) {
                        Callbacks callbacks6 = (Callbacks) CommandQueue.this.mCallbacks.get(i17);
                        int i18 = message.arg1;
                        if (message.arg2 != 0) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        callbacks6.appTransitionPending(i18, z8);
                    }
                    return;
                case 1310720:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).appTransitionCancelled(message.arg1);
                        i++;
                    }
                    return;
                case 1376256:
                    SomeArgs someArgs4 = (SomeArgs) message.obj;
                    for (int i19 = 0; i19 < CommandQueue.this.mCallbacks.size(); i19++) {
                        Callbacks callbacks7 = (Callbacks) CommandQueue.this.mCallbacks.get(i19);
                        int i20 = someArgs4.argi1;
                        long longValue = ((Long) someArgs4.arg1).longValue();
                        long longValue2 = ((Long) someArgs4.arg2).longValue();
                        if (someArgs4.argi2 != 0) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        callbacks7.appTransitionStarting(i20, longValue, longValue2, z9);
                    }
                    return;
                case 1441792:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).showAssistDisclosure();
                        i++;
                    }
                    return;
                case 1507328:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).startAssist((Bundle) message.obj);
                        i++;
                    }
                    return;
                case 1572864:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).onCameraLaunchGestureDetected(message.arg1);
                        i++;
                    }
                    return;
                case 1638400:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).toggleKeyboardShortcutsMenu(message.arg1);
                        i++;
                    }
                    return;
                case 1703936:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).showPictureInPictureMenu();
                        i++;
                    }
                    return;
                case 1769472:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).addQsTile((ComponentName) message.obj);
                        i++;
                    }
                    return;
                case 1835008:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).remQsTile((ComponentName) message.obj);
                        i++;
                    }
                    return;
                case 1900544:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).clickTile((ComponentName) message.obj);
                        i++;
                    }
                    return;
                case 1966080:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).toggleSplitScreen();
                        i++;
                    }
                    return;
                case 2031616:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).appTransitionFinished(message.arg1);
                        i++;
                    }
                    return;
                case QuickStepContract.SYSUI_STATE_DEVICE_DOZING /* 2097152 */:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).dismissKeyboardShortcutsMenu();
                        i++;
                    }
                    return;
                case 2162688:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).handleSystemKey((KeyEvent) message.obj);
                        i++;
                    }
                    return;
                case 2228224:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).handleShowGlobalActionsMenu(message.arg1);
                        i++;
                    }
                    return;
                case 2293760:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).togglePanel();
                        i++;
                    }
                    return;
                case 2359296:
                    for (int i21 = 0; i21 < CommandQueue.this.mCallbacks.size(); i21++) {
                        Callbacks callbacks8 = (Callbacks) CommandQueue.this.mCallbacks.get(i21);
                        if (message.arg1 != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        callbacks8.handleShowShutdownUi((String) message.obj, z10);
                    }
                    return;
                case 2424832:
                    for (int i22 = 0; i22 < CommandQueue.this.mCallbacks.size(); i22++) {
                        Callbacks callbacks9 = (Callbacks) CommandQueue.this.mCallbacks.get(i22);
                        if (message.arg1 != 0) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        callbacks9.setTopAppHidesStatusBar(z11);
                    }
                    return;
                case 2490368:
                    for (int i23 = 0; i23 < CommandQueue.this.mCallbacks.size(); i23++) {
                        Callbacks callbacks10 = (Callbacks) CommandQueue.this.mCallbacks.get(i23);
                        int i24 = message.arg1;
                        if (message.arg2 != 0) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        callbacks10.onRotationProposal(i24, z12);
                    }
                    return;
                case 2555904:
                    CommandQueue.this.mHandler.removeMessages(2752512);
                    CommandQueue.this.mHandler.removeMessages(2686976);
                    CommandQueue.this.mHandler.removeMessages(2621440);
                    SomeArgs someArgs5 = (SomeArgs) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).showAuthenticationDialog((PromptInfo) someArgs5.arg1, (IBiometricSysuiReceiver) someArgs5.arg2, (int[]) someArgs5.arg3, ((Boolean) someArgs5.arg4).booleanValue(), ((Boolean) someArgs5.arg5).booleanValue(), someArgs5.argi1, someArgs5.argl1, (String) someArgs5.arg6, someArgs5.argl2);
                        i++;
                    }
                    someArgs5.recycle();
                    return;
                case 2621440:
                    SomeArgs someArgs6 = (SomeArgs) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).onBiometricAuthenticated(someArgs6.argi1);
                        i++;
                    }
                    someArgs6.recycle();
                    return;
                case 2686976:
                    SomeArgs someArgs7 = (SomeArgs) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).onBiometricHelp(someArgs7.argi1, (String) someArgs7.arg1);
                        i++;
                    }
                    someArgs7.recycle();
                    return;
                case 2752512:
                    SomeArgs someArgs8 = (SomeArgs) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).onBiometricError(someArgs8.argi1, someArgs8.argi2, someArgs8.argi3);
                        i++;
                    }
                    someArgs8.recycle();
                    return;
                case 2818048:
                    SomeArgs someArgs9 = (SomeArgs) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).hideAuthenticationDialog(someArgs9.argl1);
                        i++;
                    }
                    someArgs9.recycle();
                    return;
                case 2883584:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).showWirelessChargingAnimation(message.arg1);
                        i++;
                    }
                    return;
                case 2949120:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).showPinningEnterExitToast(((Boolean) message.obj).booleanValue());
                        i++;
                    }
                    return;
                case 3014656:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).showPinningEscapeToast();
                        i++;
                    }
                    return;
                case 3080192:
                    for (int i25 = 0; i25 < CommandQueue.this.mCallbacks.size(); i25++) {
                        Callbacks callbacks11 = (Callbacks) CommandQueue.this.mCallbacks.get(i25);
                        if (message.arg1 > 0) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        callbacks11.onRecentsAnimationStateChanged(z13);
                    }
                    return;
                case 3145728:
                    SomeArgs someArgs10 = (SomeArgs) message.obj;
                    int i26 = someArgs10.argi1;
                    int i27 = someArgs10.argi2;
                    if (someArgs10.argi3 == 0) {
                        z20 = false;
                    }
                    someArgs10.recycle();
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).showTransient(i26, i27, z20);
                        i++;
                    }
                    return;
                case 3211264:
                    SomeArgs someArgs11 = (SomeArgs) message.obj;
                    int i28 = someArgs11.argi1;
                    int i29 = someArgs11.argi2;
                    someArgs11.recycle();
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).abortTransient(i28, i29);
                        i++;
                    }
                    return;
                case 3276800:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).showInattentiveSleepWarning();
                        i++;
                    }
                    return;
                case 3342336:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).dismissInattentiveSleepWarning(((Boolean) message.obj).booleanValue());
                        i++;
                    }
                    return;
                case 3407872:
                    SomeArgs someArgs12 = (SomeArgs) message.obj;
                    String str = (String) someArgs12.arg1;
                    IBinder iBinder2 = (IBinder) someArgs12.arg2;
                    CharSequence charSequence = (CharSequence) someArgs12.arg3;
                    IBinder iBinder3 = (IBinder) someArgs12.arg4;
                    ITransientNotificationCallback iTransientNotificationCallback = (ITransientNotificationCallback) someArgs12.arg5;
                    int i30 = someArgs12.argi1;
                    int i31 = someArgs12.argi2;
                    int i32 = someArgs12.argi3;
                    Iterator it = CommandQueue.this.mCallbacks.iterator();
                    while (it.hasNext()) {
                        ((Callbacks) it.next()).showToast(i30, str, iBinder2, charSequence, iBinder3, i31, iTransientNotificationCallback, i32);
                        i31 = i31;
                        i30 = i30;
                    }
                    return;
                case 3473408:
                    SomeArgs someArgs13 = (SomeArgs) message.obj;
                    String str2 = (String) someArgs13.arg1;
                    IBinder iBinder4 = (IBinder) someArgs13.arg2;
                    Iterator it2 = CommandQueue.this.mCallbacks.iterator();
                    while (it2.hasNext()) {
                        ((Callbacks) it2.next()).hideToast(str2, iBinder4);
                    }
                    return;
                case 3538944:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).onTracingStateChanged(((Boolean) message.obj).booleanValue());
                        i++;
                    }
                    return;
                case 3604480:
                    Iterator it3 = CommandQueue.this.mCallbacks.iterator();
                    while (it3.hasNext()) {
                        ((Callbacks) it3.next()).suppressAmbientDisplay(((Boolean) message.obj).booleanValue());
                    }
                    return;
                case 3670016:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).requestWindowMagnificationConnection(((Boolean) message.obj).booleanValue());
                        i++;
                    }
                    return;
                case 3801088:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).onEmergencyActionLaunchGestureDetected();
                        i++;
                    }
                    return;
                case 3866624:
                    for (int i33 = 0; i33 < CommandQueue.this.mCallbacks.size(); i33++) {
                        Callbacks callbacks12 = (Callbacks) CommandQueue.this.mCallbacks.get(i33);
                        int i34 = message.arg1;
                        if (message.arg2 != 0) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        callbacks12.setNavigationBarLumaSamplingEnabled(i34, z14);
                    }
                    return;
                case 3932160:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).setUdfpsRefreshRateCallback((IUdfpsRefreshRateRequestCallback) message.obj);
                        i++;
                    }
                    return;
                case 3997696:
                    SomeArgs someArgs14 = (SomeArgs) message.obj;
                    ComponentName componentName = (ComponentName) someArgs14.arg1;
                    CharSequence charSequence2 = (CharSequence) someArgs14.arg2;
                    CharSequence charSequence3 = (CharSequence) someArgs14.arg3;
                    Icon icon = (Icon) someArgs14.arg4;
                    IAddTileResultCallback iAddTileResultCallback = (IAddTileResultCallback) someArgs14.arg5;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).requestAddTile(componentName, charSequence2, charSequence3, icon, iAddTileResultCallback);
                        i++;
                    }
                    someArgs14.recycle();
                    return;
                case 4063232:
                    String str3 = (String) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).cancelRequestAddTile(str3);
                        i++;
                    }
                    return;
                case 4128768:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).setBiometricContextListener((IBiometricContextListener) message.obj);
                        i++;
                    }
                    return;
                case QuickStepContract.SYSUI_STATE_BACK_DISABLED /* 4194304 */:
                    SomeArgs someArgs15 = (SomeArgs) message.obj;
                    int intValue = ((Integer) someArgs15.arg1).intValue();
                    MediaRoute2Info mediaRoute2Info = (MediaRoute2Info) someArgs15.arg2;
                    IUndoMediaTransferCallback iUndoMediaTransferCallback = (IUndoMediaTransferCallback) someArgs15.arg3;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).updateMediaTapToTransferSenderDisplay(intValue, mediaRoute2Info, iUndoMediaTransferCallback);
                        i++;
                    }
                    someArgs15.recycle();
                    return;
                case 4259840:
                    SomeArgs someArgs16 = (SomeArgs) message.obj;
                    int intValue2 = ((Integer) someArgs16.arg1).intValue();
                    MediaRoute2Info mediaRoute2Info2 = (MediaRoute2Info) someArgs16.arg2;
                    Icon icon2 = (Icon) someArgs16.arg3;
                    CharSequence charSequence4 = (CharSequence) someArgs16.arg4;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).updateMediaTapToTransferReceiverDisplay(intValue2, mediaRoute2Info2, icon2, charSequence4);
                        i++;
                    }
                    someArgs16.recycle();
                    return;
                case 4325376:
                    INearbyMediaDevicesProvider iNearbyMediaDevicesProvider = (INearbyMediaDevicesProvider) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).registerNearbyMediaDevicesProvider(iNearbyMediaDevicesProvider);
                        i++;
                    }
                    return;
                case 4390912:
                    INearbyMediaDevicesProvider iNearbyMediaDevicesProvider2 = (INearbyMediaDevicesProvider) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).unregisterNearbyMediaDevicesProvider(iNearbyMediaDevicesProvider2);
                        i++;
                    }
                    return;
                case 4456448:
                    ComponentName componentName2 = (ComponentName) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).requestTileServiceListeningState(componentName2);
                        i++;
                    }
                    return;
                case 4521984:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).showRearDisplayDialog(((Integer) message.obj).intValue());
                        i++;
                    }
                    return;
                case 4587520:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).goToFullscreenFromSplit();
                        i++;
                    }
                    return;
                case 4653056:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).enterStageSplitFromRunningApp(((Boolean) message.obj).booleanValue());
                        i++;
                    }
                    return;
                case 4718592:
                    String str4 = (String) ((SomeArgs) message.obj).arg1;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).showMediaOutputSwitcher(str4);
                        i++;
                    }
                    return;
                case 4784128:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).toggleTaskbar();
                        i++;
                    }
                    return;
                case 4849664:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).onFlashlightKeyPressed(message.arg1);
                        i++;
                    }
                    return;
                case 6619136:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        Callbacks callbacks13 = (Callbacks) CommandQueue.this.mCallbacks.get(i);
                        callbacks13.getClass();
                        i++;
                    }
                    return;
                case 6684672:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).getClass();
                        i++;
                    }
                    return;
                case 6750208:
                    for (int i35 = 0; i35 < CommandQueue.this.mCallbacks.size(); i35++) {
                        Callbacks callbacks14 = (Callbacks) CommandQueue.this.mCallbacks.get(i35);
                        if (message.arg1 != 0) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        callbacks14.setBlueLightFilter(z15, message.arg2);
                    }
                    return;
                case 7405568:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).getClass();
                        i++;
                    }
                    return;
                case 7929856:
                    SomeArgs someArgs17 = (SomeArgs) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).setNavigationBarShortcut((String) someArgs17.arg1, (RemoteViews) someArgs17.arg2, someArgs17.argi1, someArgs17.argi2);
                        i++;
                    }
                    someArgs17.recycle();
                    return;
                case 7995392:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).notifyRequestedGameToolsWin(((Boolean) message.obj).booleanValue());
                        i++;
                    }
                    return;
                case 8060928:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).resetScheduleAutoHide();
                        i++;
                    }
                    return;
                case 8126464:
                    for (int i36 = 0; i36 < CommandQueue.this.mCallbacks.size(); i36++) {
                        Callbacks callbacks15 = (Callbacks) CommandQueue.this.mCallbacks.get(i36);
                        if (message.arg1 != 0) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        if (message.arg2 != 0) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        callbacks15.notifyRequestedSystemKey(z16, z17);
                    }
                    return;
                case 8192000:
                    SomeArgs someArgs18 = (SomeArgs) message.obj;
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).notifySamsungPayInfo(someArgs18.argi1, ((Boolean) someArgs18.arg1).booleanValue(), (Rect) someArgs18.arg2);
                        i++;
                    }
                    someArgs18.recycle();
                    return;
                case 8716288:
                    while (i < CommandQueue.this.mCallbacks.size()) {
                        ((Callbacks) CommandQueue.this.mCallbacks.get(i)).sendThreeFingerGestureKeyEvent((KeyEvent) message.obj);
                        i++;
                    }
                    return;
                case 9175040:
                    SomeArgs someArgs19 = (SomeArgs) message.obj;
                    for (int i37 = 0; i37 < CommandQueue.this.mCallbacks.size(); i37++) {
                        Callbacks callbacks16 = (Callbacks) CommandQueue.this.mCallbacks.get(i37);
                        if (someArgs19.argi1 != 0) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        Boolean valueOf = Boolean.valueOf(z18);
                        if (someArgs19.argi2 != 0) {
                            z19 = true;
                        } else {
                            z19 = false;
                        }
                        callbacks16.startSearcleByHomeKey(valueOf, Boolean.valueOf(z19));
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

    /* renamed from: -$$Nest$mhandleShowImeButton, reason: not valid java name */
    public static void m1408$$Nest$mhandleShowImeButton(CommandQueue commandQueue, int i, IBinder iBinder, int i2, int i3, boolean z) {
        if (i == -1) {
            commandQueue.getClass();
            return;
        }
        int i4 = commandQueue.mLastUpdatedImeDisplayId;
        if (i4 != i && i4 != -1) {
            for (int i5 = 0; i5 < commandQueue.mCallbacks.size(); i5++) {
                ((Callbacks) commandQueue.mCallbacks.get(i5)).setImeWindowStatus(commandQueue.mLastUpdatedImeDisplayId, null, 4, 0, false);
            }
        }
        for (int i6 = 0; i6 < commandQueue.mCallbacks.size(); i6++) {
            ((Callbacks) commandQueue.mCallbacks.get(i6)).setImeWindowStatus(i, iBinder, i2, i3, z);
        }
        commandQueue.mLastUpdatedImeDisplayId = i;
    }

    public CommandQueue(Context context, DisplayTracker displayTracker) {
        this(context, displayTracker, null, null, null);
    }

    public final void abortTransient(int i, int i2) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            this.mHandler.obtainMessage(3211264, obtain).sendToTarget();
        }
    }

    public final void addQsTile(ComponentName componentName) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1769472, componentName).sendToTarget();
        }
    }

    public final void animateCollapsePanels() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(262144);
            this.mHandler.obtainMessage(262144, 0, 0).sendToTarget();
        }
    }

    public final void animateExpandNotificationsPanel() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(196608);
            this.mHandler.sendEmptyMessage(196608);
        }
    }

    public final void animateExpandSettingsPanel(String str) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(EnterpriseDeviceManager.PASSWORD_QUALITY_ALPHANUMERIC);
            this.mHandler.obtainMessage(EnterpriseDeviceManager.PASSWORD_QUALITY_ALPHANUMERIC, str).sendToTarget();
        }
    }

    public final void appTransitionCancelled(int i) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1310720, i, 0).sendToTarget();
        }
    }

    public final void appTransitionFinished(int i) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(2031616, i, 0).sendToTarget();
        }
    }

    public final void appTransitionPending(int i) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1245184, i, 0).sendToTarget();
        }
    }

    public final void appTransitionStarting(int i, long j, long j2) {
        appTransitionStarting(i, j, j2, false);
    }

    public final void cancelPreloadRecentApps() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(720896);
            this.mHandler.obtainMessage(720896, 0, 0, null).sendToTarget();
        }
    }

    public final void cancelRequestAddTile(String str) {
        this.mHandler.obtainMessage(4063232, str).sendToTarget();
    }

    public final void clickQsTile(ComponentName componentName) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1900544, componentName).sendToTarget();
        }
    }

    public final void disable(int i, int i2, int i3, boolean z) {
        synchronized (this.mLock) {
            this.mDisplayDisabled.put(i, new Pair(Integer.valueOf(i2), Integer.valueOf(i3)));
            int i4 = 1;
            int i5 = (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN && i == 1) ? 8257536 : 131072;
            this.mHandler.removeMessages(i5);
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            obtain.argi3 = i3;
            if (!z) {
                i4 = 0;
            }
            obtain.argi4 = i4;
            Message obtainMessage = this.mHandler.obtainMessage(i5, obtain);
            if (Looper.myLooper() == this.mHandler.getLooper()) {
                this.mHandler.handleMessage(obtainMessage);
                obtainMessage.recycle();
            } else {
                obtainMessage.sendToTarget();
            }
        }
    }

    public final void dismissInattentiveSleepWarning(boolean z) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(3342336, Boolean.valueOf(z)).sendToTarget();
        }
    }

    public final void dismissKeyboardShortcutsMenu() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(QuickStepContract.SYSUI_STATE_DEVICE_DOZING);
            this.mHandler.obtainMessage(QuickStepContract.SYSUI_STATE_DEVICE_DOZING).sendToTarget();
        }
    }

    public final void dumpProto(final String[] strArr, final ParcelFileDescriptor parcelFileDescriptor) {
        final FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
        new Thread("Sysui.dumpProto") { // from class: com.android.systemui.statusbar.CommandQueue.3
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    try {
                    } catch (Exception unused) {
                        int i = CommandQueue.$r8$clinit;
                        Log.d("CommandQueue", "Process interrupted by Exception");
                    }
                    if (CommandQueue.this.mDumpHandler == null) {
                        try {
                            parcelFileDescriptor.close();
                        } catch (Exception unused2) {
                        }
                    } else {
                        CommandQueue.this.mDumpHandler.dump(fileDescriptor, new PrintWriter(new OutputStream(this) { // from class: com.android.systemui.statusbar.CommandQueue.3.1
                            @Override // java.io.OutputStream
                            public final void write(int i2) {
                            }
                        }), strArr);
                        try {
                            parcelFileDescriptor.close();
                        } catch (Exception unused3) {
                        }
                    }
                } catch (Throwable th) {
                    try {
                        parcelFileDescriptor.close();
                    } catch (Exception unused4) {
                    }
                    throw th;
                }
            }
        }.start();
    }

    public final void enterStageSplitFromRunningApp(boolean z) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(4653056, Boolean.valueOf(z)).sendToTarget();
        }
    }

    public final Pair getDisabled(int i) {
        Pair pair = (Pair) this.mDisplayDisabled.get(i);
        if (pair == null) {
            Pair pair2 = new Pair(0, 0);
            this.mDisplayDisabled.put(i, pair2);
            return pair2;
        }
        return pair;
    }

    public final void goToFullscreenFromSplit() {
        this.mHandler.obtainMessage(4587520).sendToTarget();
    }

    public final void handleSystemKey(KeyEvent keyEvent) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(2162688, keyEvent).sendToTarget();
        }
    }

    public final void hideAuthenticationDialog(long j) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argl1 = j;
            this.mHandler.obtainMessage(2818048, obtain).sendToTarget();
        }
    }

    public final void hideRecentApps(boolean z, boolean z2) {
        int i;
        synchronized (this.mLock) {
            this.mHandler.removeMessages(917504);
            H h = this.mHandler;
            if (z2) {
                i = 1;
            } else {
                i = 0;
            }
            h.obtainMessage(917504, z ? 1 : 0, i, null).sendToTarget();
        }
    }

    public final void hideToast(String str, IBinder iBinder) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.arg1 = str;
            obtain.arg2 = iBinder;
            this.mHandler.obtainMessage(3473408, obtain).sendToTarget();
        }
    }

    public final void notifyRequestedGameToolsWin(boolean z) {
        this.mHandler.obtainMessage(7995392, Boolean.valueOf(z)).sendToTarget();
    }

    public final void notifyRequestedSystemKey(boolean z, boolean z2) {
        int i;
        synchronized (this.mLock) {
            H h = this.mHandler;
            if (z2) {
                i = 1;
            } else {
                i = 0;
            }
            h.obtainMessage(8126464, z ? 1 : 0, i).sendToTarget();
        }
    }

    public final void notifySamsungPayInfo(int i, boolean z, Rect rect) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.arg1 = Boolean.valueOf(z);
            obtain.arg2 = rect;
            this.mHandler.obtainMessage(8192000, obtain).sendToTarget();
        }
    }

    public final void onBiometricAuthenticated(int i) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            this.mHandler.obtainMessage(2621440, obtain).sendToTarget();
        }
    }

    public final void onBiometricError(int i, int i2, int i3) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            obtain.argi3 = i3;
            this.mHandler.obtainMessage(2752512, obtain).sendToTarget();
        }
    }

    public final void onBiometricHelp(int i, String str) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.arg1 = str;
            this.mHandler.obtainMessage(2686976, obtain).sendToTarget();
        }
    }

    public final void onCameraLaunchGestureDetected(int i) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1572864);
            this.mHandler.obtainMessage(1572864, i, 0).sendToTarget();
        }
    }

    public final void onDisplayReady(int i) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(458752, i, 0).sendToTarget();
        }
    }

    public final void onEmergencyActionLaunchGestureDetected() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(3801088);
            this.mHandler.obtainMessage(3801088).sendToTarget();
        }
    }

    public final void onFlashlightKeyPressed(int i) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(4849664);
            this.mHandler.obtainMessage(4849664, i, 0, null).sendToTarget();
        }
    }

    public final void onFocusedDisplayChanged(int i) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(6684672);
            this.mHandler.obtainMessage(6684672, i, 0, null).sendToTarget();
        }
    }

    public final void onProposedRotationChanged(int i, boolean z) {
        int i2;
        synchronized (this.mLock) {
            this.mHandler.removeMessages(2490368);
            H h = this.mHandler;
            if (z) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            h.obtainMessage(2490368, i, i2, null).sendToTarget();
        }
    }

    public final void onRecentsAnimationStateChanged(boolean z) {
        int i;
        synchronized (this.mLock) {
            H h = this.mHandler;
            if (z) {
                i = 1;
            } else {
                i = 0;
            }
            h.obtainMessage(3080192, i, 0).sendToTarget();
        }
    }

    public final void onSystemBarAttributesChanged(int i, int i2, AppearanceRegion[] appearanceRegionArr, boolean z, int i3, int i4, String str, LetterboxDetails[] letterboxDetailsArr) {
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
            obtain.arg4 = letterboxDetailsArr;
            this.mHandler.obtainMessage(393216, obtain).sendToTarget();
        }
    }

    public final boolean panelsEnabled() {
        boolean z;
        SecPanelBlockExpandingHelper secPanelBlockExpandingHelper = (SecPanelBlockExpandingHelper) Dependency.get(SecPanelBlockExpandingHelper.class);
        boolean isBlockedByKnoxPanel = secPanelBlockExpandingHelper.isBlockedByKnoxPanel();
        boolean isSysUiSafeModeEnabled = SafeUIState.isSysUiSafeModeEnabled();
        if (isSysUiSafeModeEnabled) {
            Log.d("SecPanelBlockExpandingHelper", "SafeUIState.isSysUiSafeModeEnabled() is true");
        }
        boolean z2 = ((KeyguardStateControllerImpl) secPanelBlockExpandingHelper.mKeyguardStateController).mKeyguardGoingAway;
        if (z2) {
            Log.d("SecPanelBlockExpandingHelper", "SecPanelLog PANEL_TOUCH_BLOCK_EXPAND_WHEN_KEYGUARD_GOING_AWAY isKeyguardGoingAway is true");
        }
        if (!isBlockedByKnoxPanel && !isSysUiSafeModeEnabled && !z2) {
            z = false;
        } else {
            SecPanelLogger secPanelLogger = (SecPanelLogger) Dependency.get(SecPanelLogger.class);
            StringBuilder sb = new StringBuilder("QpRune.PANEL_BLOCK_EXPANDING panelsEnabled == false");
            sb.append(", Knox:");
            sb.append(isBlockedByKnoxPanel);
            sb.append(", SafeMode:");
            sb.append(isSysUiSafeModeEnabled);
            sb.append(", Unlock:");
            sb.append(z2);
            SecPanelLoggerImpl secPanelLoggerImpl = (SecPanelLoggerImpl) secPanelLogger;
            secPanelLoggerImpl.appendStatusBarState(sb, " | ");
            String sb2 = sb.toString();
            Log.d("SecPanelLogger", sb2);
            secPanelLoggerImpl.writer.logPanel("TOUCH", sb2);
            z = true;
        }
        if (z) {
            return false;
        }
        this.mDisplayTracker.getClass();
        int intValue = ((Integer) getDisabled(0).first).intValue();
        this.mDisplayTracker.getClass();
        int intValue2 = ((Integer) getDisabled(0).second).intValue();
        if ((intValue & 65536) == 0 && (intValue2 & 4) == 0) {
            return true;
        }
        return false;
    }

    public final void passThroughShellCommand(final String[] strArr, final ParcelFileDescriptor parcelFileDescriptor) {
        final PrintWriter printWriter = new PrintWriter(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
        new Thread("Sysui.passThroughShellCommand") { // from class: com.android.systemui.statusbar.CommandQueue.2
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    CommandRegistry commandRegistry = CommandQueue.this.mRegistry;
                    if (commandRegistry == null) {
                        try {
                            parcelFileDescriptor.close();
                        } catch (Exception unused) {
                        }
                    } else {
                        commandRegistry.onShellCommand(printWriter, strArr);
                        try {
                            parcelFileDescriptor.close();
                        } catch (Exception unused2) {
                        }
                    }
                } finally {
                    printWriter.flush();
                    try {
                        parcelFileDescriptor.close();
                    } catch (Exception unused3) {
                    }
                }
            }
        }.start();
    }

    public final void preloadRecentApps() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(655360);
            this.mHandler.obtainMessage(655360, 0, 0, null).sendToTarget();
        }
    }

    public final void recomputeDisableFlags(int i, boolean z) {
        synchronized (this.mLock) {
            disable(i, ((Integer) getDisabled(i).first).intValue(), ((Integer) getDisabled(i).second).intValue(), z);
        }
    }

    public final void registerNearbyMediaDevicesProvider(INearbyMediaDevicesProvider iNearbyMediaDevicesProvider) {
        this.mHandler.obtainMessage(4325376, iNearbyMediaDevicesProvider).sendToTarget();
    }

    public final void remQsTile(ComponentName componentName) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1835008, componentName).sendToTarget();
        }
    }

    public final void removeIcon(String str) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(65536, 2, 0, str).sendToTarget();
        }
    }

    public final void requestAddTile(ComponentName componentName, CharSequence charSequence, CharSequence charSequence2, Icon icon, IAddTileResultCallback iAddTileResultCallback) {
        SomeArgs obtain = SomeArgs.obtain();
        obtain.arg1 = componentName;
        obtain.arg2 = charSequence;
        obtain.arg3 = charSequence2;
        obtain.arg4 = icon;
        obtain.arg5 = iAddTileResultCallback;
        this.mHandler.obtainMessage(3997696, obtain).sendToTarget();
    }

    public final void requestTileServiceListeningState(ComponentName componentName) {
        this.mHandler.obtainMessage(4456448, componentName).sendToTarget();
    }

    public final void requestWindowMagnificationConnection(boolean z) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(3670016, Boolean.valueOf(z)).sendToTarget();
        }
    }

    public final void resetScheduleAutoHide() {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(8060928).sendToTarget();
        }
    }

    public final void runGcForTest() {
        GcUtils.runGcAndFinalizersSync();
    }

    public final void sendKeyEventToDesktopTaskbar(KeyEvent keyEvent) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(6619136, 0, 0, keyEvent).sendToTarget();
        }
    }

    public final void sendThreeFingerGestureKeyEvent(KeyEvent keyEvent) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(8716288, 0, 0, keyEvent).sendToTarget();
        }
    }

    public final void setBiometicContextListener(IBiometricContextListener iBiometricContextListener) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(4128768, iBiometricContextListener).sendToTarget();
        }
    }

    public final void setBlueLightFilter(boolean z, int i) {
        int i2;
        synchronized (this.mLock) {
            this.mHandler.removeMessages(6750208);
            H h = this.mHandler;
            if (z) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            h.obtainMessage(6750208, i2, i, null).sendToTarget();
        }
    }

    public final void setIcon(String str, StatusBarIcon statusBarIcon) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(65536, 1, 0, new Pair(str, statusBarIcon)).sendToTarget();
        }
    }

    public final void setImeWindowStatus(int i, IBinder iBinder, int i2, int i3, boolean z) {
        int i4;
        synchronized (this.mLock) {
            this.mHandler.removeMessages(524288);
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            obtain.argi3 = i3;
            if (z) {
                i4 = 1;
            } else {
                i4 = 0;
            }
            obtain.argi4 = i4;
            obtain.arg1 = iBinder;
            this.mHandler.obtainMessage(524288, obtain).sendToTarget();
        }
    }

    public final void setNavigationBarLumaSamplingEnabled(int i, boolean z) {
        int i2;
        synchronized (this.mLock) {
            H h = this.mHandler;
            if (z) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            h.obtainMessage(3866624, i, i2).sendToTarget();
        }
    }

    public final void setNavigationBarShortcut(String str, RemoteViews remoteViews, int i, int i2) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.arg1 = str;
            obtain.arg2 = remoteViews;
            obtain.argi1 = i;
            obtain.argi2 = i2;
            this.mHandler.obtainMessage(7929856, obtain).sendToTarget();
        }
    }

    public final void setTopAppHidesStatusBar(boolean z) {
        this.mHandler.removeMessages(2424832);
        this.mHandler.obtainMessage(2424832, z ? 1 : 0, 0).sendToTarget();
    }

    public final void setUdfpsRefreshRateCallback(IUdfpsRefreshRateRequestCallback iUdfpsRefreshRateRequestCallback) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(3932160, iUdfpsRefreshRateRequestCallback).sendToTarget();
        }
    }

    public final void setWindowState(int i, int i2, int i3) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(786432, i, i2, Integer.valueOf(i3)).sendToTarget();
        }
    }

    public final void showAssistDisclosure() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1441792);
            this.mHandler.obtainMessage(1441792).sendToTarget();
        }
    }

    public final void showAuthenticationDialog(PromptInfo promptInfo, IBiometricSysuiReceiver iBiometricSysuiReceiver, int[] iArr, boolean z, boolean z2, int i, long j, String str, long j2) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.arg1 = promptInfo;
            obtain.arg2 = iBiometricSysuiReceiver;
            obtain.arg3 = iArr;
            obtain.arg4 = Boolean.valueOf(z);
            obtain.arg5 = Boolean.valueOf(z2);
            obtain.argi1 = i;
            obtain.arg6 = str;
            obtain.argl1 = j;
            obtain.argl2 = j2;
            this.mHandler.obtainMessage(2555904, obtain).sendToTarget();
        }
    }

    public final void showGlobalActionsMenu(int i) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(2228224);
            this.mHandler.obtainMessage(2228224, i, 0).sendToTarget();
        }
    }

    public final void showInattentiveSleepWarning() {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(3276800).sendToTarget();
        }
    }

    public final void showMediaOutputSwitcher(String str) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 0 && callingUid != 1000) {
            throw new SecurityException("Call only allowed from system server.");
        }
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.arg1 = str;
            this.mHandler.obtainMessage(4718592, obtain).sendToTarget();
        }
    }

    public final void showPictureInPictureMenu() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1703936);
            this.mHandler.obtainMessage(1703936).sendToTarget();
        }
    }

    public final void showPinningEnterExitToast(boolean z) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(2949120, Boolean.valueOf(z)).sendToTarget();
        }
    }

    public final void showPinningEscapeToast() {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(3014656).sendToTarget();
        }
    }

    public final void showRearDisplayDialog(int i) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(4521984, Integer.valueOf(i)).sendToTarget();
        }
    }

    public final void showRecentApps(boolean z) {
        int i;
        synchronized (this.mLock) {
            this.mHandler.removeMessages(851968);
            H h = this.mHandler;
            if (z) {
                i = 1;
            } else {
                i = 0;
            }
            h.obtainMessage(851968, i, 0, null).sendToTarget();
        }
    }

    public final void showScreenPinningRequest(int i) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1179648, i, 0, null).sendToTarget();
        }
    }

    public final void showShutdownUi(boolean z, String str) {
        int i;
        synchronized (this.mLock) {
            this.mHandler.removeMessages(2359296);
            H h = this.mHandler;
            if (z) {
                i = 1;
            } else {
                i = 0;
            }
            h.obtainMessage(2359296, i, 0, str).sendToTarget();
        }
    }

    public final void showToast(int i, String str, IBinder iBinder, CharSequence charSequence, IBinder iBinder2, int i2, ITransientNotificationCallback iTransientNotificationCallback, int i3) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.arg1 = str;
            obtain.arg2 = iBinder;
            obtain.arg3 = charSequence;
            obtain.arg4 = iBinder2;
            obtain.arg5 = iTransientNotificationCallback;
            obtain.argi1 = i;
            obtain.argi2 = i2;
            obtain.argi3 = i3;
            this.mHandler.obtainMessage(3407872, obtain).sendToTarget();
        }
    }

    public final void showTransient(int i, int i2, boolean z) {
        int i3;
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            if (z) {
                i3 = 1;
            } else {
                i3 = 0;
            }
            obtain.argi3 = i3;
            this.mHandler.obtainMessage(3145728, obtain).sendToTarget();
        }
    }

    public final void showWirelessChargingAnimation(int i) {
        this.mHandler.removeMessages(2883584);
        this.mHandler.obtainMessage(2883584, i, 0).sendToTarget();
    }

    public final void startAssist(Bundle bundle) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1507328);
            this.mHandler.obtainMessage(1507328, bundle).sendToTarget();
        }
    }

    public final void startSearcleByHomeKey(boolean z, boolean z2) {
        int i;
        synchronized (this.mLock) {
            this.mHandler.removeMessages(9175040);
            SomeArgs obtain = SomeArgs.obtain();
            int i2 = 1;
            if (z) {
                i = 1;
            } else {
                i = 0;
            }
            obtain.argi1 = i;
            if (!z2) {
                i2 = 0;
            }
            obtain.argi2 = i2;
            this.mHandler.obtainMessage(9175040, obtain).sendToTarget();
        }
    }

    public final void startTracing() {
        synchronized (this.mLock) {
            ProtoTracer protoTracer = this.mProtoTracer;
            if (protoTracer != null) {
                FrameProtoTracer frameProtoTracer = protoTracer.mProtoTracer;
                synchronized (frameProtoTracer.mLock) {
                    if (!frameProtoTracer.mEnabled) {
                        frameProtoTracer.mBuffer.resetBuffer();
                        frameProtoTracer.mEnabled = true;
                        frameProtoTracer.logState();
                    }
                }
            }
            this.mHandler.obtainMessage(3538944, Boolean.TRUE).sendToTarget();
        }
    }

    public final void stopTracing() {
        synchronized (this.mLock) {
            ProtoTracer protoTracer = this.mProtoTracer;
            if (protoTracer != null) {
                protoTracer.stop();
            }
            this.mHandler.obtainMessage(3538944, Boolean.FALSE).sendToTarget();
        }
    }

    public final void suppressAmbientDisplay(boolean z) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(3604480, Boolean.valueOf(z)).sendToTarget();
        }
    }

    public final void toggleKeyboardShortcutsMenu(int i) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1638400);
            this.mHandler.obtainMessage(1638400, i, 0).sendToTarget();
        }
    }

    public final void togglePanel() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(2293760);
            this.mHandler.obtainMessage(2293760, 0, 0).sendToTarget();
        }
    }

    public final void toggleRecentApps() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(589824);
            Message obtainMessage = this.mHandler.obtainMessage(589824, 0, 0, null);
            obtainMessage.setAsynchronous(true);
            obtainMessage.sendToTarget();
        }
    }

    public final void toggleSplitScreen() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1966080);
            this.mHandler.obtainMessage(1966080, 0, 0, null).sendToTarget();
        }
    }

    public final void toggleTaskbar() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(4784128);
            this.mHandler.obtainMessage(4784128, 0, 0, null).sendToTarget();
        }
    }

    public final void unregisterNearbyMediaDevicesProvider(INearbyMediaDevicesProvider iNearbyMediaDevicesProvider) {
        this.mHandler.obtainMessage(4390912, iNearbyMediaDevicesProvider).sendToTarget();
    }

    public final void updateMediaTapToTransferReceiverDisplay(int i, MediaRoute2Info mediaRoute2Info, Icon icon, CharSequence charSequence) {
        SomeArgs obtain = SomeArgs.obtain();
        obtain.arg1 = Integer.valueOf(i);
        obtain.arg2 = mediaRoute2Info;
        obtain.arg3 = icon;
        obtain.arg4 = charSequence;
        this.mHandler.obtainMessage(4259840, obtain).sendToTarget();
    }

    public final void updateMediaTapToTransferSenderDisplay(int i, MediaRoute2Info mediaRoute2Info, IUndoMediaTransferCallback iUndoMediaTransferCallback) {
        SomeArgs obtain = SomeArgs.obtain();
        obtain.arg1 = Integer.valueOf(i);
        obtain.arg2 = mediaRoute2Info;
        obtain.arg3 = iUndoMediaTransferCallback;
        this.mHandler.obtainMessage(QuickStepContract.SYSUI_STATE_BACK_DISABLED, obtain).sendToTarget();
    }

    public CommandQueue(Context context, DisplayTracker displayTracker, ProtoTracer protoTracer, CommandRegistry commandRegistry, DumpHandler dumpHandler) {
        this.mLock = new Object();
        this.mCallbacks = new ArrayList();
        H h = new H(this, Looper.getMainLooper(), 0);
        this.mHandler = h;
        SparseArray sparseArray = new SparseArray();
        this.mDisplayDisabled = sparseArray;
        this.mLastUpdatedImeDisplayId = -1;
        this.mDisplayTracker = displayTracker;
        this.mProtoTracer = protoTracer;
        this.mRegistry = commandRegistry;
        this.mDumpHandler = dumpHandler;
        ((DisplayTrackerImpl) displayTracker).addDisplayChangeCallback(new DisplayTracker.Callback() { // from class: com.android.systemui.statusbar.CommandQueue.1
            @Override // com.android.systemui.settings.DisplayTracker.Callback
            public final void onDisplayRemoved(int i) {
                synchronized (CommandQueue.this.mLock) {
                    CommandQueue.this.mDisplayDisabled.remove(i);
                }
                for (int size = CommandQueue.this.mCallbacks.size() - 1; size >= 0; size--) {
                    ((Callbacks) CommandQueue.this.mCallbacks.get(size)).onDisplayRemoved(i);
                }
            }
        }, new HandlerExecutor(h));
        displayTracker.getClass();
        sparseArray.put(0, new Pair(0, 0));
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Callbacks callbacks) {
        this.mCallbacks.add(callbacks);
        for (int i = 0; i < this.mDisplayDisabled.size(); i++) {
            int keyAt = this.mDisplayDisabled.keyAt(i);
            callbacks.disable(keyAt, ((Integer) getDisabled(keyAt).first).intValue(), ((Integer) getDisabled(keyAt).second).intValue(), false);
        }
    }

    public final void appTransitionStarting(int i, long j, long j2, boolean z) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = z ? 1 : 0;
            obtain.arg1 = Long.valueOf(j);
            obtain.arg2 = Long.valueOf(j2);
            this.mHandler.obtainMessage(1376256, obtain).sendToTarget();
        }
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Callbacks callbacks) {
        this.mCallbacks.remove(callbacks);
    }

    public final void animateCollapsePanels(int i, boolean z) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(262144);
            this.mHandler.obtainMessage(262144, i, z ? 1 : 0).sendToTarget();
        }
    }

    public final void disable(int i, int i2, int i3) {
        disable(i, i2, i3, true);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callbacks {
        default void addQsTile(ComponentName componentName) {
        }

        default void animateExpandSettingsPanel(String str) {
        }

        default void appTransitionCancelled(int i) {
        }

        default void appTransitionFinished(int i) {
        }

        default void cancelRequestAddTile(String str) {
        }

        default void clickTile(ComponentName componentName) {
        }

        default void dismissInattentiveSleepWarning(boolean z) {
        }

        default void enterStageSplitFromRunningApp(boolean z) {
        }

        default void handleShowGlobalActionsMenu(int i) {
        }

        default void handleSystemKey(KeyEvent keyEvent) {
        }

        default void hideAuthenticationDialog(long j) {
        }

        default void notifyRequestedGameToolsWin(boolean z) {
        }

        default void onBiometricAuthenticated(int i) {
        }

        default void onCameraLaunchGestureDetected(int i) {
        }

        default void onDisplayReady(int i) {
        }

        default void onDisplayRemoved(int i) {
        }

        default void onFlashlightKeyPressed(int i) {
        }

        default void onRecentsAnimationStateChanged(boolean z) {
        }

        default void onTracingStateChanged(boolean z) {
        }

        default void registerNearbyMediaDevicesProvider(INearbyMediaDevicesProvider iNearbyMediaDevicesProvider) {
        }

        default void remQsTile(ComponentName componentName) {
        }

        default void removeIcon(String str) {
        }

        default void requestTileServiceListeningState(ComponentName componentName) {
        }

        default void requestWindowMagnificationConnection(boolean z) {
        }

        default void sendThreeFingerGestureKeyEvent(KeyEvent keyEvent) {
        }

        default void setBiometricContextListener(IBiometricContextListener iBiometricContextListener) {
        }

        default void setTopAppHidesStatusBar(boolean z) {
        }

        default void setUdfpsRefreshRateCallback(IUdfpsRefreshRateRequestCallback iUdfpsRefreshRateRequestCallback) {
        }

        default void showMediaOutputSwitcher(String str) {
        }

        default void showPinningEnterExitToast(boolean z) {
        }

        default void showRearDisplayDialog(int i) {
        }

        default void showRecentApps(boolean z) {
        }

        default void showScreenPinningRequest(int i) {
        }

        default void showWirelessChargingAnimation(int i) {
        }

        default void startAssist(Bundle bundle) {
        }

        default void suppressAmbientDisplay(boolean z) {
        }

        default void toggleKeyboardShortcutsMenu(int i) {
        }

        default void unregisterNearbyMediaDevicesProvider(INearbyMediaDevicesProvider iNearbyMediaDevicesProvider) {
        }

        default void animateExpandNotificationsPanel() {
        }

        default void cancelPreloadRecentApps() {
        }

        default void dismissKeyboardShortcutsMenu() {
        }

        default void goToFullscreenFromSplit() {
        }

        default void onEmergencyActionLaunchGestureDetected() {
        }

        default void preloadRecentApps() {
        }

        default void resetScheduleAutoHide() {
        }

        default void showAssistDisclosure() {
        }

        default void showInattentiveSleepWarning() {
        }

        default void showPictureInPictureMenu() {
        }

        default void showPinningEscapeToast() {
        }

        default void togglePanel() {
        }

        default void toggleRecentApps() {
        }

        default void toggleSplitScreen() {
        }

        default void toggleTaskbar() {
        }

        default void abortTransient(int i, int i2) {
        }

        default void animateCollapsePanels(int i, boolean z) {
        }

        default void appTransitionPending(int i, boolean z) {
        }

        default void handleShowShutdownUi(String str, boolean z) {
        }

        default void hideRecentApps(boolean z, boolean z2) {
        }

        default void hideToast(String str, IBinder iBinder) {
        }

        default void notifyRequestedSystemKey(boolean z, boolean z2) {
        }

        default void onBiometricHelp(int i, String str) {
        }

        default void onRotationProposal(int i, boolean z) {
        }

        default void setBlueLightFilter(boolean z, int i) {
        }

        default void setIcon(String str, StatusBarIcon statusBarIcon) {
        }

        default void setNavigationBarLumaSamplingEnabled(int i, boolean z) {
        }

        default void startSearcleByHomeKey(Boolean bool, Boolean bool2) {
        }

        default void notifySamsungPayInfo(int i, boolean z, Rect rect) {
        }

        default void onBiometricError(int i, int i2, int i3) {
        }

        default void setWindowState(int i, int i2, int i3) {
        }

        default void showTransient(int i, int i2, boolean z) {
        }

        default void updateMediaTapToTransferSenderDisplay(int i, MediaRoute2Info mediaRoute2Info, IUndoMediaTransferCallback iUndoMediaTransferCallback) {
        }

        default void appTransitionStarting(int i, long j, long j2, boolean z) {
        }

        default void disable(int i, int i2, int i3, boolean z) {
        }

        default void setNavigationBarShortcut(String str, RemoteViews remoteViews, int i, int i2) {
        }

        default void updateMediaTapToTransferReceiverDisplay(int i, MediaRoute2Info mediaRoute2Info, Icon icon, CharSequence charSequence) {
        }

        default void requestAddTile(ComponentName componentName, CharSequence charSequence, CharSequence charSequence2, Icon icon, IAddTileResultCallback iAddTileResultCallback) {
        }

        default void setImeWindowStatus(int i, IBinder iBinder, int i2, int i3, boolean z) {
        }

        default void showAuthenticationDialog(PromptInfo promptInfo, IBiometricSysuiReceiver iBiometricSysuiReceiver, int[] iArr, boolean z, boolean z2, int i, long j, String str, long j2) {
        }

        default void onSystemBarAttributesChanged(int i, int i2, AppearanceRegion[] appearanceRegionArr, boolean z, int i3, int i4, String str, LetterboxDetails[] letterboxDetailsArr) {
        }

        default void showToast(int i, String str, IBinder iBinder, CharSequence charSequence, IBinder iBinder2, int i2, ITransientNotificationCallback iTransientNotificationCallback, int i3) {
        }
    }
}
