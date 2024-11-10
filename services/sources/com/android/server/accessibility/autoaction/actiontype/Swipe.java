package com.android.server.accessibility.autoaction.actiontype;

import android.R;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.os.SystemClock;
import android.view.Display;
import android.view.DisplayInfo;
import android.view.MotionEvent;
import com.android.server.display.DisplayPowerController2;

/* loaded from: classes.dex */
public class Swipe extends CornerActionType {
    public Context mContext;
    public MotionEvent mLastMotionEvent;
    public String mType;

    public Swipe(Context context, MotionEvent motionEvent, String str) {
        this.mLastMotionEvent = null;
        this.mContext = context;
        this.mType = str;
        this.mLastMotionEvent = MotionEvent.obtain(motionEvent);
    }

    public static Swipe createAction(Context context, MotionEvent motionEvent, String str) {
        return new Swipe(context, motionEvent, str);
    }

    public static int getStringResId(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -88919616:
                if (str.equals("swipe_up")) {
                    c = 0;
                    break;
                }
                break;
            case 447091335:
                if (str.equals("swipe_down")) {
                    c = 1;
                    break;
                }
                break;
            case 447319532:
                if (str.equals("swipe_left")) {
                    c = 2;
                    break;
                }
                break;
            case 987664599:
                if (str.equals("swipe_right")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return R.string.app_upgrading_toast;
            case 1:
                return R.string.app_suspended_more_details;
            case 2:
                return R.string.app_suspended_title;
            case 3:
                return R.string.app_suspended_unsuspend_message;
            default:
                throw new IllegalArgumentException("Wrong Swipe Type");
        }
    }

    @Override // com.android.server.accessibility.autoaction.actiontype.CornerActionType
    public void performCornerAction(final int i) {
        if (this.mLastMotionEvent != null) {
            new Thread(new Runnable() { // from class: com.android.server.accessibility.autoaction.actiontype.Swipe.1
                @Override // java.lang.Runnable
                public void run() {
                    Swipe.this.swipe(i);
                }
            }).start();
        }
    }

    public final void swipe(int i) {
        float f;
        float f2;
        float f3;
        float f4;
        long uptimeMillis = SystemClock.uptimeMillis();
        long uptimeMillis2 = SystemClock.uptimeMillis();
        int actionIndex = this.mLastMotionEvent.getActionIndex();
        MotionEvent.PointerCoords[] pointerCoordsArr = {new MotionEvent.PointerCoords()};
        char c = 0;
        this.mLastMotionEvent.getPointerCoords(actionIndex, pointerCoordsArr[0]);
        InputManager inputManager = (InputManager) this.mContext.getSystemService("input");
        if (inputManager == null) {
            return;
        }
        MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[0];
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis2, 0, pointerCoords.x, pointerCoords.y, 1);
        obtain.setSource(4098);
        int i2 = 8388608;
        obtain.setFlags(8388608);
        obtain.setDisplayId(i);
        char c2 = 2;
        inputManager.semInjectInputEvent(obtain, 2);
        obtain.recycle();
        Display display = ((DisplayManager) this.mContext.getSystemService("display")).getDisplay(i);
        DisplayInfo displayInfo = new DisplayInfo();
        display.getDisplayInfo(displayInfo);
        int i3 = displayInfo.logicalWidth;
        String str = this.mType;
        str.hashCode();
        char c3 = 65535;
        switch (str.hashCode()) {
            case -88919616:
                if (str.equals("swipe_up")) {
                    c3 = 0;
                    break;
                }
                break;
            case 447091335:
                if (str.equals("swipe_down")) {
                    c3 = 1;
                    break;
                }
                break;
            case 447319532:
                if (str.equals("swipe_left")) {
                    c3 = 2;
                    break;
                }
                break;
            case 987664599:
                if (str.equals("swipe_right")) {
                    c3 = 3;
                    break;
                }
                break;
        }
        switch (c3) {
            case 0:
                f = -100.0f;
                f2 = 0.0f;
                break;
            case 1:
                f = 100.0f;
                f2 = 0.0f;
                break;
            case 2:
                f3 = (-i3) / 9.0f;
                float f5 = pointerCoordsArr[0].x;
                if ((f3 * 6.0f) + f5 < DisplayPowerController2.RATE_FROM_DOZE_TO_ON) {
                    f4 = (-f5) / 6.0f;
                    f2 = f4;
                    f = 0.0f;
                    break;
                }
                f2 = f3;
                f = 0.0f;
            case 3:
                float f6 = i3;
                f4 = f6 / 9.0f;
                float f7 = pointerCoordsArr[0].x;
                if ((f4 * 6.0f) + f7 > f6) {
                    f3 = (f6 - f7) / 6.0f;
                    f2 = f3;
                    f = 0.0f;
                    break;
                }
                f2 = f4;
                f = 0.0f;
            default:
                f = 0.0f;
                f2 = 0.0f;
                break;
        }
        int i4 = 0;
        while (i4 < 6.0f) {
            MotionEvent.PointerCoords pointerCoords2 = pointerCoordsArr[c];
            pointerCoords2.x += f2;
            pointerCoords2.y += f;
            long uptimeMillis3 = SystemClock.uptimeMillis();
            MotionEvent.PointerCoords pointerCoords3 = pointerCoordsArr[c];
            int i5 = i2;
            MotionEvent obtain2 = MotionEvent.obtain(uptimeMillis, uptimeMillis3, 2, pointerCoords3.x, pointerCoords3.y, 1);
            obtain2.setSource(4098);
            obtain2.setFlags(i5);
            obtain2.setDisplayId(i);
            inputManager.semInjectInputEvent(obtain2, 2);
            obtain2.recycle();
            i4++;
            i2 = i5;
            c2 = 2;
            c = 0;
        }
        long uptimeMillis4 = SystemClock.uptimeMillis();
        MotionEvent.PointerCoords pointerCoords4 = pointerCoordsArr[0];
        MotionEvent obtain3 = MotionEvent.obtain(uptimeMillis, uptimeMillis4, 1, pointerCoords4.x, pointerCoords4.y, 1);
        obtain3.setSource(4098);
        obtain3.setFlags(i2);
        obtain3.setDisplayId(i);
        inputManager.semInjectInputEvent(obtain3, 2);
        obtain3.recycle();
    }
}
