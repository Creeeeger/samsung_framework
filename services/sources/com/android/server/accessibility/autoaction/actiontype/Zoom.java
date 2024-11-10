package com.android.server.accessibility.autoaction.actiontype;

import android.R;
import android.app.ActivityManager;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.view.Display;
import android.view.DisplayInfo;
import android.view.MotionEvent;
import com.samsung.android.knox.custom.KnoxCustomManagerService;

/* loaded from: classes.dex */
public class Zoom extends CornerActionType {
    public static final String TAG = "Zoom";
    public Context mContext;
    public InputManager mInputManager;
    public MotionEvent mLastMotionEvent;
    public String mType;

    public Zoom(Context context, MotionEvent motionEvent, String str) {
        this.mLastMotionEvent = null;
        this.mContext = context;
        this.mInputManager = (InputManager) context.getSystemService("input");
        this.mType = str;
        this.mLastMotionEvent = MotionEvent.obtain(motionEvent);
    }

    public static Zoom createAction(Context context, MotionEvent motionEvent, String str) {
        return new Zoom(context, motionEvent, str);
    }

    public static int getStringResId(String str) {
        str.hashCode();
        if (str.equals("zoom_in")) {
            return R.string.autofill_address_line_1_label_re;
        }
        if (str.equals("zoom_out")) {
            return R.string.autofill_address_line_1_re;
        }
        throw new IllegalArgumentException("Wrong Zoom Type");
    }

    @Override // com.android.server.accessibility.autoaction.actiontype.CornerActionType
    public void performCornerAction(final int i) {
        MotionEvent motionEvent;
        if (this.mInputManager == null || (motionEvent = this.mLastMotionEvent) == null) {
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        MotionEvent.PointerCoords[] pointerCoordsArr = {new MotionEvent.PointerCoords()};
        this.mLastMotionEvent.getPointerCoords(actionIndex, pointerCoordsArr[0]);
        MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[0];
        final int i2 = (int) pointerCoords.x;
        final int i3 = (int) pointerCoords.y;
        String topPackageName = getTopPackageName();
        final int i4 = ("com.samsung.android.messaging".equals(topPackageName) || KnoxCustomManagerService.LAUNCHER_PACKAGE.equals(topPackageName)) ? 20 : 50;
        new Thread(new Runnable() { // from class: com.android.server.accessibility.autoaction.actiontype.Zoom.1
            @Override // java.lang.Runnable
            public void run() {
                Zoom.this.zoom(i2, i3, i4, i);
            }
        }).start();
    }

    public void zoom(int i, int i2, float f, int i3) {
        int i4;
        Display display = ((DisplayManager) this.mContext.getSystemService("display")).getDisplay(i3);
        DisplayInfo displayInfo = new DisplayInfo();
        display.getDisplayInfo(displayInfo);
        int i5 = displayInfo.logicalWidth;
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(17106329);
        int i6 = i5 - (dimensionPixelSize * 2);
        int i7 = (int) (((i6 * f) / 100.0f) - 2.0f);
        int i8 = i6 - 2;
        if (i7 > i8) {
            i7 = i8;
        }
        int i9 = i - 50;
        int i10 = i + 50;
        int i11 = "com.samsung.android.messaging".equals(getTopPackageName()) ? i9 : i9 - (i7 / 2);
        int i12 = (i7 / 2) + i10;
        if (i11 < dimensionPixelSize) {
            i12 -= (i11 - dimensionPixelSize) + 1;
            i11 = dimensionPixelSize - 1;
        }
        int i13 = i5 - dimensionPixelSize;
        if (i12 > i13) {
            i11 -= (i12 - i13) - 1;
            i4 = i13 + 1;
        } else {
            i4 = i12;
        }
        int i14 = i11;
        String str = this.mType;
        str.hashCode();
        if (str.equals("zoom_in")) {
            generateTouchEvent(i2, i9, i14, i10, i4, i3);
        } else {
            if (str.equals("zoom_out")) {
                generateTouchEvent(i2, i14, i9, i4, i10, i3);
                return;
            }
            throw new IllegalArgumentException("Wrong Zoom Type");
        }
    }

    public final String getTopPackageName() {
        try {
            return ((ActivityManager) this.mContext.getSystemService("activity")).getRunningTasks(1).get(0).topActivity.getPackageName();
        } catch (NullPointerException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0067, code lost:
    
        if (r6 > 20) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void generateTouchEvent(int r36, int r37, int r38, int r39, int r40, int r41) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.autoaction.actiontype.Zoom.generateTouchEvent(int, int, int, int, int, int):void");
    }
}
