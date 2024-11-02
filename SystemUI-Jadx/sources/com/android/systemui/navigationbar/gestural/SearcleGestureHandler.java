package com.android.systemui.navigationbar.gestural;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.PointF;
import android.os.Handler;
import android.view.InputMonitor;
import android.view.ViewConfiguration;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.assist.AssistManager;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.android.systemui.navigationbar.NavBarHelper;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.recents.OverviewProxyService;
import com.android.systemui.shared.system.InputChannelCompat$InputEventReceiver;
import com.android.systemui.statusbar.VibratorHelper;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SearcleGestureHandler {
    public final String ACTION_LOCK_TASK_MODE;
    public final String TAG = "SearcleGestureHandler";
    public boolean allowGesture;
    public final AssistManager assistManager;
    public final Handler bgHandler;
    public final BroadcastDispatcher broadcastDispatcher;
    public final SearcleGestureHandler$broadcastReceiver$1 broadcastReceiver;
    public final Context context;
    public final float degreeEnd;
    public final float degreeStart;
    public final int displayId;
    public float distance;
    public final PointF downPoint;
    public InputChannelCompat$InputEventReceiver inputEventReceiver;
    public InputMonitor inputMonitor;
    public final IntentFilter intentFilter;
    public boolean isAttached;
    public boolean isInLockTaskMode;
    public boolean isPilfered;
    public final NavBarHelper navBarHelper;
    public final NavBarStateManager navBarStateManager;
    public final NavBarStore navBarStore;
    public final float scrollTouchSlop;
    public boolean startSearcle;
    public final float touchSlop;
    public final VibratorHelper vibratorHelper;

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.navigationbar.gestural.SearcleGestureHandler$broadcastReceiver$1] */
    public SearcleGestureHandler(Context context, NavBarHelper navBarHelper, NavBarStore navBarStore, OverviewProxyService overviewProxyService, BroadcastDispatcher broadcastDispatcher, AssistManager assistManager) {
        this.context = context;
        this.navBarHelper = navBarHelper;
        this.navBarStore = navBarStore;
        this.broadcastDispatcher = broadcastDispatcher;
        this.assistManager = assistManager;
        this.scrollTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        int displayId = context.getDisplayId();
        this.displayId = displayId;
        this.navBarStateManager = ((NavBarStoreImpl) navBarStore).getNavStateManager(displayId);
        this.vibratorHelper = (VibratorHelper) Dependency.get(VibratorHelper.class);
        this.degreeStart = 110.0f;
        this.degreeEnd = 180.0f;
        this.ACTION_LOCK_TASK_MODE = "com.samsung.android.action.LOCK_TASK_MODE";
        this.downPoint = new PointF();
        this.touchSlop = context.getResources().getDimension(R.dimen.gestures_assistant_drag_threshold);
        this.broadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.navigationbar.gestural.SearcleGestureHandler$broadcastReceiver$1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                String str;
                if (intent != null) {
                    str = intent.getAction();
                } else {
                    str = null;
                }
                if (Intrinsics.areEqual(str, SearcleGestureHandler.this.ACTION_LOCK_TASK_MODE)) {
                    SearcleGestureHandler.this.isInLockTaskMode = intent.getBooleanExtra("enable", false);
                    SearcleGestureHandler searcleGestureHandler = SearcleGestureHandler.this;
                    ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("isInLockTaskMode=", searcleGestureHandler.isInLockTaskMode, searcleGestureHandler.TAG);
                }
            }
        };
        this.intentFilter = AppCompatDelegateImpl$$ExternalSyntheticOutline0.m("com.samsung.android.action.LOCK_TASK_MODE");
        this.bgHandler = (Handler) Dependency.get(Dependency.NAVBAR_BG_HANDLER);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0076, code lost:
    
        if (android.app.ActivityTaskManager.getService().getLockTaskModeState() != 0) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateIsEnabled() {
        /*
            r11 = this;
            boolean r0 = r11.isAttached
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L10
            com.android.systemui.navigationbar.store.NavBarStateManager r0 = r11.navBarStateManager
            boolean r0 = r0.isGestureMode()
            if (r0 != 0) goto L10
            r0 = r1
            goto L11
        L10:
            r0 = r2
        L11:
            com.android.systemui.shared.system.InputChannelCompat$InputEventReceiver r3 = r11.inputEventReceiver
            if (r3 == 0) goto L18
            r3.dispose()
        L18:
            r3 = 0
            r11.inputEventReceiver = r3
            android.view.InputMonitor r4 = r11.inputMonitor
            if (r4 == 0) goto L22
            r4.dispose()
        L22:
            r11.inputMonitor = r3
            com.android.systemui.broadcast.BroadcastDispatcher r4 = r11.broadcastDispatcher
            com.android.systemui.navigationbar.gestural.SearcleGestureHandler$broadcastReceiver$1 r6 = r11.broadcastReceiver
            r4.unregisterReceiver(r6)
            if (r0 == 0) goto L69
            android.content.Context r0 = r11.context
            java.lang.Class<android.hardware.input.InputManager> r4 = android.hardware.input.InputManager.class
            java.lang.Object r0 = r0.getSystemService(r4)
            android.hardware.input.InputManager r0 = (android.hardware.input.InputManager) r0
            java.lang.String r4 = "searcle-swipe"
            int r5 = r11.displayId
            android.view.InputMonitor r0 = r0.monitorGestureInput(r4, r5)
            r11.inputMonitor = r0
            com.android.systemui.shared.system.InputChannelCompat$InputEventReceiver r4 = new com.android.systemui.shared.system.InputChannelCompat$InputEventReceiver
            if (r0 == 0) goto L4a
            android.view.InputChannel r3 = r0.getInputChannel()
        L4a:
            android.os.Looper r0 = android.os.Looper.getMainLooper()
            android.view.Choreographer r5 = android.view.Choreographer.getInstance()
            com.android.systemui.navigationbar.gestural.SearcleGestureHandler$setInputChannel$1 r7 = new com.android.systemui.navigationbar.gestural.SearcleGestureHandler$setInputChannel$1
            r7.<init>()
            r4.<init>(r3, r0, r5, r7)
            r11.inputEventReceiver = r4
            com.android.systemui.broadcast.BroadcastDispatcher r5 = r11.broadcastDispatcher
            android.content.IntentFilter r7 = r11.intentFilter
            android.os.Handler r8 = r11.bgHandler
            android.os.UserHandle r9 = android.os.UserHandle.ALL
            r10 = 48
            com.android.systemui.broadcast.BroadcastDispatcher.registerReceiverWithHandler$default(r5, r6, r7, r8, r9, r10)
        L69:
            com.android.systemui.shared.system.ActivityManagerWrapper r0 = com.android.systemui.shared.system.ActivityManagerWrapper.sInstance
            r0.getClass()
            android.app.IActivityTaskManager r0 = android.app.ActivityTaskManager.getService()     // Catch: android.os.RemoteException -> L79
            int r0 = r0.getLockTaskModeState()     // Catch: android.os.RemoteException -> L79
            if (r0 == 0) goto L79
            goto L7a
        L79:
            r1 = r2
        L7a:
            r11.isInLockTaskMode = r1
            java.lang.String r0 = "isInLockTaskMode="
            java.lang.String r0 = com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m(r0, r1)
            java.lang.String r11 = r11.TAG
            android.util.Log.i(r11, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.gestural.SearcleGestureHandler.updateIsEnabled():void");
    }
}
