package com.android.systemui.keyguard.animator;

import android.content.Context;
import android.graphics.PointF;
import android.util.Log;
import android.view.DisplayInfo;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.punchhole.VIDirector$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class KeyguardTouchBase {
    public static final Companion Companion = new Companion(null);
    public static final boolean DEBUG = Log.isLoggable("KeyguardTouchBase", 3);
    public final Context context;
    public float distance;
    public boolean hasDozeAmount;
    public boolean intercepting;
    public boolean isMultiTouch;
    public boolean isTouching;
    public boolean isUnlockExecuted;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;
    public int lockEditorTouchSlop;
    public int longPressAllowHeight;
    public int swipeUnlockRadius;
    public int touchSlop;
    public int updateDistanceCount;
    public long userActivityInvokedTime;
    public final PointF touchDownPos = new PointF(-1.0f, -1.0f);
    public final PointF lastMovePos = new PointF(-1.0f, -1.0f);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public KeyguardTouchBase(Context context, KeyguardUpdateMonitor keyguardUpdateMonitor) {
        this.context = context;
        this.keyguardUpdateMonitor = keyguardUpdateMonitor;
    }

    public final boolean getCanBeUnlock() {
        boolean z;
        boolean z2 = this.keyguardUpdateMonitor.mDeviceInteractive;
        PointF pointF = this.touchDownPos;
        float f = pointF.x;
        if (f >= 0.0f && pointF.y >= 0.0f && !this.isMultiTouch && !this.isUnlockExecuted && z2) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            float f2 = pointF.y;
            boolean z3 = this.isMultiTouch;
            boolean z4 = this.isUnlockExecuted;
            StringBuilder m = VIDirector$$ExternalSyntheticOutline0.m("canBeUnlock touchStart=(", f, ", ", f2, "), multiTouch=");
            KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, z3, ", unlockExecuted=", z4, ", deviceInteractive=");
            m.append(z2);
            com.android.systemui.keyguard.Log.d("KeyguardTouchBase", m.toString());
        }
        return z;
    }

    public final void initDimens() {
        float f;
        DisplayInfo displayInfo = new DisplayInfo();
        Context context = this.context;
        context.getDisplay().getDisplayInfo(displayInfo);
        updateAffordace(displayInfo);
        this.longPressAllowHeight = (int) context.getResources().getDimension(R.dimen.notification_panel_margin_bottom);
        float min = Math.min(displayInfo.logicalWidth / displayInfo.physicalXDpi, displayInfo.logicalHeight / displayInfo.physicalYDpi);
        if (min > 4.5f) {
            f = 0.3f;
        } else if (min > 3.5f) {
            f = 0.4f;
        } else if (min > 1.8f) {
            f = 0.5f;
        } else {
            f = 0.7f;
        }
        this.swipeUnlockRadius = (int) (Math.min(displayInfo.logicalWidth, displayInfo.logicalHeight) * f);
        int scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.touchSlop = scaledTouchSlop;
        this.lockEditorTouchSlop = context.getResources().getDimensionPixelSize(R.dimen.lock_ui_edit_touch_slop_delta) + scaledTouchSlop;
    }

    public final void setIntercept(boolean z) {
        if (this.intercepting != z) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("setIntercept ", z, "KeyguardTouchBase");
        }
        this.intercepting = z;
    }

    public final void setTouch(boolean z) {
        if (this.isTouching != z) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("setTouch ", z, "KeyguardTouchBase");
        }
        this.isTouching = z;
    }

    public final void updateDistance(MotionEvent motionEvent, boolean z) {
        boolean z2;
        boolean z3 = true;
        this.updateDistanceCount++;
        PointF pointF = this.lastMovePos;
        pointF.x = motionEvent.getRawX();
        pointF.y = motionEvent.getRawY();
        PointF pointF2 = this.touchDownPos;
        if (pointF2.x == -1.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            if (pointF2.y != -1.0f) {
                z3 = false;
            }
            if (!z3) {
                float rawX = motionEvent.getRawX() - pointF2.x;
                float sqrt = (float) Math.sqrt(Math.pow(motionEvent.getRawY() - pointF2.y, 2.0d) + Math.pow(rawX, 2.0d));
                this.distance = sqrt;
                if (DEBUG || Float.isNaN(sqrt)) {
                    float rawX2 = motionEvent.getRawX();
                    float rawY = motionEvent.getRawY();
                    float f = this.distance;
                    StringBuilder m = VIDirector$$ExternalSyntheticOutline0.m("updateDistance curX=", rawX2, " curY=", rawY, " distance=");
                    m.append(f);
                    m.append(" fullScreen=");
                    m.append(z);
                    Log.d("KeyguardTouchBase", m.toString());
                    return;
                }
                return;
            }
        }
        this.distance = 0.0f;
        this.updateDistanceCount = 0;
    }

    public void updateAffordace(DisplayInfo displayInfo) {
    }
}
