package com.samsung.android.biometrics.app.setting.fingerprint.vi;

import android.content.Context;
import android.util.Log;
import com.samsung.android.hardware.secinputdev.SemInputDeviceManager;

/* loaded from: classes.dex */
public final class TouchMapReader {
    public int displayHCellMax;
    public int displayHCellSize;
    public int displayVCellMax;
    public int displayVCellSize;
    private int mDisplayInfoBufferSize;
    private boolean mIsTouchInfoUpdated;
    private SemInputDeviceManager mSemInputDeviceManager;

    public TouchMapReader(Context context) {
        this.displayHCellSize = 17;
        this.displayVCellSize = 14;
        this.displayHCellMax = 17;
        this.displayVCellMax = 14;
        this.mIsTouchInfoUpdated = false;
        this.mDisplayInfoBufferSize = (((17 + 14) + 7) / 8) * 2;
        SemInputDeviceManager semInputDeviceManager = (SemInputDeviceManager) context.getSystemService("SemInputDeviceManagerService");
        this.mSemInputDeviceManager = semInputDeviceManager;
        if (this.mIsTouchInfoUpdated) {
            return;
        }
        this.mIsTouchInfoUpdated = true;
        if (semInputDeviceManager == null) {
            return;
        }
        String fodInfo = semInputDeviceManager.getFodInfo(1);
        String[] split = fodInfo.split(",");
        if (split.length != 3 && split.length != 5) {
            Log.e("BSS_TouchMapReader", "Wrong information(" + fodInfo + ")");
            return;
        }
        try {
            this.displayHCellSize = Integer.parseInt(split[0]);
            this.displayVCellSize = Integer.parseInt(split[1]);
            this.mDisplayInfoBufferSize = Integer.parseInt(split[2]) * 2;
            this.displayHCellMax = split.length == 5 ? Integer.parseInt(split[3]) : -1;
            this.displayVCellMax = split.length == 5 ? Integer.parseInt(split[4]) : -1;
            if (this.displayHCellSize <= 0 || this.displayVCellSize <= 0) {
                Log.e("BSS_TouchMapReader", "invalid display info (" + fodInfo + ")");
            }
        } catch (NumberFormatException unused) {
            Log.e("BSS_TouchMapReader", "Wrong information(" + fodInfo + ")");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[][] readTouchMatrix() {
        /*
            r14 = this;
            com.samsung.android.hardware.secinputdev.SemInputDeviceManager r0 = r14.mSemInputDeviceManager
            java.lang.String r1 = "BSS_TouchMapReader"
            r2 = 0
            r3 = 1
            if (r0 != 0) goto L9
            goto L2a
        L9:
            java.lang.String r0 = r0.getFodPosition(r3)
            int r4 = r0.length()
            int r5 = r14.mDisplayInfoBufferSize
            if (r4 == r5) goto L2b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "raw data has "
            r4.<init>(r5)
            int r0 = r0.length()
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            android.util.Log.e(r1, r0)
        L2a:
            r0 = r2
        L2b:
            int r4 = r14.displayHCellSize
            if (r4 <= 0) goto La3
            int r4 = r14.displayVCellSize
            if (r4 <= 0) goto La3
            if (r0 == 0) goto La3
            int r4 = r0.length()
            if (r4 > 0) goto L3d
            goto La3
        L3d:
            int r4 = r14.displayHCellSize
            int r14 = r14.displayVCellSize
            int[] r5 = new int[]{r14, r4}
            java.lang.Class r6 = java.lang.Integer.TYPE
            java.lang.Object r5 = java.lang.reflect.Array.newInstance(r6, r5)
            int[][] r5 = (int[][]) r5
            r6 = 0
            r7 = r6
            r8 = r7
            r9 = r8
        L51:
            int r10 = r0.length()
            if (r7 >= r10) goto L85
            int r10 = r7 + 2
            java.lang.String r7 = r0.substring(r7, r10)     // Catch: java.lang.NumberFormatException -> L64
            r11 = 16
            int r7 = java.lang.Integer.parseInt(r7, r11)     // Catch: java.lang.NumberFormatException -> L64
            goto L65
        L64:
            r7 = r6
        L65:
            r11 = r6
        L66:
            r12 = 8
            if (r11 >= r12) goto L83
            r12 = r5[r9]
            int r13 = r7 >> r11
            r13 = r13 & r3
            if (r13 != r3) goto L73
            r13 = r3
            goto L74
        L73:
            r13 = r6
        L74:
            r12[r8] = r13
            int r8 = r8 + 1
            if (r8 != r4) goto L80
            int r9 = r9 + 1
            if (r9 != r14) goto L7f
            return r5
        L7f:
            r8 = r6
        L80:
            int r11 = r11 + 1
            goto L66
        L83:
            r7 = r10
            goto L51
        L85:
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            java.lang.String r0 = "invalid data("
            r14.<init>(r0)
            r14.append(r8)
            java.lang.String r0 = ", "
            r14.append(r0)
            r14.append(r9)
            java.lang.String r0 = ")"
            r14.append(r0)
            java.lang.String r14 = r14.toString()
            android.util.Log.e(r1, r14)
        La3:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.fingerprint.vi.TouchMapReader.readTouchMatrix():int[][]");
    }
}
