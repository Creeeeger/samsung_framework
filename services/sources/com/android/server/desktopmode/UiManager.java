package com.android.server.desktopmode;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.IndentingPrintWriter;
import com.android.server.ServiceThread;
import com.android.server.desktopmode.StateManager;
import com.android.server.desktopmode.UiManager;
import com.samsung.android.desktopmode.DesktopModeFeature;
import com.samsung.android.desktopmode.DesktopModeUiConstants;
import com.samsung.android.desktopmode.IDesktopModeUiService;
import com.samsung.android.desktopmode.IDesktopModeUiServiceCallback;
import java.util.NoSuchElementException;
import java.util.Objects;

/* loaded from: classes2.dex */
public class UiManager {
    public static final String TAG = "[DMS]" + UiManager.class.getSimpleName();
    public boolean mBound;
    public boolean mChangingStandaloneMode;
    public int mConnectionBackoffAttempts;
    public final Context mContext;
    public int mCurrentUserId;
    public final IBinder.DeathRecipient mDeathRecipient;
    public final UiCommandHandler mHandler;
    public final PendingUiCommands mPendingUiCommands;
    public IDesktopModeUiService mService;
    public final StateManager.StateListener mStateListener;
    public final IStateManager mStateManager;
    public final Runnable mBindServiceRunnable = new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            UiManager.this.bindService();
        }
    };
    public final Runnable mUnbindServiceRunnable = new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            UiManager.this.unbindServiceIfHasNoUiElement();
        }
    };
    public final Runnable mDeferredConnectionCallback = new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda4
        @Override // java.lang.Runnable
        public final void run() {
            UiManager.this.lambda$new$0();
        }
    };
    public final ServiceConnection mServiceConnection = new AnonymousClass1();

    /* loaded from: classes2.dex */
    public abstract class InternalUiCallback {
        public void onAnimationComplete() {
        }

        public void onClickButtonNegative() {
        }

        public void onClickButtonPositive() {
        }

        public void onDismiss() {
        }

        public void onShow() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        Log.w(TAG, "Binder supposed established connection but actual connection to service timed out, trying again");
        retryConnectionWithBackoff();
    }

    /* renamed from: com.android.server.desktopmode.UiManager$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements ServiceConnection {
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        public AnonymousClass1() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
            Utils.runOnHandlerThread(UiManager.this.mHandler, new Runnable() { // from class: com.android.server.desktopmode.UiManager$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    UiManager.AnonymousClass1.this.lambda$onServiceConnected$0(iBinder);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onServiceConnected$0(IBinder iBinder) {
            if (UiManager.this.mService != null) {
                return;
            }
            UiManager.this.mConnectionBackoffAttempts = 0;
            UiManager.this.mHandler.removeCallbacks(UiManager.this.mDeferredConnectionCallback);
            UiManager.this.mHandler.removeCallbacks(UiManager.this.mBindServiceRunnable);
            try {
                iBinder.linkToDeath(UiManager.this.mDeathRecipient, 0);
                UiManager.this.mService = IDesktopModeUiService.Stub.asInterface(iBinder);
                if (DesktopModeFeature.DEBUG) {
                    Log.d(UiManager.TAG, "onServiceConnected(), mService=" + UiManager.this.mService);
                }
                UiManager.this.mPendingUiCommands.flushCommands();
            } catch (RemoteException e) {
                Log.e(UiManager.TAG, "Lost connection to the service", e);
                UiManager.this.unbindService();
                UiManager.this.retryConnectionWithBackoff();
            }
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(final ComponentName componentName) {
            Utils.runOnHandlerThread(UiManager.this.mHandler, new Runnable() { // from class: com.android.server.desktopmode.UiManager$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    UiManager.AnonymousClass1.this.lambda$onNullBinding$1(componentName);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNullBinding$1(ComponentName componentName) {
            Log.w(UiManager.TAG, "Null binding of '" + componentName + "', try reconnecting");
            UiManager.this.retryConnectionWithBackoff();
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(final ComponentName componentName) {
            Utils.runOnHandlerThread(UiManager.this.mHandler, new Runnable() { // from class: com.android.server.desktopmode.UiManager$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    UiManager.AnonymousClass1.this.lambda$onBindingDied$2(componentName);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindingDied$2(ComponentName componentName) {
            Log.w(UiManager.TAG, "Binding died of '" + componentName + "', try reconnecting");
            UiManager.this.retryConnectionWithBackoff();
        }
    }

    public UiManager(Context context, ServiceThread serviceThread, IStateManager iStateManager) {
        StateManager.StateListener stateListener = new StateManager.StateListener() { // from class: com.android.server.desktopmode.UiManager.2
            @Override // com.android.server.desktopmode.StateManager.StateListener
            public void onUserChanged(State state) {
                UiManager.this.setCurrentUserId(state.getCurrentUserId());
            }
        };
        this.mStateListener = stateListener;
        this.mConnectionBackoffAttempts = 0;
        this.mChangingStandaloneMode = false;
        this.mCurrentUserId = -10000;
        this.mContext = context;
        this.mPendingUiCommands = new PendingUiCommands();
        this.mHandler = new UiCommandHandler(serviceThread.getLooper());
        this.mStateManager = iStateManager;
        iStateManager.registerListener(stateListener);
        this.mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda5
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                UiManager.this.lambda$new$1();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        Log.w(TAG, "Binder died, reconnecting");
        Utils.runOnHandlerThread(this.mHandler, this.mBindServiceRunnable);
    }

    public void setCurrentUserId(final int i) {
        Utils.runOnHandlerThread(this.mHandler, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$setCurrentUserId$2(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCurrentUserId$2(int i) {
        if (this.mCurrentUserId != i) {
            this.mCurrentUserId = i;
            this.mPendingUiCommands.clear();
            if (this.mBound) {
                bindService();
            }
        }
    }

    public boolean bindUiServiceWithPendingCommand(Runnable runnable) {
        return bindUiServiceWithPendingCommand(900, -1, -1, runnable);
    }

    public final boolean bindUiServiceWithPendingCommand(int i, int i2, int i3, Runnable runnable) {
        if (this.mService != null) {
            return true;
        }
        this.mPendingUiCommands.queue(i, i2, i3, runnable);
        bindService();
        return false;
    }

    public final void bindService() {
        if (this.mHandler.hasCallbacks(this.mDeferredConnectionCallback)) {
            return;
        }
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "bindService(), mService=" + this.mService);
        }
        unbindService();
        this.mHandler.removeCallbacks(this.mBindServiceRunnable);
        removeUnbindServiceRunnable();
        try {
            boolean bindServiceAsUser = this.mContext.bindServiceAsUser(new Intent().setClassName("com.sec.android.desktopmode.uiservice", "com.sec.android.desktopmode.uiservice.DesktopModeUiService"), this.mServiceConnection, 1, UserHandle.of(this.mCurrentUserId));
            this.mBound = bindServiceAsUser;
            if (bindServiceAsUser) {
                this.mHandler.postDelayed(this.mDeferredConnectionCallback, 5000L);
            } else {
                retryConnectionWithBackoff();
            }
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "Failed to bind service", e);
        }
    }

    public final void retryConnectionWithBackoff() {
        if (this.mHandler.hasCallbacks(this.mBindServiceRunnable)) {
            return;
        }
        long min = Math.min(Math.scalb(1000.0f, this.mConnectionBackoffAttempts), 600000.0f);
        this.mHandler.postDelayed(this.mBindServiceRunnable, min);
        this.mConnectionBackoffAttempts++;
        Log.w(TAG, "Failed to bind service on attempt " + this.mConnectionBackoffAttempts + " will try again in " + min + "ms");
    }

    public final void unbindService() {
        if (this.mBound || this.mService != null) {
            if (DesktopModeFeature.DEBUG) {
                Log.d(TAG, "unbindService(), mBound=" + this.mBound + ", mService=" + this.mService);
            }
            if (this.mBound) {
                this.mContext.unbindService(this.mServiceConnection);
                this.mBound = false;
            }
            IDesktopModeUiService iDesktopModeUiService = this.mService;
            if (iDesktopModeUiService != null) {
                try {
                    iDesktopModeUiService.asBinder().unlinkToDeath(this.mDeathRecipient, 0);
                } catch (NoSuchElementException e) {
                    Log.e(TAG, "Failed to unlink death recipient", e);
                }
                this.mService = null;
            }
        }
    }

    public void showDialog(int i, InternalUiCallback internalUiCallback) {
        showDialog(0, i, internalUiCallback);
    }

    public void showDialog(final int i, final int i2, final InternalUiCallback internalUiCallback) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "showDialog(), displayId=" + i + ", dialogType=" + DesktopModeUiConstants.typeToString(i2));
        }
        removeUnbindServiceRunnable();
        this.mHandler.schedule(i2, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$showDialog$3(i, i2, internalUiCallback);
            }
        });
    }

    /* renamed from: handleShowDialog, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void lambda$showDialogOnUiService$5(final int i, final int i2, final InternalUiCallback internalUiCallback) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "handleShowDialog(), displayId=" + i + ", dialogType=" + DesktopModeUiConstants.typeToString(i2));
        }
        Runnable runnable = new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$handleShowDialog$4(i, i2, internalUiCallback);
            }
        };
        if (bindUiServiceWithPendingCommand(900, i2, i, runnable)) {
            if (this.mChangingStandaloneMode) {
                this.mPendingUiCommands.queue(900, i2, i, runnable);
                Log.w(TAG, "showDialog() mChangingStandaloneMode!! displayId=" + i + ", dialogType=" + DesktopModeUiConstants.typeToString(i2));
                return;
            }
            IDesktopModeUiServiceCallback.Stub stub = null;
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 9:
                    break;
                case 3:
                    stub = new IDesktopModeUiServiceCallback.Stub() { // from class: com.android.server.desktopmode.UiManager.4
                        public void onAnimationComplete() {
                        }

                        public void onClickButtonNegative() {
                        }

                        public void onClickButtonPositive() {
                        }

                        public void onShow() {
                        }

                        public void onDismiss() {
                            UiManager.this.postUnbindServiceRunnable();
                        }
                    };
                    break;
                case 4:
                case 5:
                case 8:
                case 10:
                    stub = new IDesktopModeUiServiceCallback.Stub() { // from class: com.android.server.desktopmode.UiManager.3
                        public void onAnimationComplete() {
                        }

                        public void onClickButtonPositive() {
                            if (internalUiCallback != null) {
                                UiCommandHandler uiCommandHandler = UiManager.this.mHandler;
                                final InternalUiCallback internalUiCallback2 = internalUiCallback;
                                Objects.requireNonNull(internalUiCallback2);
                                uiCommandHandler.post(new Runnable() { // from class: com.android.server.desktopmode.UiManager$3$$ExternalSyntheticLambda0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        UiManager.InternalUiCallback.this.onClickButtonPositive();
                                    }
                                });
                            }
                        }

                        public void onClickButtonNegative() {
                            if (internalUiCallback != null) {
                                UiCommandHandler uiCommandHandler = UiManager.this.mHandler;
                                final InternalUiCallback internalUiCallback2 = internalUiCallback;
                                Objects.requireNonNull(internalUiCallback2);
                                uiCommandHandler.post(new Runnable() { // from class: com.android.server.desktopmode.UiManager$3$$ExternalSyntheticLambda3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        UiManager.InternalUiCallback.this.onClickButtonNegative();
                                    }
                                });
                            }
                        }

                        public void onShow() {
                            if (internalUiCallback != null) {
                                UiCommandHandler uiCommandHandler = UiManager.this.mHandler;
                                final InternalUiCallback internalUiCallback2 = internalUiCallback;
                                Objects.requireNonNull(internalUiCallback2);
                                uiCommandHandler.post(new Runnable() { // from class: com.android.server.desktopmode.UiManager$3$$ExternalSyntheticLambda1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        UiManager.InternalUiCallback.this.onShow();
                                    }
                                });
                            }
                        }

                        public void onDismiss() {
                            if (internalUiCallback != null) {
                                UiCommandHandler uiCommandHandler = UiManager.this.mHandler;
                                final InternalUiCallback internalUiCallback2 = internalUiCallback;
                                Objects.requireNonNull(internalUiCallback2);
                                uiCommandHandler.post(new Runnable() { // from class: com.android.server.desktopmode.UiManager$3$$ExternalSyntheticLambda2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        UiManager.InternalUiCallback.this.onDismiss();
                                    }
                                });
                            }
                            UiManager.this.postUnbindServiceRunnable();
                        }
                    };
                    break;
                case 6:
                default:
                    Log.e(TAG, "showDialog() wrong type value!! dialogType=" + DesktopModeUiConstants.typeToString(i2));
                    break;
            }
            showDialogOnUiService(i, i2, internalUiCallback, stub);
        }
    }

    public final void showDialogOnUiService(final int i, final int i2, final InternalUiCallback internalUiCallback, IDesktopModeUiServiceCallback.Stub stub) {
        IDesktopModeUiService iDesktopModeUiService = this.mService;
        if (iDesktopModeUiService != null) {
            try {
                iDesktopModeUiService.showDialog(i, i2, stub);
            } catch (RemoteException e) {
                handleRemoteException(e, true, 900, i2, i, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda21
                    @Override // java.lang.Runnable
                    public final void run() {
                        UiManager.this.lambda$showDialogOnUiService$5(i, i2, internalUiCallback);
                    }
                });
            }
        }
    }

    public void dismissDialog(int i) {
        dismissDialog(0, i);
    }

    public void dismissDialog(final int i, final int i2) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "dismissDialog(), displayId=" + i + ", type=" + DesktopModeUiConstants.typeToString(i2));
        }
        this.mHandler.schedule(i2, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$dismissDialog$6(i, i2);
            }
        });
    }

    /* renamed from: handleDismissDialog, reason: merged with bridge method [inline-methods] */
    public final void lambda$dismissDialog$6(int i, int i2) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "handleDismissDialog(), displayId=" + i + ", type=" + DesktopModeUiConstants.typeToString(i2));
        }
        IDesktopModeUiService iDesktopModeUiService = this.mService;
        if (iDesktopModeUiService != null) {
            try {
                iDesktopModeUiService.dismissDialog(i, i2);
            } catch (RemoteException e) {
                handleRemoteException(e);
            }
        }
        this.mPendingUiCommands.queue(901, i2, i, null);
        postUnbindServiceRunnable();
    }

    public void showOverlay(int i, int i2) {
        showOverlay(i, i2, null);
    }

    public void showOverlay(final int i, final int i2, final InternalUiCallback internalUiCallback) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "showOverlay(), where=" + DesktopModeUiConstants.whereToString(i) + ", type=" + DesktopModeUiConstants.typeToString(i2));
        }
        removeUnbindServiceRunnable();
        this.mHandler.schedule(i2, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$showOverlay$7(i, i2, internalUiCallback);
            }
        });
    }

    /* renamed from: handleShowOverlay, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void lambda$showOverlay$7(final int i, final int i2, final InternalUiCallback internalUiCallback) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "handleShowOverlay(), where=" + DesktopModeUiConstants.whereToString(i) + ", type=" + DesktopModeUiConstants.typeToString(i2));
        }
        Runnable runnable = new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$handleShowOverlay$8(i, i2, internalUiCallback);
            }
        };
        if (bindUiServiceWithPendingCommand(900, i2, i, runnable)) {
            try {
                this.mService.showOverlay(i, i2, internalUiCallback != null ? new IDesktopModeUiServiceCallback.Stub() { // from class: com.android.server.desktopmode.UiManager.5
                    public void onClickButtonNegative() {
                    }

                    public void onClickButtonPositive() {
                    }

                    public void onDismiss() {
                    }

                    public void onShow() {
                    }

                    public void onAnimationComplete() {
                        internalUiCallback.onAnimationComplete();
                    }
                } : null);
            } catch (RemoteException e) {
                handleRemoteException(e, true, 900, i2, -1, runnable);
            }
        }
    }

    public void dismissOverlay(final int i, final int i2) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "dismissOverlay(), where=" + DesktopModeUiConstants.whereToString(i) + ", type=" + DesktopModeUiConstants.typeToString(i2));
        }
        this.mHandler.schedule(i2, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$dismissOverlay$9(i, i2);
            }
        });
    }

    /* renamed from: handleDismissOverlay, reason: merged with bridge method [inline-methods] */
    public final void lambda$dismissOverlay$9(int i, int i2) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "handleDismissOverlay(), where=" + DesktopModeUiConstants.whereToString(i) + ", type=" + DesktopModeUiConstants.typeToString(i2));
        }
        IDesktopModeUiService iDesktopModeUiService = this.mService;
        if (iDesktopModeUiService != null) {
            try {
                iDesktopModeUiService.dismissOverlay(i, i2);
            } catch (RemoteException e) {
                handleRemoteException(e);
            }
        }
        this.mPendingUiCommands.queue(901, i2, i, null);
        postUnbindServiceRunnable();
    }

    public boolean hasOverlay(int i, int i2) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "hasOverlay(), where=" + DesktopModeUiConstants.whereToString(i) + ", type=" + DesktopModeUiConstants.typeToString(i2));
        }
        IDesktopModeUiService iDesktopModeUiService = this.mService;
        if (iDesktopModeUiService == null) {
            return false;
        }
        try {
            return iDesktopModeUiService.hasOverlay(i, i2);
        } catch (RemoteException e) {
            this.handleRemoteException(e);
            return false;
        }
    }

    public int getCurrentOverlayType(int i) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "getCurrentOverlayType(), where=" + DesktopModeUiConstants.whereToString(i));
        }
        IDesktopModeUiService iDesktopModeUiService = this.mService;
        if (iDesktopModeUiService == null) {
            return -1;
        }
        try {
            return iDesktopModeUiService.getCurrentOverlayType(i);
        } catch (RemoteException e) {
            this.handleRemoteException(e);
            return -1;
        }
    }

    public void showNotification(final int i) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "showNotification(), type=" + DesktopModeUiConstants.typeToString(i));
        }
        removeUnbindServiceRunnable();
        this.mHandler.schedule(i, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$showNotification$10(i);
            }
        });
    }

    /* renamed from: handleShowNotification, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void lambda$showNotification$10(final int i) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "handleShowNotification(), type=" + DesktopModeUiConstants.typeToString(i));
        }
        if (bindUiServiceWithPendingCommand(900, i, -1, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$handleShowNotification$11(i);
            }
        })) {
            if (this.mChangingStandaloneMode) {
                this.mPendingUiCommands.queue(900, i, -1, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda16
                    @Override // java.lang.Runnable
                    public final void run() {
                        UiManager.this.lambda$handleShowNotification$12(i);
                    }
                });
                Log.w(TAG, "handleShowNotification(), mChangingStandaloneMode!!type=" + DesktopModeUiConstants.typeToString(i));
                return;
            }
            try {
                this.mService.showNotification(i);
            } catch (RemoteException e) {
                handleRemoteException(e, true, 900, i, -1, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        UiManager.this.lambda$handleShowNotification$13(i);
                    }
                });
            }
        }
    }

    public void removeNotification(final int i) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "removeNotification(), type=" + DesktopModeUiConstants.typeToString(i));
        }
        removeUnbindServiceRunnable();
        this.mHandler.schedule(i, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$removeNotification$14(i);
            }
        });
    }

    /* renamed from: handleRemoveNotification, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void lambda$removeNotification$14(final int i) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "handleRemoveNotification(), type=" + DesktopModeUiConstants.typeToString(i));
        }
        if (bindUiServiceWithPendingCommand(901, i, -1, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$handleRemoveNotification$15(i);
            }
        })) {
            try {
                this.mService.removeNotification(i);
                postUnbindServiceRunnable();
            } catch (RemoteException e) {
                handleRemoteException(e, true, 901, i, -1, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda19
                    @Override // java.lang.Runnable
                    public final void run() {
                        UiManager.this.lambda$handleRemoveNotification$16(i);
                    }
                });
            }
        }
    }

    public void showNavBarIcon(final int i) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "showNavBarIcon(), type=" + DesktopModeUiConstants.typeToString(i));
        }
        removeUnbindServiceRunnable();
        this.mHandler.schedule(i, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$showNavBarIcon$17(i);
            }
        });
    }

    /* renamed from: handleNavBarIcon, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void lambda$showNavBarIcon$17(final int i) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "handleNavBarIcon(), type=" + DesktopModeUiConstants.typeToString(i));
        }
        if (bindUiServiceWithPendingCommand(900, i, -1, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$handleNavBarIcon$18(i);
            }
        })) {
            try {
                this.mService.showNavBarIcon(i);
            } catch (RemoteException e) {
                handleRemoteException(e, true, 900, i, -1, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda25
                    @Override // java.lang.Runnable
                    public final void run() {
                        UiManager.this.lambda$handleNavBarIcon$19(i);
                    }
                });
            }
        }
    }

    public void removeNavBarIcon(final int i) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "removeNavBarIcon(), type=" + DesktopModeUiConstants.typeToString(i));
        }
        removeUnbindServiceRunnable();
        this.mHandler.schedule(i, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$removeNavBarIcon$20(i);
            }
        });
    }

    /* renamed from: handleRemoveNavBarIcon, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void lambda$removeNavBarIcon$20(final int i) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "handleRemoveNavBarIcon(), type=" + DesktopModeUiConstants.typeToString(i));
        }
        if (bindUiServiceWithPendingCommand(901, i, -1, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$handleRemoveNavBarIcon$21(i);
            }
        })) {
            try {
                this.mService.removeNavBarIcon(i);
                postUnbindServiceRunnable();
            } catch (RemoteException e) {
                handleRemoteException(e, true, 901, i, -1, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda27
                    @Override // java.lang.Runnable
                    public final void run() {
                        UiManager.this.lambda$handleRemoveNavBarIcon$22(i);
                    }
                });
            }
        }
    }

    public void startActivity(final int i, final int i2, final InternalUiCallback internalUiCallback) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "startActivity(), displayId=" + i + ", type=" + i2);
        }
        removeUnbindServiceRunnable();
        this.mHandler.schedule(i2, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$startActivity$23(i, i2, internalUiCallback);
            }
        });
    }

    /* renamed from: handleStartActivity, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void lambda$startActivity$23(final int i, final int i2, final InternalUiCallback internalUiCallback) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "handleStartActivity(), displayId=" + i + ", type=" + i2);
        }
        Runnable runnable = new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$handleStartActivity$24(i, i2, internalUiCallback);
            }
        };
        if (bindUiServiceWithPendingCommand(900, i2, -1, runnable)) {
            try {
                this.mService.startActivity(i, i2, new IDesktopModeUiServiceCallback.Stub() { // from class: com.android.server.desktopmode.UiManager.6
                    public void onAnimationComplete() {
                    }

                    public void onClickButtonPositive() {
                        InternalUiCallback internalUiCallback2 = internalUiCallback;
                        if (internalUiCallback2 != null) {
                            internalUiCallback2.onClickButtonPositive();
                        }
                    }

                    public void onClickButtonNegative() {
                        InternalUiCallback internalUiCallback2 = internalUiCallback;
                        if (internalUiCallback2 != null) {
                            internalUiCallback2.onClickButtonNegative();
                        }
                    }

                    public void onShow() {
                        InternalUiCallback internalUiCallback2 = internalUiCallback;
                        if (internalUiCallback2 != null) {
                            internalUiCallback2.onShow();
                        }
                    }

                    public void onDismiss() {
                        InternalUiCallback internalUiCallback2 = internalUiCallback;
                        if (internalUiCallback2 != null) {
                            internalUiCallback2.onDismiss();
                        }
                    }
                });
            } catch (RemoteException e) {
                handleRemoteException(e, true, 900, i2, -1, runnable);
            }
        }
    }

    public void finishActivity(final int i) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "finishActivity(), type=" + DesktopModeUiConstants.typeToString(i));
        }
        this.mHandler.schedule(i, new Runnable() { // from class: com.android.server.desktopmode.UiManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                UiManager.this.lambda$finishActivity$25(i);
            }
        });
    }

    /* renamed from: handleFinishActivity, reason: merged with bridge method [inline-methods] */
    public final void lambda$finishActivity$25(int i) {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "handleFinishActivity(), type=" + DesktopModeUiConstants.typeToString(i));
        }
        IDesktopModeUiService iDesktopModeUiService = this.mService;
        if (iDesktopModeUiService != null) {
            try {
                iDesktopModeUiService.finishActivity(i);
            } catch (RemoteException e) {
                handleRemoteException(e);
            }
        }
        this.mPendingUiCommands.queue(901, i, -1, null);
        postUnbindServiceRunnable();
    }

    public final void removeUnbindServiceRunnable() {
        this.mHandler.removeCallbacks(this.mUnbindServiceRunnable);
    }

    public final void postUnbindServiceRunnable() {
        int i;
        if ((!this.mBound && this.mService == null) || (i = this.mStateManager.getState().getDesktopModeState().enabled) == 3 || i == 4 || i == 1) {
            return;
        }
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "postUnbindServiceRunnable()");
        }
        removeUnbindServiceRunnable();
        this.mHandler.postDelayed(this.mUnbindServiceRunnable, 3000L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0013, code lost:
    
        if (r4.mService.hasUiElement() != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void unbindServiceIfHasNoUiElement() {
        /*
            r4 = this;
            com.samsung.android.desktopmode.IDesktopModeUiService r0 = r4.mService
            r1 = 0
            if (r0 == 0) goto L1c
            com.android.server.desktopmode.PendingUiCommands r0 = r4.mPendingUiCommands     // Catch: android.os.RemoteException -> L18
            boolean r0 = r0.isEmpty()     // Catch: android.os.RemoteException -> L18
            if (r0 == 0) goto L15
            com.samsung.android.desktopmode.IDesktopModeUiService r0 = r4.mService     // Catch: android.os.RemoteException -> L18
            boolean r0 = r0.hasUiElement()     // Catch: android.os.RemoteException -> L18
            if (r0 == 0) goto L1c
        L15:
            r0 = 1
            r1 = r0
            goto L1c
        L18:
            r0 = move-exception
            r4.handleRemoteException(r0)
        L1c:
            boolean r0 = com.samsung.android.desktopmode.DesktopModeFeature.DEBUG
            if (r0 == 0) goto L37
            java.lang.String r0 = com.android.server.desktopmode.UiManager.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "unbindServiceIfHasNoUiElement(), hasElement="
            r2.append(r3)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            com.android.server.desktopmode.Log.d(r0, r2)
        L37:
            if (r1 != 0) goto L41
            com.android.server.desktopmode.PendingUiCommands r0 = r4.mPendingUiCommands
            r0.clear()
            r4.unbindService()
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.desktopmode.UiManager.unbindServiceIfHasNoUiElement():void");
    }

    public void setChangingStandaloneMode(boolean z) {
        if (this.mChangingStandaloneMode != z) {
            this.mChangingStandaloneMode = z;
            if (DesktopModeFeature.DEBUG) {
                Log.d(TAG, "setChangingStandaloneMode(), mChangingStandaloneMode=" + z);
            }
            if (z) {
                return;
            }
            this.mPendingUiCommands.flushCommands();
        }
    }

    public final void handleRemoteException(RemoteException remoteException) {
        handleRemoteException(remoteException, false, -1, -1, -1, null);
    }

    public final void handleRemoteException(RemoteException remoteException, boolean z, int i, int i2, int i3, Runnable runnable) {
        String str = TAG;
        Log.e(str, "handleRemoteException(), preserve=" + z, remoteException);
        if (!z || runnable == null) {
            return;
        }
        if (DesktopModeFeature.DEBUG) {
            Log.d(str, "handleRemoteException(), adding pending commands, type=" + DesktopModeUiConstants.typeToString(i2) + ", where=" + DesktopModeUiConstants.whereToString(i3));
        }
        this.mPendingUiCommands.queue(i, i2, i3, runnable);
    }

    public void dump(IndentingPrintWriter indentingPrintWriter) {
        indentingPrintWriter.println("Current " + UiManager.class.getSimpleName() + " state:");
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.println("external overlay=" + DesktopModeUiConstants.typeToString(getCurrentOverlayType(103)));
        indentingPrintWriter.println("internal overlay=" + DesktopModeUiConstants.typeToString(getCurrentOverlayType(102)));
        indentingPrintWriter.decreaseIndent();
    }

    /* loaded from: classes2.dex */
    public final class UiCommandHandler extends Handler {
        public final DockTaWarningDialogMessage mDockTaWarningDialogMessage;

        public static int getDelayedUiCommandMessageId(int i) {
            return i == 3 ? 1 : -1;
        }

        public UiCommandHandler(Looper looper) {
            super(looper);
            this.mDockTaWarningDialogMessage = new DockTaWarningDialogMessage();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (DesktopModeFeature.DEBUG) {
                Log.d(UiManager.TAG, "handleMessage(), msg=" + messageIdToString(message.what));
            }
            ((Runnable) message.obj).run();
        }

        public void schedule(int i, Runnable runnable) {
            int delayedUiCommandMessageId = getDelayedUiCommandMessageId(i);
            if (delayedUiCommandMessageId == -1) {
                post(runnable);
                return;
            }
            if (DesktopModeFeature.DEBUG) {
                Log.d(UiManager.TAG, "schedule(), type=" + DesktopModeUiConstants.typeToString(i) + ", " + messageIdToString(delayedUiCommandMessageId));
            }
            if (delayedUiCommandMessageId == 1) {
                this.mDockTaWarningDialogMessage.setCommand(i, runnable);
                runnable = this.mDockTaWarningDialogMessage;
            }
            removeMessages(delayedUiCommandMessageId);
            sendMessageDelayed(obtainMessage(delayedUiCommandMessageId, i, 0, runnable), 1000L);
        }

        public static String messageIdToString(int i) {
            if (i == 1) {
                return "MSG_DOCK_TA_WARNING_DIALOG";
            }
            return "Unknown=" + i;
        }
    }

    /* loaded from: classes2.dex */
    public class DockTaWarningDialogMessage implements Runnable {
        public Runnable mNotFastChargerDialogCommand;

        public DockTaWarningDialogMessage() {
            this.mNotFastChargerDialogCommand = null;
        }

        public void setCommand(int i, Runnable runnable) {
            if (i == 3) {
                this.mNotFastChargerDialogCommand = runnable;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.mNotFastChargerDialogCommand;
            if (runnable != null) {
                runnable.run();
            }
            this.mNotFastChargerDialogCommand = null;
        }
    }
}
