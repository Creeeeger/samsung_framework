package com.android.systemui.navigationbar.gestural;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.os.Looper;
import android.util.Log;
import android.view.Choreographer;
import android.view.Display;
import android.view.InputChannel;
import android.view.InputMonitor;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.navigationbar.NavBarHelper;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.shared.system.InputChannelCompat$InputEventListener;
import com.android.systemui.shared.system.InputChannelCompat$InputEventReceiver;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AccessibilityGestureHandler implements MotionPauseListener {
    public int activePointerId;
    public final Context context;
    public final Context coverContext;
    public float downY;
    public boolean gestureDetected;
    public final int inFlingVelocity;
    public final int inGestureDistance;
    public InputChannelCompat$InputEventReceiver inputEventReceiver;
    public InputMonitor inputMonitor;
    public boolean isAttached;
    public boolean isCoverNavBarVisible;
    public boolean isPaused;
    public MotionPauseDetector motionPauseDetector;
    public final NavBarHelper navBarHelper;
    public final NavBarStore navBarStore;
    public float totalY;
    public VelocityTracker velocityTracker;
    public final String tag = "AccessibilityGestureHandler";
    public final int displayId = 1;

    public AccessibilityGestureHandler(Context context, NavBarHelper navBarHelper, NavBarStore navBarStore, DisplayManager displayManager) {
        this.context = context;
        this.navBarHelper = navBarHelper;
        this.navBarStore = navBarStore;
        Display[] displays = displayManager.getDisplays("com.samsung.android.hardware.display.category.BUILTIN");
        context = displays.length > 1 ? context.createDisplayContext(displays[1]) : context;
        this.coverContext = context;
        ViewConfiguration.get(context).getScaledTouchSlop();
        this.inGestureDistance = context.getResources().getDimensionPixelSize(R.dimen.large_cover_accessibility_gesture_threshold);
        this.inFlingVelocity = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
    }

    public final void clear(MotionEvent motionEvent) {
        MotionPauseDetector motionPauseDetector = this.motionPauseDetector;
        if (motionPauseDetector != null) {
            Log.d(motionPauseDetector.tag, "clear");
            try {
                VelocityTracker velocityTracker = motionPauseDetector.velocityProvider.velocityTracker;
                velocityTracker.clear();
                velocityTracker.recycle();
            } catch (Exception e) {
                e.printStackTrace();
            }
            motionPauseDetector.previousVelocity = null;
            motionPauseDetector.hasEverBeenPaused = false;
            motionPauseDetector.isPaused = false;
            motionPauseDetector.slowStartTime = 0L;
            motionPauseDetector.timer.cancel();
        }
        this.motionPauseDetector = null;
        VelocityTracker velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.recycle();
        }
        this.velocityTracker = null;
        updateAccessibilityGestureDetected(false);
        this.totalY = 0.0f;
        this.downY = 0.0f;
        this.activePointerId = 0;
        this.isPaused = false;
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        obtain.recycle();
    }

    public final void disposeInputChannel() {
        InputChannelCompat$InputEventReceiver inputChannelCompat$InputEventReceiver = this.inputEventReceiver;
        if (inputChannelCompat$InputEventReceiver != null) {
            inputChannelCompat$InputEventReceiver.dispose();
        }
        this.inputEventReceiver = null;
        InputMonitor inputMonitor = this.inputMonitor;
        if (inputMonitor != null) {
            inputMonitor.dispose();
        }
        this.inputMonitor = null;
    }

    public final void updateAccessibilityGestureDetected(boolean z) {
        if (this.gestureDetected != z) {
            Log.d(this.tag, KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("updateAccessibilityGestureDetected: ", z));
            this.gestureDetected = z;
            Iterator it = ((ArrayList) this.navBarHelper.mStateListeners).iterator();
            while (it.hasNext()) {
                ((NavBarHelper.NavbarTaskbarStateUpdater) it.next()).updateAccessibilityGestureDetected(z);
            }
        }
    }

    public final void updateIsEnabled() {
        boolean z;
        boolean z2;
        InputChannel inputChannel;
        if (!this.isAttached) {
            disposeInputChannel();
            return;
        }
        NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) this.navBarStore;
        int i = this.displayId;
        NavBarStateManager navStateManager = navBarStoreImpl.getNavStateManager(i);
        if (!navStateManager.states.supportLargeCoverScreen) {
            disposeInputChannel();
            return;
        }
        boolean isLargeCoverScreenSyncEnabled = navStateManager.isLargeCoverScreenSyncEnabled();
        boolean isGestureMode = navStateManager.isGestureMode();
        NavBarHelper navBarHelper = this.navBarHelper;
        boolean z3 = true;
        if ((navBarHelper.mA11yButtonState & 32) != 0) {
            z = true;
        } else {
            z = false;
        }
        navBarHelper.getClass();
        if (new NavBarHelper.CurrentSysuiState(navBarHelper, i).mWindowState != 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z || ((isGestureMode || ((!isLargeCoverScreenSyncEnabled && !this.isCoverNavBarVisible) || !z2)) && z2)) {
            z3 = false;
        }
        boolean z4 = this.isCoverNavBarVisible;
        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("a11yButtonState: ", z, ", coverScreenNavBarEnabled: ", isLargeCoverScreenSyncEnabled, " gestureMode: ");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, isGestureMode, ", isWindowShowing: ", z2, ", isCoverNavBarVisible: ");
        Log.d(this.tag, KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(m, z4, ", isEnabled: ", z3));
        disposeInputChannel();
        if (z3) {
            InputMonitor monitorGestureInput = ((InputManager) this.coverContext.getSystemService(InputManager.class)).monitorGestureInput("a11yGesture-swipe", i);
            this.inputMonitor = monitorGestureInput;
            if (monitorGestureInput != null) {
                inputChannel = monitorGestureInput.getInputChannel();
            } else {
                inputChannel = null;
            }
            this.inputEventReceiver = new InputChannelCompat$InputEventReceiver(inputChannel, Looper.getMainLooper(), Choreographer.getInstance(), new InputChannelCompat$InputEventListener() { // from class: com.android.systemui.navigationbar.gestural.AccessibilityGestureHandler$setInputChannel$1
                /* JADX WARN: Code restructure failed: missing block: B:143:0x0210, code lost:
                
                    if ((-r0.floatValue()) > r11.inFlingVelocity) goto L138;
                 */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.android.systemui.shared.system.InputChannelCompat$InputEventListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final void onInputEvent(android.view.InputEvent r12) {
                    /*
                        Method dump skipped, instructions count: 548
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.gestural.AccessibilityGestureHandler$setInputChannel$1.onInputEvent(android.view.InputEvent):void");
                }
            });
        }
    }
}
