package com.android.wm.shell.draganddrop;

import android.app.ActivityTaskManager;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.HardwareRenderer;
import android.graphics.Rect;
import android.os.Handler;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Slog;
import android.util.SparseArray;
import android.view.HapticFeedbackConstants;
import android.view.LayoutInflater;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.android.internal.logging.UiEventLogger;
import com.android.launcher3.icons.IconProvider;
import com.android.systemui.R;
import com.android.wm.shell.bubbles.BubbleController$$ExternalSyntheticLambda18;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.DnDSnackBarController;
import com.android.wm.shell.common.DnDSnackBarWindow;
import com.android.wm.shell.common.ExternalInterfaceBinder;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.RemoteCallable;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.draganddrop.DragAndDropController;
import com.android.wm.shell.draganddrop.DragAndDropPolicy;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import com.samsung.android.multiwindow.IDragAndDropControllerProxy;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DragAndDropController implements RemoteCallable, DisplayController.OnDisplaysChangedListener, View.OnDragListener, ComponentCallbacks2 {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context mContext;
    public final DisplayController mDisplayController;
    public final DragAndDropEventLogger mLogger;
    public final ShellExecutor mMainExecutor;
    public final ShellCommandHandler mShellCommandHandler;
    public final ShellController mShellController;
    public SplitScreenController mSplitScreen;
    public final ArrayList mListeners = new ArrayList();
    public final SparseArray mDisplayDropTargets = new SparseArray();
    public final SurfaceControl.Transaction mTransaction = new SurfaceControl.Transaction();
    public final AnonymousClass1 mDismissReceiver = new BroadcastReceiver() { // from class: com.android.wm.shell.draganddrop.DragAndDropController.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (ShellProtoLogCache.WM_SHELL_DRAG_AND_DROP_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_DRAG_AND_DROP, -517253288, 0, "Receive %s", String.valueOf(intent.getAction()));
            }
            DragAndDropController dragAndDropController = DragAndDropController.this;
            int size = dragAndDropController.mDisplayDropTargets.size();
            while (true) {
                size--;
                if (size >= 0) {
                    PerDisplay perDisplay = (PerDisplay) dragAndDropController.mDisplayDropTargets.valueAt(size);
                    Handler handler = perDisplay.rootView.getHandler();
                    if (handler == null) {
                        Slog.w("DragAndDropController", "Couldn't make dropTarget invisible since handler isn't existed.");
                    } else {
                        handler.post(new DragAndDropController$$ExternalSyntheticLambda1(dragAndDropController, perDisplay, 2));
                    }
                } else {
                    return;
                }
            }
        }
    };
    public final Rect mTmpRect = new Rect();
    public final AnonymousClass2 mProxy = new AnonymousClass2();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.draganddrop.DragAndDropController$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 extends IDragAndDropControllerProxy.Stub {
        public AnonymousClass2() {
        }

        public final void show(final int i) {
            PerDisplay perDisplay = (PerDisplay) DragAndDropController.this.mDisplayDropTargets.get(i);
            if (perDisplay == null) {
                int i2 = DragAndDropController.$r8$clinit;
                Slog.w("DragAndDropController", "Couldn't show dropTarget since wrong displayId #" + i);
                return;
            }
            Handler handler = perDisplay.rootView.getHandler();
            if (handler == null) {
                int i3 = DragAndDropController.$r8$clinit;
                Slog.w("DragAndDropController", "Couldn't show dropTarget since handler isn't existed.");
            } else {
                handler.post(new Runnable() { // from class: com.android.wm.shell.draganddrop.DragAndDropController$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DragAndDropController.AnonymousClass2 anonymousClass2 = DragAndDropController.AnonymousClass2.this;
                        int i4 = i;
                        DragAndDropController.PerDisplay perDisplay2 = (DragAndDropController.PerDisplay) DragAndDropController.this.mDisplayDropTargets.get(i4);
                        if (perDisplay2 == null) {
                            int i5 = DragAndDropController.$r8$clinit;
                            Slog.w("DragAndDropController", "Couldn't show dropTarget since display #" + i4 + " was removed");
                            return;
                        }
                        if (!perDisplay2.isHandlingDrag) {
                            int i6 = DragAndDropController.$r8$clinit;
                            Slog.w("DragAndDropController", "DropTarget not handling for display Id #" + i4);
                            return;
                        }
                        perDisplay2.hideRequested = false;
                        DragAndDropController.this.getClass();
                        DragAndDropController.setDropTargetWindowVisibility(perDisplay2, 0);
                        DropTargetLayout dropTargetLayout = (DropTargetLayout) perDisplay2.dragLayout;
                        dropTargetLayout.getClass();
                        dropTargetLayout.performHapticFeedback(HapticFeedbackConstants.semGetVibrationIndex(41));
                    }
                });
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class IDragAndDropImpl extends IDragAndDrop$Stub implements ExternalInterfaceBinder {
        public DragAndDropController mController;

        public IDragAndDropImpl(DragAndDropController dragAndDropController) {
            this.mController = dragAndDropController;
        }

        @Override // com.android.wm.shell.common.ExternalInterfaceBinder
        public final void invalidate() {
            this.mController = null;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PerDisplay implements HardwareRenderer.FrameDrawingCallback {
        public int activeDragCount;
        public final Context context;
        public final int displayId;
        public final DnDSnackBarController dndSnackBarController;
        public DragAndDropClientRecord dragAndDropClientRecord;
        public final IDragLayout dragLayout;
        public IDropTargetUiController dropTargetUiController;
        public final ExecutableAppHolder executableAppHolder;
        public boolean hideRequested;
        public boolean isHandlingDrag;
        public boolean mHasDrawn;
        public final Rect mHiddenDropTargetArea;
        public final FrameLayout rootView;
        public final SmartTipController smartTipController;
        public final VisibleTasks visibleTasks;
        public int windowVisibility;
        public final WindowManager wm;

        public PerDisplay(int i, Context context, WindowManager windowManager, FrameLayout frameLayout, IDragLayout iDragLayout) {
            this(i, context, windowManager, frameLayout, iDragLayout, new SmartTipController(context), new DnDSnackBarController(context), new ExecutableAppHolder(context));
        }

        public final void onFrameDraw(long j) {
            this.mHasDrawn = true;
        }

        public PerDisplay(int i, Context context, WindowManager windowManager, FrameLayout frameLayout, IDragLayout iDragLayout, SmartTipController smartTipController, DnDSnackBarController dnDSnackBarController, ExecutableAppHolder executableAppHolder) {
            this.mHiddenDropTargetArea = new Rect();
            this.displayId = i;
            this.context = context;
            this.wm = windowManager;
            this.rootView = frameLayout;
            this.dragLayout = iDragLayout;
            this.smartTipController = smartTipController;
            this.dndSnackBarController = dnDSnackBarController;
            this.executableAppHolder = executableAppHolder;
            if (executableAppHolder != null) {
                synchronized (executableAppHolder.mCallbacks) {
                    if (!((ArrayList) executableAppHolder.mCallbacks).contains(iDragLayout)) {
                        ((ArrayList) executableAppHolder.mCallbacks).add(iDragLayout);
                    }
                }
                this.visibleTasks = new VisibleTasks(i);
            } else {
                this.visibleTasks = null;
            }
            this.windowVisibility = frameLayout.getVisibility();
        }
    }

    /* JADX WARN: Type inference failed for: r7v4, types: [com.android.wm.shell.draganddrop.DragAndDropController$1] */
    public DragAndDropController(Context context, ShellInit shellInit, ShellController shellController, ShellCommandHandler shellCommandHandler, DisplayController displayController, UiEventLogger uiEventLogger, IconProvider iconProvider, ShellExecutor shellExecutor) {
        this.mContext = context;
        this.mShellController = shellController;
        this.mShellCommandHandler = shellCommandHandler;
        this.mDisplayController = displayController;
        this.mLogger = new DragAndDropEventLogger(uiEventLogger);
        this.mMainExecutor = shellExecutor;
        shellInit.addInitCallback(new DragAndDropController$$ExternalSyntheticLambda0(this, 0), this);
    }

    public static void clearState(PerDisplay perDisplay) {
        Slog.w("DragAndDropController", "clearState d=" + perDisplay.displayId);
        perDisplay.dropTargetUiController = null;
        perDisplay.isHandlingDrag = false;
        perDisplay.activeDragCount = 0;
        ExecutableAppHolder executableAppHolder = perDisplay.executableAppHolder;
        if (executableAppHolder != null) {
            executableAppHolder.mExecutableApp = null;
            ((HashMap) executableAppHolder.mExecutableAppMap).clear();
            executableAppHolder.mResult = null;
            executableAppHolder.mIsMimeType = false;
        }
        DragAndDropClientRecord dragAndDropClientRecord = perDisplay.dragAndDropClientRecord;
        if (dragAndDropClientRecord != null) {
            try {
                dragAndDropClientRecord.mClient.onDisconnected();
            } catch (RemoteException unused) {
                Slog.d("DragAndDropClient", "Failed to disconnect.");
            }
            perDisplay.dragAndDropClientRecord = null;
            perDisplay.hideRequested = false;
        }
    }

    public static void setDropTargetWindowVisibility(PerDisplay perDisplay, int i) {
        if (perDisplay.hideRequested && i == 0) {
            if (ShellProtoLogCache.WM_SHELL_DRAG_AND_DROP_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_DRAG_AND_DROP, -1432766569, 5, "Do not update drop target window visibility: displayId=%d visibility=%d", Long.valueOf(perDisplay.displayId), Long.valueOf(i));
                return;
            }
            return;
        }
        if (perDisplay.windowVisibility == i) {
            if (ShellProtoLogCache.WM_SHELL_DRAG_AND_DROP_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_DRAG_AND_DROP, -47008999, 0, "Do not update drop target window visibility: window is already set to %s.", String.valueOf(i));
                return;
            }
            return;
        }
        if (ShellProtoLogCache.WM_SHELL_DRAG_AND_DROP_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_DRAG_AND_DROP, 1184615936, 5, "Set drop target window visibility: displayId=%d visibility=%d", Long.valueOf(perDisplay.displayId), Long.valueOf(i));
        }
        perDisplay.rootView.setVisibility(i);
        if (i == 0) {
            perDisplay.rootView.requestApplyInsets();
            if (!perDisplay.mHasDrawn && perDisplay.rootView.getViewRootImpl() != null) {
                perDisplay.rootView.getViewRootImpl().registerRtFrameCallback(perDisplay);
            }
        } else {
            perDisplay.mHasDrawn = false;
        }
        perDisplay.windowVisibility = i;
    }

    public void addDisplayDropTarget(int i, Context context, WindowManager windowManager, FrameLayout frameLayout, IDragLayout iDragLayout) {
        this.mDisplayDropTargets.put(i, new PerDisplay(i, context, windowManager, frameLayout, iDragLayout));
    }

    public boolean deviceSupportsSplitScreenMultiWindow() {
        return ActivityTaskManager.deviceSupportsMultiWindow(this.mContext);
    }

    @Override // com.android.wm.shell.common.RemoteCallable
    public final Context getContext() {
        return this.mContext;
    }

    @Override // com.android.wm.shell.common.RemoteCallable
    public final ShellExecutor getRemoteCallExecutor() {
        return this.mMainExecutor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0124, code lost:
    
        if (r0 != false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean handleDrop(android.view.DragEvent r18, com.android.wm.shell.draganddrop.DragAndDropController.PerDisplay r19) {
        /*
            Method dump skipped, instructions count: 539
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.draganddrop.DragAndDropController.handleDrop(android.view.DragEvent, com.android.wm.shell.draganddrop.DragAndDropController$PerDisplay):boolean");
    }

    public boolean isUserSetup() {
        boolean z;
        boolean z2;
        ContentResolver contentResolver = this.mContext.getContentResolver();
        if (Settings.Global.getInt(contentResolver, "device_provisioned", 0) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (Settings.Secure.getIntForUser(contentResolver, "user_setup_complete", 0, -2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z || !z2) {
            return false;
        }
        return true;
    }

    public final void notifyDragStarted() {
        for (int i = 0; i < this.mListeners.size(); i++) {
            ((BubbleController$$ExternalSyntheticLambda18) this.mListeners.get(i)).f$0.collapseStack();
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        ((HandlerExecutor) this.mMainExecutor).execute(new DragAndDropController$$ExternalSyntheticLambda1(this, configuration, 3));
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayAdded(int i) {
        if (ShellProtoLogCache.WM_SHELL_DRAG_AND_DROP_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_DRAG_AND_DROP, -1006733970, 1, "Display added: %d", Long.valueOf(i));
        }
        if (i != 0) {
            return;
        }
        Context createWindowContext = this.mDisplayController.getDisplayContext(i).createWindowContext(2016, null);
        WindowManager windowManager = (WindowManager) createWindowContext.getSystemService(WindowManager.class);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2016, 16777224, -3);
        layoutParams.privateFlags |= -2147483568;
        layoutParams.layoutInDisplayCutoutMode = 3;
        layoutParams.setFitInsetsTypes(0);
        layoutParams.setTitle("ShellDropTarget");
        layoutParams.flags |= 512;
        layoutParams.multiwindowFlags |= 16;
        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(createWindowContext).inflate(R.layout.global_drop_target, (ViewGroup) null);
        frameLayout.setOnDragListener(this);
        frameLayout.setVisibility(4);
        DropTargetLayout dropTargetLayout = new DropTargetLayout(createWindowContext, this.mSplitScreen, this.mTransaction);
        frameLayout.addView(dropTargetLayout, new FrameLayout.LayoutParams(-1, -1));
        try {
            windowManager.addView(frameLayout, layoutParams);
            addDisplayDropTarget(i, createWindowContext, windowManager, frameLayout, dropTargetLayout);
            createWindowContext.registerComponentCallbacks(this);
        } catch (WindowManager.InvalidDisplayException unused) {
            Slog.w("DragAndDropController", "Unable to add view for display id: " + i);
        }
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayConfigurationChanged(int i, Configuration configuration) {
        if (ShellProtoLogCache.WM_SHELL_DRAG_AND_DROP_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_DRAG_AND_DROP, 2057038970, 1, "Display changed: %d", Long.valueOf(i));
        }
        PerDisplay perDisplay = (PerDisplay) this.mDisplayDropTargets.get(i);
        if (perDisplay == null) {
            return;
        }
        perDisplay.rootView.requestApplyInsets();
        DnDSnackBarController dnDSnackBarController = perDisplay.dndSnackBarController;
        if (dnDSnackBarController != null) {
            DnDSnackBarWindow dnDSnackBarWindow = dnDSnackBarController.mView;
            if (dnDSnackBarWindow != null && dnDSnackBarWindow.isAttachedToWindow()) {
                dnDSnackBarController.mView.hide();
            }
            dnDSnackBarController.mView = null;
        }
        DropTargetLayout dropTargetLayout = (DropTargetLayout) perDisplay.dragLayout;
        if (dropTargetLayout.mIsShowing) {
            DisplayLayout displayLayout = this.mDisplayController.getDisplayLayout(i);
            DragAndDropPolicy.DragSession dragSession = dropTargetLayout.mPolicy.mSession;
            if (dragSession != null) {
                dragSession.displayLayout = displayLayout;
            }
        }
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayRemoved(int i) {
        if (ShellProtoLogCache.WM_SHELL_DRAG_AND_DROP_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_DRAG_AND_DROP, -1382704050, 1, "Display removed: %d", Long.valueOf(i));
        }
        PerDisplay perDisplay = (PerDisplay) this.mDisplayDropTargets.get(i);
        if (perDisplay == null) {
            return;
        }
        perDisplay.context.unregisterComponentCallbacks(this);
        perDisplay.wm.removeViewImmediate(perDisplay.rootView);
        this.mDisplayDropTargets.remove(i);
        DnDSnackBarController dnDSnackBarController = perDisplay.dndSnackBarController;
        if (dnDSnackBarController != null) {
            DnDSnackBarWindow dnDSnackBarWindow = dnDSnackBarController.mView;
            if (dnDSnackBarWindow != null && dnDSnackBarWindow.isAttachedToWindow()) {
                dnDSnackBarController.mView.hide();
            }
            dnDSnackBarController.mView = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0228  */
    @Override // android.view.View.OnDragListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onDrag(android.view.View r14, android.view.DragEvent r15) {
        /*
            Method dump skipped, instructions count: 842
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.draganddrop.DragAndDropController.onDrag(android.view.View, android.view.DragEvent):boolean");
    }

    public boolean supportsMultiWindow() {
        return ActivityTaskManager.supportsMultiWindow(this.mContext);
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }
}
