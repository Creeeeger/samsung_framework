package com.android.wm.shell.freeform;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.Settings;
import android.util.Log;
import android.view.IRotationWatcher;
import android.view.IWindowManager;
import android.view.Surface;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import com.android.keyguard.punchhole.VIDirector$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.wm.shell.freeform.FreeformContainerFolderView;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FreeformContainerManager {
    public static FreeformContainerManager sFreeformContainerManager;
    public Configuration mConfiguration;
    public final Context mContext;
    public final IntentFilter mFreeformContainerFilter;
    public final AnonymousClass2 mFreeformContainerReceiver;
    public final H mH;
    public int mRotation;
    public final AnonymousClass1 mRotationWatcher = new IRotationWatcher.Stub() { // from class: com.android.wm.shell.freeform.FreeformContainerManager.1
        public final void onRotationChanged(int i) {
            Log.i("FreeformContainer", "[Manager] onRotationChanged: " + Surface.rotationToString(i));
            H h = FreeformContainerManager.this.mH;
            h.sendMessage(h.obtainMessage(34, i, 0));
        }
    };
    public final HandlerThread mThread;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public final IWindowManager mIWindowManager;
        public boolean mIsBindingMinimizeContainerService;
        public boolean mIsBindingSmartPopupViewService;
        public final FreeformContainerItemController mItemController;
        public final FreeformContainerViewController mViewController;

        public /* synthetic */ H(FreeformContainerManager freeformContainerManager, Looper looper, int i) {
            this(looper);
        }

        public static String messageToString(int i) {
            switch (i) {
                case 11:
                    return "MINIMIZE_CONTAINER_SERVICE_BIND";
                case 12:
                    return "MINIMIZE_CONTAINER_SERVICE_UNBIND";
                case 13:
                    return "MINIMIZE_CONTAINER_ADD_ITEM";
                case 14:
                    return "MINIMIZE_CONTAINER_REMOVE_ITEM";
                case 15:
                    return "MINIMIZE_CONTAINER_ANIM_COMPLETED";
                case 16:
                    return "MINIMIZE_CONTAINER_MINIMIZE_TIMEOUT";
                case 17:
                    return "MINIMIZE_CONTAINER_REMOVE_ALL_ITEM";
                case 18:
                case 19:
                case 20:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 38:
                case 39:
                default:
                    return "UNKNOWN";
                case 21:
                    return "SMART_POPUP_VIEW_SERVICE_BIND";
                case 22:
                    return "SMART_POPUP_VIEW_SERVICE_UNBIND";
                case 23:
                    return "SMART_POPUP_VIEW_ADD_ITEM";
                case 24:
                    return "SMART_POPUP_VIEW_REMOVE_ITEM";
                case 30:
                    return "FREEFORM_CONTAINER_LAUNCH_ITEM";
                case 31:
                    return "FREEFORM_CONTAINER_LOAD_ICON_COMPLETED";
                case 32:
                    return "FREEFORM_CONTAINER_USER_SWITCH";
                case 33:
                    return "FREEFORM_CONTAINER_REBUILD_ALL";
                case 34:
                    return "FREEFORM_CONTAINER_ROTATION_CHANGED";
                case 35:
                    return "FREEFORM_CONTAINER_CLOSE_FULLSCREEN_MODE";
                case 36:
                    return "FREEFORM_CONTAINER_CONFIGURATION_CHANGED";
                case 37:
                    return "FREEFORM_CONTAINER_SET_POINTER_POSITION";
                case 40:
                    return "TASK_MOVE_STARTED";
                case 41:
                    return "TASK_MOVE_ENDED";
                case 42:
                    return "MINIMIZE_CONTAINER_TRAY_COLLAPSE";
            }
        }

        public final void destroy() {
            removeCallbacksAndMessages(null);
            FreeformContainerViewController freeformContainerViewController = this.mViewController;
            if (freeformContainerViewController.mContainerView != null) {
                Log.i("FreeformContainer", "[ViewController] destroy");
                Iterator it = ((ArrayList) freeformContainerViewController.mCallBacks).iterator();
                while (it.hasNext()) {
                    FreeformContainerCallback freeformContainerCallback = (FreeformContainerCallback) it.next();
                    Log.i("FreeformContainer", "[ViewController] onViewDestroyed: " + freeformContainerCallback);
                    freeformContainerCallback.onViewDestroyed();
                }
                freeformContainerViewController.mWindowManager.removeViewImmediate(freeformContainerViewController.mContainerView);
                freeformContainerViewController.mContainerView = null;
            }
            synchronized (freeformContainerViewController.mCallBacks) {
                ((ArrayList) freeformContainerViewController.mCallBacks).clear();
            }
            FreeformContainerItemController freeformContainerItemController = this.mItemController;
            freeformContainerItemController.mThreadPoolExecutor.shutdownNow();
            freeformContainerItemController.mThreadPoolExecutor = null;
            freeformContainerItemController.mItemList.clear();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z;
            FreeformContainerItem freeformContainerItem;
            String str;
            boolean z2;
            int i = message.what;
            boolean z3 = true;
            if ((!CoreRune.MW_FREEFORM_SMART_POPUP_VIEW || (i != 21 && !this.mIsBindingSmartPopupViewService)) && i != 11 && !this.mIsBindingMinimizeContainerService) {
                z = false;
            } else {
                z = true;
            }
            if (!z) {
                return;
            }
            Object obj = message.obj;
            if (obj instanceof FreeformContainerItem) {
                freeformContainerItem = (FreeformContainerItem) obj;
            } else {
                freeformContainerItem = null;
            }
            StringBuilder sb = new StringBuilder("[Manager] handleMessage: ");
            sb.append(messageToString(message.what));
            if (freeformContainerItem == null) {
                str = "";
            } else {
                str = " item=" + freeformContainerItem;
            }
            sb.append(str);
            Log.i("FreeformContainer", sb.toString());
            int i2 = message.what;
            if (i2 != 42) {
                switch (i2) {
                    case 11:
                        if (noRunningService()) {
                            init();
                            registerReceivers();
                        }
                        this.mIsBindingMinimizeContainerService = true;
                        return;
                    case 12:
                        this.mIsBindingMinimizeContainerService = false;
                        if (noRunningService()) {
                            destroy();
                            try {
                                this.mIWindowManager.removeRotationWatcher(FreeformContainerManager.this.mRotationWatcher);
                            } catch (RemoteException e) {
                                e.printStackTrace();
                            }
                            FreeformContainerManager freeformContainerManager = FreeformContainerManager.this;
                            freeformContainerManager.mContext.unregisterReceiver(freeformContainerManager.mFreeformContainerReceiver);
                            return;
                        }
                        this.mItemController.removeAllMinimizeContainerItem();
                        return;
                    case 13:
                        if (freeformContainerItem != null) {
                            sendMessageDelayed(obtainMessage(16, freeformContainerItem.getTaskId(), 0, freeformContainerItem), 3000L);
                            this.mItemController.addItem(freeformContainerItem);
                            return;
                        }
                        return;
                    case 14:
                        FreeformContainerItem itemById = this.mItemController.getItemById(message.arg1);
                        if (itemById != null) {
                            this.mItemController.removeItem(itemById);
                            return;
                        }
                        Log.w("FreeformContainer", "[Manager] " + messageToString(message.what) + " failed, due to no taskId: " + message.arg1);
                        return;
                    case 15:
                    case 16:
                        FreeformContainerItem itemById2 = this.mItemController.getItemById(message.arg1);
                        if (itemById2 != null) {
                            this.mItemController.animationCompleted(itemById2);
                            return;
                        }
                        Log.w("FreeformContainer", "[Manager] " + messageToString(message.what) + " failed, due to no taskId: " + message.arg1);
                        return;
                    case 17:
                        this.mItemController.removeAllMinimizeContainerItem();
                        return;
                    default:
                        switch (i2) {
                            case 21:
                                if (noRunningService()) {
                                    init();
                                    registerReceivers();
                                }
                                this.mIsBindingSmartPopupViewService = true;
                                return;
                            case 22:
                                this.mIsBindingSmartPopupViewService = false;
                                if (noRunningService()) {
                                    destroy();
                                    try {
                                        this.mIWindowManager.removeRotationWatcher(FreeformContainerManager.this.mRotationWatcher);
                                    } catch (RemoteException e2) {
                                        e2.printStackTrace();
                                    }
                                    FreeformContainerManager freeformContainerManager2 = FreeformContainerManager.this;
                                    freeformContainerManager2.mContext.unregisterReceiver(freeformContainerManager2.mFreeformContainerReceiver);
                                    return;
                                }
                                this.mItemController.removeAllSmartPopupViewItem();
                                return;
                            case 23:
                                if (!this.mViewController.isPointerView()) {
                                    this.mViewController.updateContainerState(1, true, true);
                                }
                                if (freeformContainerItem != null) {
                                    this.mItemController.addItem(freeformContainerItem);
                                    return;
                                }
                                return;
                            case 24:
                                FreeformContainerItem itemByName = this.mItemController.getItemByName((String) message.obj);
                                if (itemByName instanceof SmartPopupViewItem) {
                                    this.mItemController.removeItem(itemByName);
                                    return;
                                }
                                Log.w("FreeformContainer", "[Manager] " + messageToString(message.what) + " failed, due to no smart popup view item which has packageName: " + message.obj);
                                return;
                            case 25:
                                if (CoreRune.MW_FREEFORM_SMART_POPUP_VIEW) {
                                    this.mItemController.removeAllSmartPopupViewItem();
                                    return;
                                }
                                return;
                            default:
                                switch (i2) {
                                    case 30:
                                        if (freeformContainerItem != null) {
                                            this.mItemController.removeItem(freeformContainerItem);
                                            freeformContainerItem.launch();
                                            return;
                                        }
                                        return;
                                    case 31:
                                        if (freeformContainerItem != null) {
                                            FreeformContainerItemController freeformContainerItemController = this.mItemController;
                                            freeformContainerItemController.getClass();
                                            Log.i("FreeformContainer", "[ItemController] iconLoadCompleted: item=" + freeformContainerItem);
                                            if (!freeformContainerItemController.mItemList.contains(freeformContainerItem)) {
                                                Log.w("FreeformContainer", "[ItemController] iconLoadCompleted failed item(=" + freeformContainerItem + ") is not in list");
                                                return;
                                            }
                                            if (!freeformContainerItem.mIconLoadCompleted) {
                                                freeformContainerItem.mIconLoadCompleted = true;
                                            }
                                            freeformContainerItemController.publishItemIfNeeded(freeformContainerItem);
                                            return;
                                        }
                                        return;
                                    case 32:
                                        destroy();
                                        init();
                                        if (CoreRune.MW_FREEFORM_SMART_POPUP_VIEW) {
                                            this.mItemController.removeAllSmartPopupViewItem();
                                        }
                                        FreeformContainerItemController freeformContainerItemController2 = this.mItemController;
                                        Context context = FreeformContainerManager.this.mContext;
                                        freeformContainerItemController2.mItemList.clear();
                                        List<ActivityManager.RunningTaskInfo> minimizedFreeformTasksForCurrentUser = MultiWindowManager.getInstance().getMinimizedFreeformTasksForCurrentUser();
                                        if (minimizedFreeformTasksForCurrentUser != null && !minimizedFreeformTasksForCurrentUser.isEmpty()) {
                                            for (ActivityManager.RunningTaskInfo runningTaskInfo : minimizedFreeformTasksForCurrentUser) {
                                                try {
                                                    ActivityInfo activityInfo = AppGlobals.getPackageManager().getActivityInfo(runningTaskInfo.realActivity, 128L, runningTaskInfo.userId);
                                                    if (activityInfo != null) {
                                                        freeformContainerItemController2.addItem(new MinimizeContainerItem(context, activityInfo.packageName, runningTaskInfo.realActivity, runningTaskInfo.taskId, runningTaskInfo.userId, true));
                                                    }
                                                } catch (RemoteException e3) {
                                                    e3.printStackTrace();
                                                }
                                            }
                                            return;
                                        }
                                        return;
                                    case 33:
                                        FreeformContainerItemController freeformContainerItemController3 = this.mItemController;
                                        freeformContainerItemController3.getClass();
                                        ArrayList arrayList = new ArrayList(freeformContainerItemController3.mItemList);
                                        arrayList.forEach(new FreeformContainerItemController$$ExternalSyntheticLambda0());
                                        destroy();
                                        init();
                                        FreeformContainerItemController freeformContainerItemController4 = this.mItemController;
                                        synchronized (freeformContainerItemController4.mItemList) {
                                            int size = arrayList.size();
                                            while (true) {
                                                size--;
                                                if (size >= 0) {
                                                    freeformContainerItemController4.addItem((FreeformContainerItem) arrayList.get(size));
                                                }
                                            }
                                        }
                                        return;
                                    case 34:
                                        int i3 = message.arg1;
                                        if (FreeformContainerManager.this.mRotation != i3) {
                                            this.mViewController.closeFullscreenMode("fullscreen_mode_request_screen_rotating");
                                            removeMessages(35, "fullscreen_mode_request_screen_rotating");
                                            if (this.mViewController.openFullscreenMode("fullscreen_mode_request_screen_rotating")) {
                                                sendMessageDelayed(obtainMessage(35, "fullscreen_mode_request_screen_rotating"), 2000L);
                                            }
                                            FreeformContainerItemController freeformContainerItemController5 = this.mItemController;
                                            freeformContainerItemController5.getClass();
                                            Iterator it = new ArrayList(freeformContainerItemController5.mItemList).iterator();
                                            while (it.hasNext()) {
                                                freeformContainerItemController5.animationCompleted((FreeformContainerItem) it.next());
                                            }
                                            this.mViewController.updateDisplayFrame(false);
                                            FreeformContainerViewController freeformContainerViewController = this.mViewController;
                                            int i4 = FreeformContainerManager.this.mRotation;
                                            freeformContainerViewController.createOrUpdateDismissButton();
                                            Iterator it2 = ((ArrayList) freeformContainerViewController.mCallBacks).iterator();
                                            while (it2.hasNext()) {
                                                FreeformContainerCallback freeformContainerCallback = (FreeformContainerCallback) it2.next();
                                                Log.i("FreeformContainer", "[ViewController] onRotationChanged: " + freeformContainerCallback);
                                                freeformContainerCallback.onRotationChanged(i4, i3, freeformContainerViewController.mDisplayFrame);
                                            }
                                            FreeformContainerManager.this.mRotation = i3;
                                            return;
                                        }
                                        return;
                                    case 35:
                                        Object obj2 = message.obj;
                                        if (obj2 instanceof String) {
                                            if (this.mViewController.closeFullscreenMode((String) obj2)) {
                                                this.mViewController.mContainerView.requestLayout();
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    case 36:
                                        if (this.mViewController.isPointerView()) {
                                            this.mViewController.updateDisplayFrame(true);
                                            this.mViewController.mContainerView.updatePointerViewImmediately();
                                            return;
                                        } else {
                                            this.mViewController.updateDisplayFrame(true);
                                            this.mViewController.updateContainerState(1, false, true);
                                            return;
                                        }
                                    case 37:
                                        Point point = (Point) message.obj;
                                        if (message.arg1 != 1) {
                                            z3 = false;
                                        }
                                        FreeformContainerViewController freeformContainerViewController2 = this.mViewController;
                                        freeformContainerViewController2.mContainerView.setPointerPosition(point.x, point.y, z3);
                                        freeformContainerViewController2.mContainerView.mNeedInitPosition = false;
                                        return;
                                    default:
                                        return;
                                }
                        }
                }
            }
            FreeformContainerViewController freeformContainerViewController3 = this.mViewController;
            if (freeformContainerViewController3.mState == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                freeformContainerViewController3.updateContainerState(1, false, true);
            }
        }

        public final void init() {
            int i;
            FreeformContainerViewController freeformContainerViewController = this.mViewController;
            FreeformContainerItemController freeformContainerItemController = this.mItemController;
            freeformContainerViewController.getClass();
            Log.i("FreeformContainer", "[ViewController] init");
            freeformContainerViewController.mH = this;
            freeformContainerViewController.mItemController = freeformContainerItemController;
            int i2 = 0;
            freeformContainerViewController.mState = 0;
            ((ArrayList) freeformContainerViewController.mFullscreenModeRequests).clear();
            WindowManager.LayoutParams layoutParams = freeformContainerViewController.mLayoutParams;
            layoutParams.width = -1;
            layoutParams.height = -1;
            layoutParams.type = 2604;
            layoutParams.flags = 25166632;
            layoutParams.format = -2;
            layoutParams.setTitle("FreeformContainer");
            layoutParams.privateFlags |= 16;
            layoutParams.samsungFlags |= 131072;
            layoutParams.layoutInDisplayCutoutMode = 1;
            layoutParams.gravity = 17;
            layoutParams.windowAnimations = R.style.MinimizeContainer_WindowAnimation;
            freeformContainerViewController.updateDisplayFrame(false);
            FreeformContainerView freeformContainerView = (FreeformContainerView) freeformContainerViewController.mLayoutInflater.inflate(R.layout.freeform_container_layout, (ViewGroup) null);
            freeformContainerViewController.mContainerView = freeformContainerView;
            freeformContainerViewController.mFolderView = (FreeformContainerFolderView) freeformContainerView.findViewById(R.id.freeform_container_recycler_view);
            final FreeformContainerView freeformContainerView2 = freeformContainerViewController.mContainerView;
            H h = freeformContainerViewController.mH;
            freeformContainerView2.mViewController = freeformContainerViewController;
            Log.i("FreeformContainer", "[ViewController] registerCallback: " + freeformContainerView2);
            List list = freeformContainerViewController.mCallBacks;
            ((ArrayList) list).add(freeformContainerView2);
            freeformContainerView2.mH = h;
            ViewTreeObserver viewTreeObserver = freeformContainerView2.getRootView().getViewTreeObserver();
            viewTreeObserver.addOnComputeInternalInsetsListener(freeformContainerView2.mInsetsComputer);
            viewTreeObserver.addOnDrawListener(freeformContainerView2.mSystemGestureExcludeUpdater);
            freeformContainerView2.mDefaultGapTop = freeformContainerView2.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_pointer_default_gap_top);
            freeformContainerView2.mThresholdToMove = freeformContainerView2.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_move_interval);
            freeformContainerView2.mPointerSettleDownGap = freeformContainerView2.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_pointer_settle_down_gap);
            freeformContainerView2.mIconLeftMarginInFolder = freeformContainerView2.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_item_margin_left);
            freeformContainerView2.mIconItemTopMarginInFolder = freeformContainerView2.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_item_margin_top);
            freeformContainerView2.mAnimElevation = freeformContainerView2.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_folder_elevation) + 1;
            freeformContainerView2.mPointerViewSize = freeformContainerView2.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_outer_size);
            freeformContainerView2.mBackgroundDimView = (FrameLayout) freeformContainerView2.findViewById(R.id.freeform_container_dim_view);
            freeformContainerView2.mPointerGroupView = (ViewGroup) freeformContainerView2.findViewById(R.id.freeform_container_pointer_group_view);
            ImageButton imageButton = (ImageButton) freeformContainerView2.findViewById(R.id.freeform_container_pointer_control_view);
            freeformContainerView2.mPointerView = imageButton;
            imageButton.setColorFilter(0);
            freeformContainerView2.mPointerView.setHapticFeedbackEnabled(false);
            freeformContainerView2.mPointerView.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.wm.shell.freeform.FreeformContainerView$$ExternalSyntheticLambda4
                /* JADX WARN: Removed duplicated region for block: B:53:0x019a  */
                /* JADX WARN: Removed duplicated region for block: B:55:0x01a5  */
                /* JADX WARN: Removed duplicated region for block: B:58:0x01b4  */
                /* JADX WARN: Removed duplicated region for block: B:60:0x01be  */
                /* JADX WARN: Removed duplicated region for block: B:78:0x01b6  */
                /* JADX WARN: Removed duplicated region for block: B:79:0x01ad  */
                /* JADX WARN: Removed duplicated region for block: B:80:0x01a2  */
                @Override // android.view.View.OnTouchListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final boolean onTouch(android.view.View r14, android.view.MotionEvent r15) {
                    /*
                        Method dump skipped, instructions count: 672
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.freeform.FreeformContainerView$$ExternalSyntheticLambda4.onTouch(android.view.View, android.view.MotionEvent):boolean");
                }
            });
            SharedPreferences sharedPreferences = freeformContainerView2.mContext.getSharedPreferences("freeform_container_pref", 0);
            if (sharedPreferences.contains("position_x") && sharedPreferences.contains("position_y")) {
                float width = (freeformContainerView2.mViewController.mDisplayFrame.width() * 0.8f) - (freeformContainerView2.mPointerView.getWidth() / 2.0f);
                float f = freeformContainerView2.mViewController.mNonDecorDisplayFrame.top + freeformContainerView2.mDefaultGapTop;
                float f2 = sharedPreferences.getFloat("position_x", width);
                float f3 = sharedPreferences.getFloat("position_y", f);
                Rect rect = freeformContainerView2.mTmpBounds;
                int i3 = (int) f2;
                int i4 = (int) f3;
                int i5 = freeformContainerView2.mPointerViewSize;
                rect.set(i3, i4, i3 + i5, i5 + i4);
                int rotation = freeformContainerView2.mContext.getDisplay().getRotation();
                int i6 = sharedPreferences.getInt("rotation", rotation);
                if (rotation != i6) {
                    FreeformContainerView.rotateBounds(freeformContainerView2.mViewController.mDisplayFrame, freeformContainerView2.mTmpBounds, i6, rotation);
                }
                StringBuilder m = VIDirector$$ExternalSyntheticOutline0.m("[ContainerView] loadPositionFromSharedPreferences, position=(", f2, ",", f3, ") default=(");
                m.append(width);
                m.append(",");
                m.append(f);
                m.append(")");
                Log.i("FreeformContainer", m.toString());
                Rect rect2 = freeformContainerView2.mTmpBounds;
                freeformContainerView2.setPointerPosition(rect2.left, rect2.top, false);
                i2 = 0;
            } else {
                Log.i("FreeformContainer", "[ContainerView] loadPositionFromSharedPreferences, need to init position");
                freeformContainerView2.mNeedInitPosition = true;
            }
            freeformContainerView2.setLayoutDirection(i2);
            freeformContainerView2.setVisibility(8);
            freeformContainerView2.mMinimumFlingVelocity = ViewConfiguration.get(freeformContainerView2.mContext).getScaledMinimumFlingVelocity();
            freeformContainerView2.mMaximumFlingVelocity = ViewConfiguration.get(freeformContainerView2.mContext).getScaledMaximumFlingVelocity();
            final FreeformContainerFolderView freeformContainerFolderView = freeformContainerViewController.mFolderView;
            H h2 = freeformContainerViewController.mH;
            freeformContainerFolderView.mViewController = freeformContainerViewController;
            Log.i("FreeformContainer", "[ViewController] registerCallback: " + freeformContainerFolderView);
            ((ArrayList) list).add(freeformContainerFolderView);
            freeformContainerFolderView.mH = h2;
            freeformContainerFolderView.mDraggingIconView = (ImageView) freeformContainerFolderView.getRootView().findViewById(R.id.freeform_container_folder_dragging_icon_view);
            freeformContainerFolderView.mTrayView = (FreeformContainerFolderTrayView) freeformContainerFolderView.getRootView().findViewById(R.id.freeform_container_tray_view);
            freeformContainerFolderView.mItemSize = freeformContainerFolderView.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_folder_item_size);
            freeformContainerFolderView.mPaddingLeft = freeformContainerFolderView.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_folder_position_padding_left);
            freeformContainerFolderView.mPaddingRight = freeformContainerFolderView.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_folder_position_padding_right);
            freeformContainerFolderView.mThresholdToMove = freeformContainerFolderView.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_move_interval);
            freeformContainerFolderView.mEmptySlotIcon = freeformContainerFolderView.mContext.getResources().getDrawable(R.drawable.ic_mw_popupview_min_ic_empty_mtrl);
            final int i7 = 0;
            freeformContainerFolderView.mTrayView.mCloseButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.wm.shell.freeform.FreeformContainerFolderView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i7) {
                        case 0:
                            FreeformContainerItemController freeformContainerItemController2 = freeformContainerFolderView.mViewController.mItemController;
                            freeformContainerItemController2.getClass();
                            Iterator it = new ArrayList(freeformContainerItemController2.mItemList).iterator();
                            while (it.hasNext()) {
                                ((FreeformContainerItem) it.next()).throwAway(freeformContainerItemController2);
                            }
                            return;
                        default:
                            FreeformContainerViewController freeformContainerViewController2 = freeformContainerFolderView.mViewController;
                            freeformContainerViewController2.mFolderView.collapse(false);
                            FreeformContainerItemController freeformContainerItemController3 = freeformContainerViewController2.mItemController;
                            freeformContainerItemController3.getClass();
                            Iterator it2 = new ArrayList(freeformContainerItemController3.mItemList).iterator();
                            while (it2.hasNext()) {
                                FreeformContainerItem freeformContainerItem = (FreeformContainerItem) it2.next();
                                freeformContainerItemController3.removeItem(freeformContainerItem);
                                freeformContainerItem.launch();
                            }
                            return;
                    }
                }
            });
            final int i8 = 1;
            freeformContainerFolderView.mTrayView.mOpenAllAppsButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.wm.shell.freeform.FreeformContainerFolderView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i8) {
                        case 0:
                            FreeformContainerItemController freeformContainerItemController2 = freeformContainerFolderView.mViewController.mItemController;
                            freeformContainerItemController2.getClass();
                            Iterator it = new ArrayList(freeformContainerItemController2.mItemList).iterator();
                            while (it.hasNext()) {
                                ((FreeformContainerItem) it.next()).throwAway(freeformContainerItemController2);
                            }
                            return;
                        default:
                            FreeformContainerViewController freeformContainerViewController2 = freeformContainerFolderView.mViewController;
                            freeformContainerViewController2.mFolderView.collapse(false);
                            FreeformContainerItemController freeformContainerItemController3 = freeformContainerViewController2.mItemController;
                            freeformContainerItemController3.getClass();
                            Iterator it2 = new ArrayList(freeformContainerItemController3.mItemList).iterator();
                            while (it2.hasNext()) {
                                FreeformContainerItem freeformContainerItem = (FreeformContainerItem) it2.next();
                                freeformContainerItemController3.removeItem(freeformContainerItem);
                                freeformContainerItem.launch();
                            }
                            return;
                    }
                }
            });
            FreeformContainerFolderView.FolderItemDecoration folderItemDecoration = freeformContainerFolderView.mItemDecoration;
            folderItemDecoration.mItemMargin.left = FreeformContainerFolderView.this.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_item_margin_left);
            folderItemDecoration.mItemMargin.top = FreeformContainerFolderView.this.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_item_margin_top);
            folderItemDecoration.mItemMargin.right = FreeformContainerFolderView.this.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_item_margin_right);
            folderItemDecoration.mItemMargin.bottom = FreeformContainerFolderView.this.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_item_margin_bottom);
            folderItemDecoration.mItemSpace = FreeformContainerFolderView.this.mContext.getResources().getDimensionPixelSize(R.dimen.freeform_container_item_space);
            FreeformContainerFolderView.this.mTrayView.mItemMargin.set(folderItemDecoration.mItemMargin);
            if (CoreRune.IS_TABLET_DEVICE) {
                i = 8;
            } else {
                i = 4;
            }
            freeformContainerFolderView.mVisibleIconMaxCount = i;
            boolean isNightModeActive = freeformContainerFolderView.mContext.getResources().getConfiguration().isNightModeActive();
            boolean z = false;
            if (Settings.System.getInt(freeformContainerFolderView.mContext.getContentResolver(), "wallpapertheme_state", 0) == 1) {
                z = true;
            }
            if (z) {
                freeformContainerFolderView.mColorTintList = freeformContainerFolderView.mContext.getResources().getColorStateList(17171332, null);
            } else if (isNightModeActive) {
                freeformContainerFolderView.mColorTintList = freeformContainerFolderView.mContext.getResources().getColorStateList(R.color.sec_decor_icon_color_dark, null);
            } else {
                freeformContainerFolderView.mColorTintList = freeformContainerFolderView.mContext.getResources().getColorStateList(R.color.sec_decor_icon_color_light, null);
            }
            FreeformContainerFolderTrayView freeformContainerFolderTrayView = freeformContainerFolderView.mTrayView;
            ColorStateList colorStateList = freeformContainerFolderView.mColorTintList;
            freeformContainerFolderTrayView.mOpenAllAppsButton.setImageTintList(colorStateList);
            freeformContainerFolderTrayView.mCloseButton.setImageTintList(colorStateList);
            freeformContainerFolderView.setVisibility(8);
            freeformContainerViewController.mContainerView.setSystemUiVisibility(512);
            freeformContainerViewController.mWindowManager.addView(freeformContainerViewController.mContainerView, layoutParams);
            freeformContainerViewController.mHideCallback = new FreeformContainerViewController$$ExternalSyntheticLambda1(freeformContainerViewController, 1);
            freeformContainerViewController.createOrUpdateDismissButton();
            FreeformContainerItemController freeformContainerItemController2 = this.mItemController;
            FreeformContainerViewController freeformContainerViewController2 = this.mViewController;
            freeformContainerItemController2.mH = this;
            freeformContainerItemController2.mViewController = freeformContainerViewController2;
            freeformContainerItemController2.mFreeformContainerIconLoader.loadResources();
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
            freeformContainerItemController2.mThreadPoolExecutor = threadPoolExecutor;
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            FreeformContainerManager freeformContainerManager = FreeformContainerManager.this;
            freeformContainerManager.mRotation = freeformContainerManager.mContext.getDisplay().getRotation();
        }

        public final boolean noRunningService() {
            if (CoreRune.MW_FREEFORM_SMART_POPUP_VIEW && this.mIsBindingSmartPopupViewService) {
                return false;
            }
            return !this.mIsBindingMinimizeContainerService;
        }

        public final void registerReceivers() {
            try {
                this.mIWindowManager.watchRotation(FreeformContainerManager.this.mRotationWatcher, 0);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            FreeformContainerManager.this.mConfiguration = new Configuration(FreeformContainerManager.this.mContext.getResources().getConfiguration());
            FreeformContainerManager freeformContainerManager = FreeformContainerManager.this;
            freeformContainerManager.mContext.registerReceiver(freeformContainerManager.mFreeformContainerReceiver, freeformContainerManager.mFreeformContainerFilter, 2);
        }

        public final void sendMessage(int i, Object obj) {
            sendMessage(obtainMessage(i, obj));
        }

        private H(Looper looper) {
            super(looper, null, true);
            this.mViewController = new FreeformContainerViewController(FreeformContainerManager.this.mContext);
            Context context = FreeformContainerManager.this.mContext;
            this.mItemController = new FreeformContainerItemController(context);
            this.mIWindowManager = IWindowManager.Stub.asInterface(ServiceManager.getService("window"));
            this.mIsBindingMinimizeContainerService = false;
            if (CoreRune.MW_FREEFORM_SMART_POPUP_VIEW) {
                this.mIsBindingSmartPopupViewService = false;
            }
        }

        public final void sendMessage(int i) {
            sendMessage(obtainMessage(i));
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.wm.shell.freeform.FreeformContainerManager$1] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.wm.shell.freeform.FreeformContainerManager$2] */
    private FreeformContainerManager(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        this.mFreeformContainerFilter = intentFilter;
        this.mFreeformContainerReceiver = new BroadcastReceiver() { // from class: com.android.wm.shell.freeform.FreeformContainerManager.2
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                char c;
                String action = intent.getAction();
                switch (action.hashCode()) {
                    case -2128145023:
                        if (action.equals("android.intent.action.SCREEN_OFF")) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1061859923:
                        if (action.equals("com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE")) {
                            c = 7;
                            break;
                        }
                        c = 65535;
                        break;
                    case -403228793:
                        if (action.equals("android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case 158859398:
                        if (action.equals("android.intent.action.CONFIGURATION_CHANGED")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case 959232034:
                        if (action.equals("android.intent.action.USER_SWITCHED")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1041332296:
                        if (action.equals("android.intent.action.DATE_CHANGED")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1724567694:
                        if (action.equals("com.samsung.intent.action.LELINK_CAST_CONNECTION_CHANGED")) {
                            c = 6;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1779291251:
                        if (action.equals("android.os.action.POWER_SAVE_MODE_CHANGED")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                if (c != 0) {
                    if (c != 1 && c != 2) {
                        if (c != 3) {
                            if (c == 4 || c == 5) {
                                Log.i("FreeformContainer", "[Manager] onReceive: " + action + ", Collapse minimized container tray");
                                FreeformContainerManager.this.mH.sendMessage(42);
                                return;
                            }
                            return;
                        }
                        Log.i("FreeformContainer", "[Manager] onReceive: " + action + ", Restore only minimized container items");
                        FreeformContainerManager.this.mH.sendMessage(32);
                        return;
                    }
                } else {
                    Configuration configuration = FreeformContainerManager.this.mContext.getResources().getConfiguration();
                    int diff = FreeformContainerManager.this.mConfiguration.diff(configuration);
                    FreeformContainerManager.this.mConfiguration = new Configuration(configuration);
                    if (((-2147405308) & diff) == 0) {
                        StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("[Manager] onReceive: ", action, ", diff=0x");
                        m.append(Integer.toHexString(diff));
                        m.append(", No need to rebuild all");
                        Log.i("FreeformContainer", m.toString());
                        FreeformContainerManager.this.mH.sendMessage(36);
                        return;
                    }
                }
                H h = FreeformContainerManager.this.mH;
                if (h.hasMessages(33)) {
                    h.removeMessages(33);
                }
                Log.i("FreeformContainer", "[Manager] rebuild all, reason: ".concat(action));
                h.sendMessage(33);
            }
        };
        this.mContext = context.getApplicationContext();
        HandlerThread handlerThread = new HandlerThread("FreeformContainerHandlerThread", 0);
        this.mThread = handlerThread;
        handlerThread.start();
        this.mH = new H(this, handlerThread.getLooper(), 0);
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        intentFilter.addAction("android.intent.action.DATE_CHANGED");
        intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
        intentFilter.addAction("android.intent.action.USER_SWITCHED");
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
    }

    public static FreeformContainerManager getInstance(Context context) {
        if (sFreeformContainerManager == null) {
            synchronized (FreeformContainerManager.class) {
                if (sFreeformContainerManager == null) {
                    sFreeformContainerManager = new FreeformContainerManager(context);
                }
            }
        }
        return sFreeformContainerManager;
    }

    public static void getStableInsets(Rect rect) {
        try {
            WindowManagerGlobal.getWindowManagerService().getStableInsets(0, rect);
        } catch (RemoteException e) {
            Log.e("FreeformContainer", "Failed to get stable insets", e);
        }
    }

    public final void finalize() {
        this.mThread.quit();
    }
}
